<?php
class Recommendate{
	private $SUOSHU = 'callNumber';
	private $SUOSHULENGTH = 8;
	private $index = array();
	public $reBooks = array();
	public $preference = array();
	private $preferenceisbn = array();
	public $book = array();

	/**
	 * 设置用户历史的isbn
	 * @param unknown_type $pre
	 */
	public function setPreference($pre){
		$this->preference = $pre;
		for ($i=0; $i < count($pre); $i++) { 
			array_push($this->preferenceisbn, $pre[$i]['isbn']);
		}
	}
	
	/**
	 * 设置所有的历史书库
	 * @param array $b
	 */
	public function setBooks($b){
		$this->book = $b;
	}

	public function readfile($txt){
		$preference = array();
		$file_handle = fopen($txt, "r");
		while (!feof($file_handle)) {
   			$line = fgets($file_handle);
   			$line = explode(',', $line);
   			array_push($preference, $line);
		}
		fclose($file_handle);
		return $preference;
	}


	public function computeSimilarity($item1, $item2){
		$list1 = array();
		$list2 = array();
		$sub = '';
		$j = 0;
		$suoshuCout = strlen($item1[$this->SUOSHU])<strlen($item2[$this->SUOSHU])?
							strlen($item1[$this->SUOSHU]):strlen($item2[$this->SUOSHU]);
		for($i = 0; $i < $this->SUOSHULENGTH; $i++){
			if($i<$suoshuCout){
				if($item1[$this->SUOSHU][$i]==$item2[$this->SUOSHU][$i]){
					$sub .= '1';
				}else{
					$sub .= '0';
				}
			}else{
				$sub .= '0';
			}
		}
		$sum = 0;
		$len = strlen($sub);
		for ($i=0; $i < $len; $i++) { 
			if($sub[$i]==1)$sum += pow(2, $len-$i);
		}
		return $sum;
	}

	public function produceSimilarityMatrix($preference){
		$similarityMatrix = array();
		$sum = array();
		$result = array();
		if(count($preference) == 1)$similarityMatrix[0][0] = $this->computeSimilarity($preference[0], $preference[0]);
		else{
		for($i = 0; $i < count($preference); $i++){
			for($j = 0; $j < count($preference); $j++){
				if ($i == $j) {
					$similarityMatrix[$i][$j] = 0;
				}else{
					$similarityMatrix[$i][$j] = $this->computeSimilarity($preference[$i], $preference[$j]);
				}
			}
		}
		}
		for ($i=0; $i < count($similarityMatrix); $i++) { 
			$s = 0;
			for ($j=0; $j < count($similarityMatrix[$i]); $j++) { 
				$s += $similarityMatrix[$i][$j];
			}
			$sum[$i] = $s;
		}
		$result['matrix'] = $similarityMatrix;
		$result['sum'] = $sum;
		return $result;
	}

	public function findSimilarityMatrix($find, $book){
		$re = array();
		$similarityMatrix = array();
		$sum = array();
		$result = array();
		for($i = 0; $i < count($find); $i++){
			for($j = 0; $j < count($book); $j++){
				$similarityMatrix[$i][$j] = $this->computeSimilarity($find[$i], $book[$j]);
			}
		}
		for ($i=0; $i < count($similarityMatrix); $i++) { 
			$s = 0;
			for ($j=0; $j < count($similarityMatrix[$i]); $j++) { 
				$s += $similarityMatrix[$i][$j];
			}
			$sum[$i] = $s;
		}
		$result= $similarityMatrix;
		return $result;
	}

	public function findKNeighbors($score, $i, $similarityMatrix){
		$neighborSerial = array();
		$similarity = array();
		for($j = 0; $j < count($similarityMatrix); $j++){
			if($score[$j] != 0){
				array_push($similarity, $similarityMatrix[$j][$i]);
			}else{
				array_push($similarity, 0);
			}
		}
		$temp = array();
		for ($j=0; $j < count($similarity) ; $j++) { 
			$temp[$j] = $similarity[$j];
		}
		sort($temp);
		for ($j=0; $j < count($similarity); $j++) { 
			for ($m=count($temp)-1; $m >= (count($temp)-$this->KNEIGHBOUR) ; $m--) { 
				if(($similarity[$j] == $temp[$m]) && ($similarity[$j] != 0)){
					array_push($neighborSerial, $j);
				}
			}
		}
		return $neighborSerial;
	}

	public function findMaxSimilarity($max,$simility){
		for ($i=0; $i < count($simility) ; $i++) { 
			if($simility[$i] == $max)array_push($this->index, $this->preference[$i]);
		}
	}

	public function addInRecommendation($result){
		$re = array();
		for ($i=0; $i < count($result); $i++) { 
			$max = max($result[$i]);
			for ($j=0; $j < count($result[$i]); $j++) { 
				if($max == $result[$i][$j]){
					if((!in_array($this->book[$j]['isbn'], $re))&&(!in_array($this->book[$j]['isbn'], $this->preferenceisbn))){
						array_push($re, $this->book[$j]['isbn']);
					}
				}
			}
		}
		return $re;
	}

	public function recommendateBook(){
		$produceSimilarityMatrix = $this->produceSimilarityMatrix($this->preference);
		$max = max($produceSimilarityMatrix['sum']);
		$this->findMaxSimilarity($max,$produceSimilarityMatrix['sum']);
		$result = $this->findSimilarityMatrix($this->index,$this->book);
		$re = $this->addInRecommendation($result);
		return $re;
	}

	public function shishi(){
		var_dump($this->preference);
		var_dump($this->book);
	}
}
