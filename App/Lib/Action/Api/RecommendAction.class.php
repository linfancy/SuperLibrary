<?php
class RecommendAction extends CommonAction{
	
	public function __construct(){
		
	}
	
	public function index(){
		echo 'recommend-->index';
	}
	
	function getRecommendList(){
		$studentNumber = $_REQUEST['studentNumber'];
		$password = $_REQUEST['password'];
		$schoolId = $_REQUEST['schoolId'];
		if(empty($studentNumber) || empty($password) || empty($schoolId)){
			$this->ajaxReturn('', '数据不合法', 0);
		}
		
		
		//vendor("Gw.Factory");
		import("@.ORG.factory");
		$className = D('Recommend')->getSchoolClassById($schoolId);
		$library = Factory::createClass($className);
		
		if(!$library->checkField($studentNumber, $password)){
			$this->ajaxReturn('', '用户名或密码错误', 0);
		}
		
		if (empty($_REQUEST['p'])){
			//计算推荐的书
			$this->getRecommendation();
		}
		
		//数据分页
		import("ORG.Util.Page");
		$model = new RecommendViewModel();
		$where = array(
				'schoolId' => $schoolId,
				'studentNumber' => 	$studentNumber
		);
		$totalNums = $model->where($where)->count();
		
		$listRows = empty($_REQUEST['listRows']) ? 10 : $_REQUEST['listRows'];
		$page = new Page($totalNums, $listRows);
		$data = $model->distinct(true)->where($where)->order('recommendTime desc')->
					limit($page->firstRow.','.$page->listRows)->select();
		
		if ($data != false){
			$returnData = array('Recommend'=>$data);
			$this->ajaxReturn($returnData, '请求成功', 1);
		}else{
			$this->ajaxReturn('', '服务器无响应', 0);
		}
		
	}
	
	function calculateRecommend(){
		import('@.ORG.library');
		if($_REQUEST){
			$studentNumber = $this->_request("studentNumber");
			$schoolId = $this->_request("schoolId");
			$histories = $this->getAllHistory();
			$re = new Recommendate();
			$result = $this->getUserHistory($studentNumber);
			$re->setPreference($result);
			$re->setBooks($histories);
			$result = $re->recommendateBook();
			$this->updateRecommend($studentNumber,$result,$schoolId);
		}
	
	}
	
	

	public function getUserHistory($studentNumber){
		$model = D('History');
		$result = $model->getUserHistory($studentNumber);
		return $result;
	}

	public function getAllHistory(){
		$model = D('History');
		$result = $model->getAllHistory();
		return $result;
	}


	function getRecommendation(){
// 		echo '<meta charset="utf-8">';
		if($_REQUEST){
			$mystudentNumber = $this->_request("studentNumber");
			$schoolId = $this->_request("schoolId");
			import('@.ORG.recommend');
			$recommend = new recommend();
// 			$mystudentNumber = "20111003444";
			$id = $schoolId;
			$oneUser['studentNumber'] = $mystudentNumber;
			$oneUser['schoolId'] = $id;
			$historyModel = D('History');
			$bookModel = D('Book');
			$userModel = D('User');
			$recommend->setOneUser($oneUser);
			$oneUserHistory = $historyModel->getUserHistory($mystudentNumber);
			$recommend->setOneUserHistory($oneUserHistory);
			$users = $userModel->getUsers();
			$recommend->setUser($users);
			$history = $historyModel->getAllHistory();
			$recommend->setHistory($history);
			$result = $recommend->getRecommendBook();
			$this->updateRecommend($mystudentNumber,$result,$id);
// 			var_dump($result);
// 			for($i = 0; $i < count($result); $i++){
// 				$where = array("isbn"=>$result[$i]);
// // 				var_dump($historyModel->field('title')->where($where)->find());
// 			}
		}
	}


	function updateRecommend($studentNumber,$recommend,$schoolId){
		$model = D('Recommend');
		$model->addRecommend($studentNumber,$recommend,$schoolId);
	}
	
	
	/**
	 * 更新封面信息
	 */
	public function getCover(){
		$model = new BookModel();
		$model->updateBookInfo();
		$this->ajaxReturn('','',1);		
	}



	
	
	
	
	
	
	
	
	
	
	
}