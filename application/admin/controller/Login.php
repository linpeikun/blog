<?php
namespace app\admin\controller;
use think\Controller;

class Login extends Controller {
	//空操作显示404
	public function _empty() {
		return $this->fetch('error/index');
	}
	function index() {
		return $this->fetch('login');
	}
	function login() {
		$data = [
			'username' => input('username'),
			'password' => input('password'),
			'vcode' => input('vcode'),
		];

		//验证验证码
		if ($data['vcode'] == '') {
			$this->error('验证码不可以为空！', url('index'));
		}
		if (!captcha_check($data['vcode'])) {
			$this->error('验证码错误！', url('index'));
		}
		//验证用户名
		if ($data['username'] == '') {
			$this->error('用户名不可以为空！');
		}
		$arr = db('admin')->where(['username' => $data['username']])->find();
		if (!isset($arr['id'])) {
			$this->error('用户名或密码错误！');
		}
		//验证密码
		if ($arr['password'] != md5($data['password'])) {
			$this->error('用户名或密码错误！');
		} else {
			//保存用户信息到session
			session('admin', $arr);
			$this->success('登录成功，正在跳转主页...', url('Index/index'));
		}

	}
}