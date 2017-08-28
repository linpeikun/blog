<?php
namespace app\index\controller;
use think\Controller;

class Base extends Controller {
	public function _initialize() {
		parent::_initialize();
		//获取栏目
		$cateData = $this->getCateData();
		//获取标签
		$tagsData = $this->getTagsData();
		//获取热门点击
		$hotClickData = $this->getHotClick();
		//获取推荐阅读
		$readData = $this->getRead();

		$this->assign('cateData', $cateData);
		$this->assign('tagsData', $tagsData);
		$this->assign('hotClickData', $hotClickData);
		$this->assign('readData', $readData);
	}
	//获取栏目
	public function getCateData() {
		$cateData = db('cate')->select();
		return $cateData;
	}
	//获取标签
	public function getTagsData() {
		$tagsData = db('tags')->select();
		return $tagsData;
	}
	//获取热门点击
	private function getHotClick() {
		$hotClickData = db('article')->field('id,title')->order('click desc')->limit(6)->select();
		return $hotClickData;
	}
	//获取推荐阅读
	private function getRead() {
		$readData = db('article')->where('state = 1')->field('id,title')->order('click desc')->limit(6)->select();
		return $readData;
	}
	//空操作显示404
	public function _empty() {
		return $this->fetch('error/index');
	}
}