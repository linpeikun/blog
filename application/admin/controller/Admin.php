<?php
namespace app\admin\controller;
use app\admin\model\Admin as AdminModel;
use think\Db;

// use think\Validate;

// use think\Loader;

/**
 * 管理员管理
 */
class Admin extends Base {
	/**
	 * 空操作
	 */
	// public function _empty($name) {
	// 	return $this->error('没有 ' . $name . ' 这种操作，正在为您跳转主页面！', url('Admin/index'));
	// }

	/**
	 * 列表页
	 */
	function index() {
		// $data = db('admin')->select();
		//分页
		$data = AdminModel::paginate(8);
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
				'username' => input('username'),
				'password' => input('password'),
			];
			// 验证器验证
			// $validate = \think\Loader::validate('Admin');
			$validate = validate('Admin');
			if (!$validate->scene('add')->check($data)) {
				return $this->error($validate->getError());
			}
			//MD5加密密码
			$data['password'] = md5(input('password'));
			//数据库插入操作，res为受影响的行数
			$res = Db::name('admin')->insert($data);
			if ($res) {
				return $this->success('添加成功！', url('Admin/index'));
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
		if ($id == 1) {
			return $this->error('超级管理员不允许删除！');
		}
		$res = db('admin')->delete($id);
		if ($res) {
			return $this->success('删除成功！', url('Admin/index'));
		} else {
			return $this->error('删除失败！');
		}

	}
	/**
	 * 修改页
	 */
	function edit() {
		$id = input('id');
		$data = db('admin')->find($id);
		$this->assign('data', $data);
		return $this->fetch('edit');
	}

	/**
	 * 修改操作
	 */
	function doEdit() {
		$id = input('id');
		$username = input('username');
		$data = [
			'id' => $id,
			'username' => $username,
		];
		$password = input('password');
		if ($password != '') {
			$data['password'] = $password;
		}
		// 验证器验证
		$validate = \think\Loader::validate('Admin');
		if (!$validate->scene('edit')->check($data)) {
			return $this->error($validate->getError());
		}
		// 独立验证方式
		// $validate = new Validate([
		// 	'username' => 'require|min:3|unique:admin',
		// ]);
		// if (!$validate->check($data)) {
		// 	return $this->error($validate->getError());
		// }

		$data['password'] = md5($password);
		$res = db('admin')->update($data);
		if ($res !== false) {
			return $this->success('修改成功！', url('Admin/index'));
		} else {
			return $this->error('修改失败！');
		}
	}
}