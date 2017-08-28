<?php
namespace app\index\controller;

class Lst extends Base {
	public function index() {
		$id = input('id');
		//获取文章列表
		$data = db('article')->where(['cateid' => $id])->order('time', 'desc')->field('id,title,pic,time,desc,keywords')->paginate(8);
		//获取栏目名称
		$cate = db('cate')->find($id);
		$this->assign('data', $data);
		$this->assign('cate', $cate);

		return $this->fetch('list');
	}
	//关键字查询
	public function key() {
		$key = input('key');
		$data = db('article')->where('keywords', 'like', '%' . $key . '%')->field('id,title,pic,time,desc,keywords')->paginate(3);

		$this->assign('data', $data);
		$this->assign('key', $key);
		return $this->fetch('list');
	}
	//搜索操作
	public function search() {
		$key = input('key');
		$this->assign('key', $key);
		//搜索列表中分页paginate参数设置
		$config = [
			'query' => [
				'key' => $key,
			],
		];
		$data = db('article')->where('keywords', 'like', '%' . $key . '%')->whereOr('title', 'like', '%' . $key . '%')->field('id,title,pic,time,desc,keywords')->paginate(1, false, $config);
		$this->assign('data', $data);
		return $this->fetch('list');
	}
}
