<?php
namespace app\admin\validate;
use think\Validate;

class Tags extends Validate {
	protected $rule = [
		'tagname' => 'unique:tags|max:20|require',
	];
	protected $message = [
		'tagname.unique' => '标签名已存在',
		'tagname.max' => '标签名不能大于20个字符',
		'tagname.require' => '标签名不能为空',
	];
	protected $scene = [
		'add' => ['tagname'],
		'edit' => ['tagname'],
	];
}
