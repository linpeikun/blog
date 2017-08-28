<?php
namespace app\admin\controller;
use think\Controller;

/**
 * 栏目管理
 */
class Cate extends Base {
	/**
	 * 列表页
	 */
	function index() {
		$data = db('cate')->paginate(8);
		$this->assign('data', $data);
		return $this->fetch('list');
	}
	/**
	 * 添加页
	 */
	function add() {
		//判断页面是不是post提交的
		if (request()->isPost()) {
			$data = [
				//用input()获取post传递的数据
				'catename' => input('catename'),
			];
			// 验证器验证
			$validate = validate('Cate');
			if (!$validate->scene('add')->check($data)) {
				return $this->error($validate->getError());
			}
			//数据库插入操作，res为受影响的行数
			$res = db('cate')->insert($data);
			if ($res) {
				return $this->success('添加成功！', url('Cate/index'));
			} else {
				return $this->error('添加失败！');
			}
		}
		return $this->fetch('add');
	}
	/**
	 * 删除页
	 */
	function del() {
		$id = input('id');
		$res = db('cate')->delete($id);
		if ($res) {
			return $this->success('删除成功！', url('Cate/index'));
		} else {
			return $this->error('删除失败！');
		}

	}
	/**
	 * 修改页
	 */
	function edit() {
		$id = input('id');
		//判断是否是post提交的
		if (request()->isPost()) {
			$catename = input('catename');
			$arr = [
				'id' => $id,
				'catename' => $catename,
			];
			// 验证器验证
			$validate = validate('Cate');
			if (!$validate->scene('edit')->check($arr)) {
				return $this->error($validate->getError());
			}
			$res = db('cate')->update($arr);
			if ($res !== false) {
				return $this->success('修改成功！', url('Cate/index'));
			} else {
				return $this->error('修改失败！');
			}
		}
		//显示要修改的数据
		$data = db('cate')->find($id);
		$this->assign('data', $data);
		return $this->fetch('edit');
	}
}