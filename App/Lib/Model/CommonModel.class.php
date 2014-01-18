<?php

class CommonModel extends Model{
	
	public function __construct(){
		parent::__construct();
	}
	
	/**
	 * 得到学校对应的类的名字
	 * @param int $schoolId
	 * @return string
	 */
	public function getSchoolClassById($schoolId){
		$className = D('School')->field('fileName')->where(array('id'=>$schoolId))->find();
		return $className['fileName'];
	}
	
	public function getSchoolIdByName($schoolName){
		$id = D('School')->where(array('schoolName'=>$schoolName))->find();
		return $id;
	}
	
}