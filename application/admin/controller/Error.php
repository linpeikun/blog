<?php
namespace app\admin\controller;
use think\Controller;

// 空控制器
class Error extends Controller {
	//空操作显示404
	public function _empty() {
		return $this->fetch('error/index');
	}
}