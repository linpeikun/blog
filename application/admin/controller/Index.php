<?php
namespace app\admin\controller;
use think\Controller;

class Index extends Base {
	public function index() {
		return $this->fetch();
	}
	public function logout() {
		//清除session
		session('admin', null);
		$this->redirect('Login/index');
	}
}
