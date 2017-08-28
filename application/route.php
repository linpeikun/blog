<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

return [
	'__pattern__' => [
		'name' => '\w+',
	],
	'[hello]' => [
		':id' => ['index/hello', ['method' => 'get'], ['id' => '\d+']],
		':name' => ['index/hello', ['method' => 'post']],
	],
	// 文章页
	'article/:id' => 'index/article/index',
	//主页
	'index' => 'index/Index/index',
	// 列表页
	'list/:id' => 'index/Lst/index',
	'key/:key' => 'index/Lst/key',
	'search' => 'index/Lst/search',

];
