<?php
namespace app\admin\validate;
use think\Validate;

class Article extends Validate {
	protected $rule = [
		'title' => 'unique:article|require|max:20',
		'cateid' => 'require',
		'author' => 'require|max:20',
	];
	protected $message = [
		'title.unique' => '文章标题已存在',
		'title.require' => '文章标题不能为空',
		'title.max' => '文章标题不能超过20个字符',
		'cateid.require' => '所属栏目不能为空',
		'author.require' => '文章作者不能为空',
		'author.require' => '文章作者不能超过20个字符',
	];
	protected $scene = [
		'add' => ['title', 'cateid', 'author'],
		'edit' => ['title', 'cateid', 'author'],
	];
}