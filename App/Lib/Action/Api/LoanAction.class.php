<?php 

class LoanAction extends CommonAction{
	
	/**
	 * 获得借阅列表
	 * @param studentNumber
	 * @param string password
	 * @param int schoolId
	 */
	public function getLoanList(){
		
		$studentNumber = $_REQUEST['studentNumber'];
		$password = $_REQUEST['password'];
		$schoolId = $_REQUEST['schoolId'];
		$studentNumber = '20111003444';
		$password = 'fancyaixiaoli';
		$schoolId = 1;
		if(empty($studentNumber) || empty($password) || empty($schoolId)){
			$this->ajaxReturn('', '数据不合法', 0);
		}
		
		
		//vendor("Gw.Factory");
		import("@.ORG.factory");
		$loanModel = new LoanModel();
		$className = $loanModel->getSchoolClassById($schoolId);
		$library = Factory::createClass($className);
		
		if(!$library->checkField($studentNumber, $password)){
			$this->ajaxReturn('', '用户名或密码错误', 0);
		}
		
		$list = $library->getLoanList();
		var_dump($list);
		$loanModel->addLoanList($studentNumber, $schoolId, $list);
		
		$returnList = $loanModel->
				field(array('schoolId','studentNumber','id','title','author','url','returnDate'))->
				where(array('studentNumber'=>$studentNumber, 'schoolId'=>$schoolId))->select();
		$returnData = array(
// 				'num' => $num,
				'Loan' => $returnList
		);
		$this->ajaxReturn($returnData , '请求成功', 1);
		
	}
	
	/**
	 * 借阅历史列表,通过get或者post传入参数
	 * @param String schoolId 			(学校的id)必填
	 * @param String studentNumber		(学号或者借书号)必填
	 * @param Stirng password			(密码)必填
	 * @param String p					(当前的页码)可选，默认为1
	 * @param String listRows			(每页显示的数目)可选，默认为10
	 */
	public function getHistoryList(){
	
		$studentNumber = $_REQUEST['studentNumber'];
		$password = $_REQUEST['password'];
		$schoolId = $_REQUEST['schoolId'];
		
		$studentNumber = '20111003444';
		$password = 'fancyaixiaoli';
		$schoolId = 1;
		
		
		if(empty($studentNumber) || empty($password) || empty($schoolId)){
			$this->ajaxReturn('', '数据不合法', 0);
		}
	
		//vendor("Gw.Factory");
		import("@.ORG.factory");
		$historyModel = new HistoryModel();
		$className = $historyModel->getSchoolClassById($schoolId);
		$library = Factory::createClass($className);
	
		if(!$library->checkField($studentNumber, $password)){
			$this->ajaxReturn('', '用户名或密码错误', 0);
		}
		if (empty($_REQUEST['p'])){
			$list = $library->getHistoryList();
		}
	
		//数据分页
		import("ORG.Util.Page");
		$totalNums = $historyModel->
			where(array('studentNumber'=>$studentNumber, 'schoolId'=>$schoolId))->count();
		$listRows = empty($_REQUEST['listRows']) ? 10 : $_REQUEST['listRows'];
		$page = new Page($totalNums, $listRows);
		
		$historyModel->addHistoryList($studentNumber, $schoolId, $list);
		
		$returnList = $historyModel->
		field(array('id','studentNumber', 'schoolId', 'title', 'author', 'url'))->
		where(array('studentNumber'=>$studentNumber, 'schoolId'=>$schoolId))->
		order('ordered asc')->
		limit($page->firstRow.','.$page->listRows)->select();
		$returnData = array(
				'History' => $returnList //这里的键名是客户端的Model
		);
		$this->ajaxReturn($returnData , '请求成功', 1);
	}
	
	
	//==============================================
	/**
	 * notice: 此方法目前返回的还没做好
	 * 续借，通过get方法传入
	 * @param studentNumber
	 * @param string password
	 * @param int schoolId
	 * @param string books 要续借的书的id，如果有多本书，用|分开
	 * 
	 */
	public function renew(){
		$studentNumber = $_REQUEST['studentNumber'];
		$password = $_REQUEST['password'];
		$schoolId = $_REQUEST['schoolId'];
		$books = $_REQUEST['books'];
		if(empty($studentNumber) || empty($password) || empty($schoolId) || empty($books)){
			$this->ajaxReturn('', '数据不合法', 0);
		}
		
		$bookArr = explode('|', $books);
		$bookquery = '';
		foreach ($bookArr as $id){
			$bookquery .= '&'.$id.'=Y';
		}
		
		//vendor("Gw.Factory");
		import("@.ORG.factory");
		$loanModel = new LoanModel();
		$className = $loanModel->getSchoolClassById($schoolId);
		$library = Factory::createClass($className);
		
		if(!$library->checkField($studentNumber, $password)){
			$this->ajaxReturn('', '用户名或密码错误', 0);
		}
		$info = $library->renew($books);
		$this->ajaxReturn("", $info, 1);
// 		$content = $library->getContent();
// 		var_dump($content);
		
	}
	
	
	
	public function test(){
		//vendor("Gw.Factory");
		import("@.ORG.factory");
		$model = Factory::createClass('LibGw');
		var_dump($model->checkField("20111003632", "yin543211"));
		
		var_dump($model->getLoanList());
	}
	
	/**
	 * 更新用户借阅历史的isbn
	 */
	public function updateIsbn(){
		$studentNumber = $_REQUEST['studentNumber'];
		$schoolId = $_REQUEST['schoolId'];
		if (empty($studentNumber) || empty($schoolId)){
			$this->ajaxReturn('','数据不合发',0);
		}
		vendor("IsbnHelper.IsbnHelper");
		$helper = new IsbnHelper();
		$where = array(
			'studentNumber' => $studentNumber,
			'schoolId' => $schoolId		
		);
		$model = new HistoryModel();
		$bookList = $model->where($where)->select();
		foreach ($bookList as $book){
			if(!empty($book['isbn'])){
				continue;
			}
			$title = $book['title'];
			$info = $helper->getBookInfo($title);
			$data = array(
				'isbn' => $info['isbn'],
				'callNumber' => $info['callNumber']	
			);
			$where = array(
					'studentNumber' => $studentNumber,
					'schoolId' => $schoolId,
					'title' => $title
			);
			$model->where($where)->data($data)->save();
		}
		
		$bookModel = new BookModel();
		$bookModel->addItems($bookList);//把历史列表里的书存入书库
		$bookModel->updateBookInfo();
		$this->ajaxReturn('','',1);
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
}