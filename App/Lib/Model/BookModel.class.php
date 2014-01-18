<?php
class BookModel extends CommonModel{
	function __construct(){
		parent::__construct();
	}

	public function getAllBooks(){
		$field = array("title", "id", "isbn", "callNumber");
		return $this->field($field)->select();
	}
	
	/**
	 * 把历史列表里的书存入书库
	 * @param string $hList
	 */
	function addItems($hList){
		foreach ($hList as $item){
			if ($this->where(array('isbn' => $item['isbn']))->count() < 1){
				$data = array(
						'title' => $item['title'],
						'isbn' => $item['isbn'],
						'author' => $item['author'],
						'callNumber' => $item['callNumber']
				);
				$this->data($data)->add();
			}
		}
		
	}
	
	
	/**
	 * 更新书库的cover ,url, publisher等信息
	 */
	function updateBookInfo(){
		$model = D('Book');
		vendor('IsbnHelper.CoverHelper');
		$helper = new CoverHelper();
		$list = $model->field(array('isbn','title'))->where('cover is null')->limit('0,20')->select();
		foreach ($list as $row){
				
			$isbn = str_replace("-", "", $row['isbn']);
			$info = $helper->getBookByIsbn($isbn);
			if ($info == null){
				$info = $helper->getBookByTitle($row['title']);
			}
			$where = array(
					'isbn'=>$row['isbn']
			);
			$data = array(
					'cover'=>$info['cover'],
					'url'=>$info['url'],
					'publisher'=>$info['publisher']
			);
			$model->where($where)->data($data)->save();
		}
	}
	
}