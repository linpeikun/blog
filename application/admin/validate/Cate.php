<?php
namespace app\admin\validate;
use think\Validate;

class Cate extends Validate {
	protected $rule = [
		'catename' => 'unique:cate|require|max:20',
	];
	protected $message = [
		'catename.unique' => '栏目名已存在！',
		'catename.require' => '栏目名不许为空！',
		'catename.max' => '栏目名不能超过20个字符',
	];
	protected $scene = [
		'add' => ['catename'],
		'edit' => ['catename'],
	];
}