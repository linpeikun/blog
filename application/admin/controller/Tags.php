<?php
namespace app\admin\controller;
use think\Controller;

class Tags extends Base {
	public function index() {
		$data = db('tags')->paginate(8);
		$this->assign('data', $data);
		return $this->fetch('list');
	}
	public function add() {
		if (request()->isPost()) {
			$data = [
				'tagname' => input('tagname'),
			];
			//验证
			$validate = validate('Tags');
			if (!$validate->scene('add')->check($data)) {
				return $this->error($validate->getError());
			}

			$res = db('tags')->insert($data);
			if ($res) {
				return $this->success('添加成功！', url('index'));
			} else {
				return $this->error('添加失败！');
			}
		}
		return $this->fetch('add');
	}
	public function del() {
		$id = input('id');
		$res = db('tags')->delete($id);
		if ($res) {
			return $this->success('删除成功！', url('index'));
		} else {
			return $this->error('删除失败！');
		}
	}
	public function edit() {
		$id = input('id');
		if (request()->isPost()) {
			$arr = [
				'id' => $id,
				'tagname' => input('tagname'),
			];

			//验证
			$validate = validate('Tags');
			if (!$validate->scene('edit')->check($arr)) {
				return $this->error($validate->getError());
			}
			//更新
			$res = db('tags')->update($arr);
			if ($res !== false) {
				return $this->success('修改成功！', url('index'));
			} else {
				return $this->error('修改失败！');
			}
		}
		//获取要显示的数据
		$data = db('tags')->find($id);
		$this->assign('data', $data);
		return $this->fetch();
	}
}