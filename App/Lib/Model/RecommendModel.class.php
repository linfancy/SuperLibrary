<?php
class RecommendModel extends CommonModel{
	
	public function __construct(){
		parent::__construct();
	}
	
	public function existUser($studentNumber){
		$where = array('studentNumber' => $studentNumber);
		return $this->where($where)->find();
	}

	public function saveRecommend($studentNumber,$re,$schoolId=1){
		$where = array('studentNumber' => $studentNumber);
		$data['recommendisbn'] = implode(':', $re);
		$data['recommendTime']=time();
		$data['schoolId'] = $schoolId;
		$this->where($where)->data($data)->save();
	}
	

	public function addRecommend($studentNumber, $re, $schoolId=1){
		for ($i=0; $i < count($re); $i++) { 
			$data['recommendisbn'] = $re[$i];
			$data['studentNumber']=$studentNumber;
			$data['schoolId'] = $schoolId;
			$data['recommendTime'] = time();
			$where = array('recommendisbn'=>$re[$i]);
			if($result = $this->where($where)->find()){
				$where = array('bookId'=>$result['bookId']);
				$this->where($where)->save($data);
			}else{
				$this->data($data)->add();
			}
			
		}
		
		
	}
	
	
}