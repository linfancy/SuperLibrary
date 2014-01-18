<?php
class Recommend{
	private $data = array(
		'studentNumber' => 'studentNumber',
		'isbn' => 'isbn',
		'callNumber' => 'callNumber',
		'count' => 'count',
		);
	const charNum = 65;
	const letterNum = 26;
	private $oneUser = array();
	private $oneUserHistory = array();
	private $user = array();
	private $userBook = array();
	private $books = array();
	private $history = array();
	private $isbn = array();
	private $bookData = array();
	private $userSimilarity = array();
	private $K = 2;
	private $N = 4;
	private $recommendBook = array();

	public function setBooks(){
		$val = array();
		for($i = 0; $i < count($this->history); $i++){
			if($this->history[$i][$this->data['isbn']] == null)continue;
			if(!in_array($this->history[$i][$this->data['isbn']],$this->isbn)){
				array_push($this->isbn, $this->history[$i][$this->data['isbn']]);
				foreach ($this->history[$i] as $key => $value) {
					$val[$key] = $value;
				}
				$val['count'] = 1;
				array_push($this->books, $val);
			}else{
				for($j = 0; $j < count($this->books); $j++){
					if($this->books[$j][$this->data['isbn']] == $this->history[$i][$this->data['isbn']]){
						$this->books[$j][$this->data['count']]++;
					}
				}
			}
		}
		$sortArray = array();
		foreach ($this->books as $books) {
			foreach ($books as $key => $value) {
				if(!isset($sortArray[$key])){
					$sortArray[$key] = array();
				}
				$sortArray[$key][] = $value;
			}
		}
		$orderby = 'count';
		array_multisort($sortArray[$orderby], SORT_DESC,SORT_NUMERIC, $this->books);

	}

	public function getBooks(){
		return $this->books;
	}

	public function setUser($user){
		$this->user = $user;
	}

	public function getUser(){
		return $this->user;
	}

	public function setOneUser($oneUser){
		$this->oneUser = $oneUser;
	}

	public function getOneUser(){
		return $this->oneUser;
	}

	public function setHistory($history){
		$this->history = $history;
	}

	public function getHistory(){
		return $this->history;
	}

	public function setOneUserHistory($oneUser){
		$this->oneUserHistory = $oneUser;
	}

	public function getOneUserHistory(){
		return $this->oneUserHistory;
	}

	public function setUserBook(){
		foreach ($this->oneUser as $key => $value) {
			$this->userBook[0][$key] = $value;
		}
		$this->userBook[0]['books'] = array();
		$this->userBook[0]['callNumber'] = array();
		for($i = 0; $i < count($this->history); $i++){
			if($this->history[$i]['studentNumber'] == $this->userBook[0]['studentNumber']){
				if($this->history[$i]['isbn'] == null)continue;
				array_push($this->userBook[0]['books'], $this->history[$i]['isbn']);
				array_push($this->userBook[0]['callNumber'], $this->history[$i]['callNumber']);
			}
		}
		$k = 1;
		for($i = 0; $i < count($this->user); $i++){
			if($this->user[$i]['studentNumber'] == $this->oneUser['studentNumber'])continue;
			foreach ($this->user[$i] as $key => $value) {
				$this->userBook[$k][$key] = $value;
			}
			$this->userBook[$k]['books'] = array();
			$this->userBook[$k]['callNumber'] = array();
			for($j = 0; $j < count($this->history); $j++){
				if($this->history[$j]['studentNumber'] == $this->userBook[$k]['studentNumber']){
					if($this->history[$j]['isbn'] == null)continue;
					array_push($this->userBook[$k]['books'], $this->history[$j]['isbn']);
					array_push($this->userBook[$k]['callNumber'], $this->history[$j]['callNumber']);
				}
			}
			$k++;
		}
	}

	public function getUserBook(){
		return $this->userBook;
	}
/*****************************基于用户借阅记录的协同过滤 start***************************************/
	public function setUserSimilarity(){
		$this->userBook[0]['userSimilarity'] = (float)1;
		for($i = 1; $i < count($this->userBook); $i++){
			$count = 0;
			if(empty($this->userBook[0]['books'])){
				$this->userSimilarity[$i] = (float)0;
				continue;
			}
			for ($j=0; $j < count($this->userBook[0]['books']); $j++) {
				for($k = 0; $k < count($this->userBook[$i]['books']); $k++){
					if($this->userBook[0]['books'][$j] == $this->userBook[$i]['books'][$k]){
						$count++;
					}
				}
			}
			$tem = count($this->userBook[0]['books']) > count($this->userBook[$i]['books'])?count($this->userBook[0]['books']):count($this->userBook[$i]['books']);
			$this->userSimilarity[$i] = (float)$count/$tem;
			$this->userBook[$i]['userSimilarity'] = $this->userSimilarity[$i];
		}
		$sortArray = array();
		foreach ($this->userBook as $userBook) {
			foreach ($userBook as $key => $value) {
				if(!isset($sortArray[$key])){
					$sortArray[$key] = array();
				}
				$sortArray[$key][] = $value;
			}
		}
		$orderby = 'userSimilarity';
		array_multisort($sortArray[$orderby], SORT_DESC,SORT_NUMERIC, $this->userBook);
	}

	public function getUserSimilarity(){
		return $this->userSimilarity;
	}

	public function addRecommendBook($books, $limit, $key){
		$recommendBook = array();
		$result = array();
		for($i = 1; $i <= $limit; $i++){
			if(!$books[$i][$key])break;
			for($j = 0; $j < count($books[$i]['books']); $j++){
				if(!in_array($books[$i]['books'][$j], $recommendBook) && !in_array($books[$i]['books'][$j], $this->userBook[0]['books'])){
					array_push($recommendBook, $books[$i]['books'][$j]);
				}
			}
		}
		for($i = 0; $i < count($this->books); $i++){
			if(in_array($this->books[$i]['isbn'], $recommendBook)){
				array_push($result, $this->books[$i]['isbn']);
			}
		}
		return $result;
	}

/*****************************基于用户借阅记录的协同过滤 end***************************************/

/*****************************基于图书分类的协同过滤 start***************************************/
	public function setBookClassify(){
		$userBookClassify = array();
		for($i = 0; $i < count($this->userBook); $i++){
			$userBookClassify[$i] = array();
			for($j = 0; $j < self::letterNum; $j++){$userBookClassify[$i][$j] = 0;}
			for ($j=0; $j < count($this->userBook[$i]['callNumber']); $j++) {
				if($this->userBook[$i]['callNumber'][$j] == '') continue;
				$book = $this->userBook[$i]['callNumber'][$j];
				$userBookClassify[$i][ord($book[0])-self::charNum]++;
			}
		}
		return $userBookClassify;
	}

	public function calculateCos($x, $y){
		for($i = 0; $i < self::letterNum; $i++){
			$tem1 += $x[$i] * $y[$i];
			$tem2 += $x[$i] * $x[$i];
			$tem3 += $y[$i] * $y[$i];
		}
		$sim = $tem1 / (sqrt($tem2) * sqrt($tem3));
		return $sim;
	}

	public function userClassifySim(){
		$sim = array();
		$this->userBook[0]['sim']=1;
		$userBookClassify = $this->setBookClassify();
		for($i = 1; $i < count($userBookClassify); $i++){
			$this->userBook[$i]['sim'] = $this->calculateCos($userBookClassify[0], $userBookClassify[$i]);
		}
		$sortArray = array();
		foreach ($this->userBook as $userBook) {
			foreach ($userBook as $key => $value) {
				if(!isset($sortArray[$key])){
					$sortArray[$key] = array();
				}
				$sortArray[$key][] = $value;
			}
		}
		$orderby = 'sim';
		array_multisort($sortArray[$orderby], SORT_DESC,SORT_NUMERIC, $this->userBook);


	}
/*****************************基于图书分类的协同过滤 end ***************************************/

/*****************************混合的协同过滤 start ***************************************/
	public function mixRecommend($x, $y){
		$min = count($x) < count($y)?count($x):count($y);
		$tem = $min/$this->N;
		$recommend = array();
		for($i = 1; $i < $tem; $i++){
			for($j = (int)(($i-1)*$this->N); $j < (int)($i*$this->N); $j++){
				if(!in_array($x[$j], $recommend))
				array_push($recommend, $x[$j]);
			}
			for($j = (int)(($i-1)*$this->N); $j < (int)($i*$this->N); $j++){
				if(!in_array($x[$j], $recommend))
				array_push($recommend, $y[$j]);
			}
		}
		return $recommend;
	}

/*****************************混合的协同过滤 end ***************************************/

	public function getRecommendBook(){
		$this->setBooks();
		$this->setUserBook();
		$this->setUserSimilarity();
		$recommendBook1 = $this->addRecommendBook($this->userBook, $this->K, 'userSimilarity');
		$this->userClassifySim();
		$recommendBook2 = $this->addRecommendBook($this->userBook, $this->K, 'sim');
		$this->recommendBook = $this->mixRecommend($recommendBook1, $recommendBook1);
		return $this->recommendBook;
	}



}