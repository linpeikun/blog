<?php
namespace app\admin\controller;
use think\Controller;

class Base extends Controller {
	//构造函数方法
	// public function __construct() {
	// 	//先调用父类的构造方法
	// 	parent::__construct();
	// 	//执行判断函数
	// 	$this->isLogin();
	// }

	//初始化方法
	public function _initialize() {
		//先调用父类的构造方法
		parent::_initialize();
		//执行判断函数
		$this->isLogin();
	}
	protected function isLogin() {
		//未登录跳转登录页面
		if (session('admin') == null) {
			$this->error('您还未登陆！', url('Login/index'));
		}
	}
	//空操作显示404
	public function _empty() {
		return $this->fetch('error/index');
	}
}
