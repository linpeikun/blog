<?php
namespace app\index\controller;

class Index extends Base {
	public function index() {
		//首页。获取文章列表信息
		$data = db('article')->field('id,title,pic,time,desc,keywords')->order('time', 'desc')->paginate(8);
		$this->assign('data', $data);
		return $this->fetch();
	}
}
