<?php
namespace app\admin\validate;
use think\Validate;

class Admin extends Validate {
	protected $rule = [
		'username' => 'unique:admin|require|max:20|min:3',
		'password' => 'require|min:3',
	];
	protected $message = [
		'username.unique' => '用户名已存在！',
		'username.require' => '用户名不许为空！',
		'username.max' => '用户名不能超过20个字符',
		'username.min' => '用户名不能少于3个字符',
		'password.min' => '密码不能少于3个字符',
		'password.require' => '密码不能为空',
	];
	protected $scene = [
		'add' => ['username', 'password'],
		'edit' => ['username'],
	];
}