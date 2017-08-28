<?php
namespace app\admin\validate;
use think\Validate;

class Links extends Validate {
	protected $rule = [
		'name' => 'require|unique:links',
		'url' => 'require|unique:links',
	];

	protected $message = [
		'name.require' => '名称不能为空',
		'name.unique' => '名称已存在',
		'url.require' => 'url不能为空',
	];
}