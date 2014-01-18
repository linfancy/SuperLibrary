<?php
class HistoryModel extends CommonModel{
	
	public function addHistoryList($studentNumber, $schoolId, $list){
// 		$this->where(array('studentNumber'=>$studentNumber, 'schoolId'=>$schoolId))->delete();
		
		$len = count($list['url']);
		for($i = $len-1; $i>=0; $i--){
			$order = $i;
			$url = $list['url'][$i];
			$author = $list['author'][$i];
			$title = $list['title'][$i];
			if ($this->isExsit($schoolId, $studentNumber, $title, $author)){
				$where = array(
						'schoolId' => $schoolId,
						'studentNumber' => $studentNumber,
						'title' => $title,
						'author' => $author,
				);
				$newData = array(
						'ordered' => $order,
						'url' => $url		
				);
				$this->where($where)->data($newData)->save();
				continue;
			}
			
			$data = array(
					'ordered'=>$order,
					'studentNumber' => $studentNumber,
					'schoolId' => $schoolId,
					'author' => $author,
					'title' => $title,
					'url' => $url,
			);
			
			if(!$this->data($data)->add()){
				echo $this->getDbError();
			}
			
		}
	}
	
	/**
	 * 判断是否存在该书的历史记录
	 * @param int $schoolId
	 * @param String $studentNumber
	 * @param String $title
	 * @param String $author
	 * @return boolean
	 */
	public function isExsit($schoolId, $studentNumber, $title, $author){
		$where = array(
			'schoolId' => $schoolId,
			'studentNumber' => $studentNumber,
			'title' => $title,
			'author' => $author,
		);
		
		if ($this->where($where)->count()>=1){
			return true;
		}else{
			return false;
		}
	}
	
	public function updateOrder($schoolId, $studentNumber, $title, $author, $order){
		$where = array(
				'schoolId' => $schoolId,
				'studentNumber' => $studentNumber,
				'title' => $title,
				'author' => $author,
		);
		$this->where($where)->data(array('ordered'=>$order))->save();
	}

	public function getUserHistory($studentNumber){
		$where = array('studentNumber' => $studentNumber);
		return $this->where($where)->field('studentNumber,isbn,callNumber')->select();
	}

	public function getAllHistory(){
		return $this->field('studentNumber,isbn,callNumber')->select();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}