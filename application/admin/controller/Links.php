<?php
namespace app\admin\controller;
use think\Controller;

class Links extends Base {
	public function index() {
		$data = db('links')->order('id')->paginate(8);
		$this->assign('data', $data);
		return $this->fetch('list');
	}
	public function add() {
		if (request()->isPost()) {
			$data = [
				'name' => input('name'),
				'url' => input('url'),
				'desc' => input('desc'),
			];

			// 验证
			$validate = validate('Links');
			if (!$validate->check($data)) {
				return $this->error($validate->getError());
			}
			$res = db('links')->insert($data);
			if ($res) {
				return $this->success('添加成功！', url('index'));
			} else {
				return $this->error('添加失败！');
			}
		}
		return $this->fetch();
	}
	public function del() {
		$id = input('id');
		$res = db('links')->delete($id);
		if ($res) {
			return $this->success('删除成功！', url('index'));
		} else {
			return $this->error('删除失败！');
		}
	}
	public function edit() {
		$id = input('id');
		$data = db('links')->find($id);
		$this->assign('data', $data);
		return $this->fetch();
	}
	public function doEdit() {
		$data = [
			'id' => input('id'),
			'name' => input('name'),
			'url' => input('url'),
			'desc' => input('desc'),
		];
		// 验证
		$validate = validate('Links');
		if (!$validate->check($data)) {
			return $this->error($validate->getError());
		}
		$res = db('links')->update($data);

		if ($res !== false) {
			return $this->success('修改成功！', url('index'));
		} else {
			return $this->error('修改失败！');
		}
	}
}