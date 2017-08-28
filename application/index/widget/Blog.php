<?php
namespace app\index\widget;
use think\Controller;

class Blog extends Controller {
	// 加载头部
	public function header() {
		$blogData = db('article')->select();
		$this->assign('blogData', $blogData);
		return $this->fetch('common/header');
	}
}