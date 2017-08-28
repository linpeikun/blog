<?php
namespace app\admin\controller;

class Article extends Base {
	//列表
	function index() {
		// $data = db('article')->paginate(2);
		//多表查询
		$data = db('article')->alias('a')->join('cate c', 'a.cateid=c.id')->field('a.id,a.title,c.catename,a.keywords,a.pic,a.author,a.state,a.click,a.time')->order('time', 'desc')->paginate(8);
		//分配变量到模版
		$this->assign('data', $data);
		//渲染模板
		return $this->fetch('list');
	}
	//添加
	function add() {
		//判断页面是否是post提交的
		if (request()->isPost()) {
			//获取表单数据
			$data = [
				'title' => input('title'),
				'cateid' => input('cateid'),
				// 'keywords' => input('keywords'),
				'desc' => input('desc'),
				'author' => input('author'),
				'content' => input('content'),
				'time' => time(),
			];
			//判断是否推荐
			if (input('state') == 'on') {
				$data['state'] = 1;
			} else {
				$data['state'] = 0;
			}
			//判断是否有上传图片
			if ($_FILES['file']["tmp_name"]) {
				//判断文件类型是否是图片
				$type = $_FILES['file']['type'];
				$t = explode('/', $type)[1];
				if (!in_array($t, ['png', 'jpg', 'gif', 'jpeg', 'bmp', 'swf'])) {
					return $this->error('缩略图请上传正确的图片格式！');
				}

				//获取表单上传的图片
				$file = request()->file('file');

				//移动到框架应用根目录/public/uploads/ 目录下
				$info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
				if ($info) {
					//上传成功
					$type = $info->getExtension();
					// dump($type);exit;

					//成功上传后，获取文件信息
					$src = '/uploads/' . $info->getSaveName();
					$data['pic'] = str_replace('\\', '/', $src);
				} else {
					//上传失败，获取错误信息
					return $this->error($file->getError());
				}
			}

			//验证
			$validate = validate('Article');
			if (!$validate->scene('add')->check($data)) {
				$this->error($validate->getError());
			}
			//关键字,转化
			$keywords = input('keywords');
			$data['keywords'] = str_replace('，', ',', $keywords);

			//添加到数据库
			$res = db('article')->insert($data);
			if ($res) {
				$this->success('添加成功！', url('Article/index'));
			} else {
				$this->error('添加失败！');
			}

		}
		//获取栏目名称
		$cate = db('cate')->select();
		$this->assign('cate', $cate);
		return $this->fetch('add');
	}
	//删除
	function del() {
		$id = input('id');
		//查询出原图片的地址
		$image = db('article')->field('pic')->find($id);
		$img = $image['pic'];
		//删除数据
		$res = db('article')->delete($id);

		if ($res) {
			if ($img != '') {
				//如果原来有图片，则删除
				@unlink('.' . $img);
			}
			$this->success('删除成功！', url('Article/index'));
		} else {
			$this->error('删除失败！');
		}
	}
	//修改页面
	function edit() {
		$id = input('id');
		//获取响应数据加载到模板显示
		$data = db('article')->find($id);
		// ->alias('a')->join('cate c', 'a.cateid=c.id')->field('a.id,a.title,c.catename,a.keywords,a.pic,a.author,a.state,a.click,a.time,a.desc,a.content')->select();
		$cate = db('cate')->select();
		$this->assign('data', $data);
		$this->assign('cate', $cate);
		return $this->fetch('edit');
	}
	//修改操作
	function doEdit() {
		$data = [
			'id' => input('id'),
			'title' => input('title'),
			'cateid' => input('cateid'),
			'keywords' => input('keywords'),
			'desc' => input('desc'),
			'author' => input('author'),
			'content' => input('content'),
			'time' => time(),
		];
		//判断是否推荐
		if (input('state') == 'on') {
			$data['state'] = 1;
		} else {
			$data['state'] = 0;
		}
		//判断是否有上传图片
		if ($_FILES['file']["tmp_name"]) {
			//判断文件类型是否是图片
			$type = $_FILES['file']['type'];
			$t = explode('/', $type)[1];
			if (!in_array($t, ['png', 'jpg', 'gif', 'jpeg', 'bmp', 'swf'])) {
				return $this->error('缩略图请上传正确的图片格式！');
			}
			//获取表单上传的图片
			$file = request()->file('file');
			//移动到框架应用根目录/public/uploads/ 目录下
			$info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
			if ($info) {
				//成功上传后，获取文件信息
				$src = '/uploads/' . $info->getSaveName();
				$data['pic'] = str_replace('\\', '/', $src);
			} else {
				//上传失败，获取错误信息
				return $this->error($file->getError());
			}
		}

		//验证
		$validate = validate('Article');
		if (!$validate->scene('edit')->check($data)) {
			$this->error($validate->getError());
		}

		//关键字,转化
		$keywords = input('keywords');
		$data['keywords'] = str_replace('，', ',', $keywords);

		//查询出原图片的地址
		$image = db('article')->field('pic')->find($data['id']);
		$img = $image['pic'];
		//添加到数据库
		$res = db('article')->update($data);

		if (isset($data['pic']) && $data['pic']) {
			//新图片上传成功，则删除原来的图片
			@unlink('.' . $img);
		}
		if ($res !== false) {
			$this->success('修改成功！', url('Article/index'));
		} else {
			$this->error('修改失败！');
		}
	}
}