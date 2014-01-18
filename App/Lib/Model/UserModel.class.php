<?php
class UserModel extends CommonModel{
	
	
	public function __construct(){
		parent::__construct();
	}
	
	
	public function isExsitUser($studentNumber, $schoolId){
		$where = array(
			'studentNumber' => $studentNumber,
			'school_id' => $schoolId		
		);
		if($this->where($where)->count() >=1){
			return true;
		}else {
			return false;
		}
	}
	public function getUsers(){
		return $this->field("studentNumber,schoolId")->select();
	}
}