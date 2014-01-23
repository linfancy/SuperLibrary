<?php

class UserAction extends Action{
	public function __construct(){
		parent::__construct();
		
	}
	
	/**
	 * 注册的方法
	 */
	public function register(){
		$userModel = new UserModel();
		$studentNumber = $_REQUEST['studentNumber'];
		$password = $_REQUEST['password'];
		$schoolId = $_REQUEST['schoolId'];
		
		$studentNumber = '20111003444';
		$password = 'fancyaixiaoli';
		$schoolId = 1;

		if(empty($studentNumber) || empty($password) || empty($schoolId)){
			$this->ajaxReturn('', '数据不合法', 0);
		}
		
		if ($userModel->isExsitUser($studentNumber, $schoolId)){
			$this->ajaxReturn('', '该用户已经存在', 1);
		}
		
		$field = array(
				'username' => $studentNumber,
				'password' => $password,
				'login-form-type'=> 'pwd'
		);
		import("@.ORG.factory");
		$className = $userModel->getSchoolClassById($schoolId);
		$library = Factory::createClass($className);
		$formUrl = 'http://xg.gdufs.edu.cn/pkmslogin.form';//学工管理的登陆框
		$requestUrl = $library->getRequestUrl($field['username'] , 4);//Gwtxz类里内置的一些请求地址
		
		if($library->checkField($field['username'] , $field['password'],  $formUrl)){
			$library->saveContent($requestUrl);
			$data = array(
					'studentNumber' => $studentNumber,
					'username' => $library->getName(2),
					'schoolId' => $schoolId,
					'academy' => $library->getAcademy(2),
					'major' => $library->getMajor(2)
			);
			if($userModel->add($data)){
				$this->ajaxReturn('','注册成功',1);
			}else{
				$this->ajaxReturn('','注册失败',0);
			}
		}
		
	}
	
	/**
	 * 登陆
	 * @param studentNumber
	 * @param string password
	 * @param int 
	 * @return json{data:"", info:"", status: 1/0}
	 */
	public function login(){
		$studentNumber = $_REQUEST['studentNumber'];
		$password = $_REQUEST['password'];
		$schoolName = $_REQUEST['schoolName'];
		if(empty($studentNumber) || empty($password) || empty($schoolName)){
			$this->ajaxReturn('', '数据不合法', 0);
		}
		$userModel = new UserModel();
		$school = D('School')->where(array('schoolName'=>$schoolName))->find();
		$schoolId = $school['id'];
		$className = $school['fileName'];
		if (empty($schoolId)){
			$this->ajaxReturn('','该学校不存在',0);
		}
		import("@.ORG.factory");
		
		$library = Factory::createClass($className);
		if($library->checkField($studentNumber, $password)){
			if (!$userModel->isExsitUser($studentNumber, $schoolId)){//如果用户名不存在
				$data = array(
						'schoolId' => $schoolId,
						'studentNumber' => $studentNumber,
				);
				$userModel->data($data)->add();
			}
			$returnData = $userModel->field(array('schoolId','studentNumber'))
					->where(array('studentNumber'=>$studentNumber, 'schoolId'=>$schoolId))->find();
			$this->ajaxReturn(array('User'=>$returnData), '登陆成功', 1);
		}else{
			$this->ajaxReturn('', '用户名或密码错误', 0);
		}
	}
	
	
	public function login2(){
		$userModel = new UserModel();
		$studentNumber = $_REQUEST['studentNumber'];
		$password = $_REQUEST['password'];
		$schoolId = $_REQUEST['schoolId'];
		
		if(empty($studentNumber) || empty($password) || empty($schoolId)){
			$this->ajaxReturn('', '数据不合法', 0);
		}
		
		
		$field = array(
				'username' => $studentNumber,
				'password' => $password,
				'login-form-type'=> 'pwd'
		);
		vendor("Gw2.Gwtxz");
		$user = new Gwtxz();
		$formUrl = 'http://xg.gdufs.edu.cn/pkmslogin.form';//学工管理的登陆框
		$requestUrl = $user->getRequestUrl($field['username'], 4);//Gwtxz类里内置的一些请求地址
		if($user->checkField($field , $formUrl)){
			
			if (!$userModel->isExsitUser($studentNumber, $schoolId)){
				$user->saveContent($requestUrl);
				$data = array(
						'studentNumber' => $studentNumber,
						'username' => $user->getName(2),
						'schoolId' => $schoolId,
						'academy' => $user->getAcademy(2),
						'major' => $user->getMajor(2)
				);
				$userModel->add($data);
			}else{
				$data = $userModel->where(array('studentNumber'=>$studentNumber, 'schoolId'=>$schoolId))->select();
				$data = $data[0];
			}
			$returnData = array(
				'User' => $data		
			);
			$this->ajaxReturn($returnData , '登陆成功', 1);
		}else{
			$this->ajaxReturn('', '用户名或密码错误', 0);
		}
	}
	
	
	function test(){
		$model = new HistoryModel();
		$isExsit = $model->isExsit(1, '20111003632', 'PHP Web 2.0开发实战', '泽瓦斯');
		var_dump($isExsit);
	}
	
	
	
	
	
	
	
	
}

?>