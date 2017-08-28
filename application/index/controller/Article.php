<?php
namespace app\index\controller;

class Article extends Base {
	public function index() {
		//路由测试
		// return url('index/Article/index', ['id' => 2]);exit;

		$id = input('id');
		//获取文章信息
		$data = db('article')->alias('a')->join('cate c', 'a.cateid = c.id', 'left')->field('a.title,a.time,a.author,a.click,a.content,c.id cateid,c.catename,a.desc,a.keywords')->find($id);
		//点击量+1操作
		db('article')->where(['id' => $id])->setInc('click');
		$this->assign('data', $data);

		//相关阅读(关键字匹配)
		$keywords = explode(',', $data['keywords']);
		$where = '';
		foreach ($keywords as $v) {
			$where .= "keywords LIKE '%" . $v . "%' OR ";
		}
		$where = rtrim($where, 'OR ');
		$relateRead = db('article')->field('id,title')->where($where)->limit(8)->order('click')->select();
		// echo db()->getLastSql();exit;
		$this->assign('relateRead', $relateRead);

		//频道推荐
		$tvCate = db('article')->field('id,title,pic')->where('cateid = ' . $data['cateid'])->limit(8)->order('time desc')->select();
		$this->assign('tvCate', $tvCate);

		return $this->fetch('article');
	}
}