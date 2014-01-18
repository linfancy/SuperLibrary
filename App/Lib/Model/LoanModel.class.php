<?php 
class LoanModel extends CommonModel{
	
	public function __construct(){
		parent::__construct();
	}
	
	public function addLoanList($studentNumber, $schoolId, $list){
		//先删除原来的数据
		$this->where(array('studentNumber'=>$studentNumber, 'schoolId'=>$schoolId))->delete();
		
		$len = count($list['id']);
		for($i = 0; $i<$len; $i++){
			$id = $list['id'][$i];
			$url = $list['url'][$i];
			$author = empty($list['author'][$i]) ? '无' : $list['author'][$i];
			$title = $list['title'][$i];
// 			$publishYear = $list['publishYear'][$i];
			$returnDate = $list['returnDate'][$i];
// 			$callNumber = $list['callNumber'][$i];
// 			$payment = $list['payment'][$i];
// 			$location = $list['location'][$i];
			$data = array(
					'id' => $id,
					'studentNumber' => $studentNumber,
					'schoolId' => $schoolId,
					'author' => $author,
					'title' => $title,
					'url' => $url,
// 					'publishYear' => $publishYear,
// 					'callNumber' => $callNumber,
					'returnDate' => $returnDate,
// 					'payment' => trim($payment),
// 					'location' => $location
			);
			
// 			var_dump($data);
			if(!$this->data($data)->add()){
				echo $this->getDbError();
			}
		}
	
	}
	
}