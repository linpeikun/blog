<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:80:"E:\UPUPW_NP7.0\htdocs\mytp\tp5\public/../application/index\view\index\index.html";i:1503817133;s:82:"E:\UPUPW_NP7.0\htdocs\mytp\tp5\public/../application/index\view\common\header.html";i:1503817006;s:81:"E:\UPUPW_NP7.0\htdocs\mytp\tp5\public/../application/index\view\common\right.html";i:1503817425;s:82:"E:\UPUPW_NP7.0\htdocs\mytp\tp5\public/../application/index\view\common\footer.html";i:1503623670;}*/ ?>
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title>_z不好玩丶</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="童老师ThinkPHP交流群：484519446" />
	<meta name="description" content="童老师ThinkPHP交流群：484519446" />
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
	<link href="__STATIC__/index/style/lady.css" type="text/css" rel="stylesheet" />
	<script type='text/javascript' src='__STATIC__/index/style/ismobile.js'></script>
</head>
<body>
	<div class="ladytop">
		<div class="nav">
			<div class="left"><a href="<?php echo url('index/Index/index'); ?>"><img src="__STATIC__/index/images/hunshang.png" alt="z不好玩丶"></a></div>
			<div class="right">
				<div class="box">
					<?php foreach($cateData as $v): ?>
					<a href="<?php echo url('index/Lst/index',['id'=>$v['id']]); ?>" rel='dropmenu110'><?php echo $v['catename']; ?></a> <?php endforeach; ?>
				</div>
			</div>
		</div>
	</div>
	<div class="hotmenu">
		<div class="con">热门标签：
			<?php foreach($tagsData as $v): ?>
			<a href='#'><?php echo $v['tagname']; ?></a> 
			<?php endforeach; ?>


			</div>
	</div>

<!-- widget测试 -->
<!-- 	<?php 
		// var_dump($blogData);
	 ?> -->
<!--顶部通栏-->
<div class="position"></div>
<div class="overall">
	<div class="left">
		<?php foreach($data as $v): ?>
		<div class="xnews2">
			<div class="pic"><a target="_blank" href="<?php echo url('index/Article/index',['id'=>$v['id']]); ?>">
			<?php if($v['pic'] != ''): ?>
			<img src="<?php echo $v['pic']; ?>" width='232px' height='200px' alt="<?php echo $v['title']; ?>"/>
			<?php else: ?>
			<!-- 没有图片就显示默认图片 -->
			<img src="__STATIC__/Index/images/57-1609201149550-L.jpg" width='232px' height='200px' alt="<?php echo $v['title']; ?>"/>
			<?php endif; ?>
			</a></div>
			<div class="dec">
				<h3><a target="_blank" href="<?php echo url('index/Article/index',['id'=>$v['id']]); ?>"><?php echo $v['title']; ?></a></h3>
				<div class="time">发布时间：<?php echo date( 'Y-m-d H:i:s',$v['time']); ?></div>
				<p><?php echo $v['desc']; ?></p>
				<?php 
					$keywords = $v['keywords'];
					$keywords = explode(',',$keywords);
				 ?>
				<div class="time">
					<?php foreach($keywords as $k): ?>
					<a href="<?php echo url('index/Lst/key',['key'=>$k]); ?>"><?php echo $k; ?></a> <?php endforeach; ?>
				</div>
			</div>
		</div>
		<?php endforeach; ?>
		
		<?php echo $data->render();; ?>
	</div>
         <!-- 热门点击、推荐阅读、搜索 -->
	<div class="right">
	<!--右侧各种广告-->
	<!--猜你喜欢-->
	<div id="hm_t_57953">
		<div style="display: block; margin: 0px; padding: 0px; float: none; clear: none; overflow: hidden; position: relative; border: 0px none; background: transparent none repeat scroll 0% 0%; max-width: none; max-height: none; border-radius: 0px; box-shadow: none; transition: none 0s ease 0s ; text-align: left; box-sizing: content-box; width: 300px;">
			<div class="hm-t-container" style="width: 298px;">
				<div class="hm-t-main">
					<div class="hm-t-header">热门点击</div>
					<div class="hm-t-body">
						<ul class="hm-t-list hm-t-list-img" id="ul1" style="max-height:148px;">
							<?php foreach($hotClickData as $v): ?>
							<li class="hm-t-item hm-t-item-img">
								<a data-pos="0" title="<?php echo $v['title']; ?>" target="_blank" href="<?php echo url('index/Article/index',['id'=>$v['id']]); ?>" class="hm-t-img-title" style="visibility: visible;"><span><?php echo $v['title']; ?></span></a>
							</li>
							<?php endforeach; ?>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="__STATIC__/index/style/jquery-3.2.1.min.js"></script>
	<script>
	//滚动显示效果
	$(function() {
		// console.log($('#ul1 li').eq(0).appendTo("#ul1"));
		//用于限制执行次数
		var liNum = 0;
		var liNum2 = 0;
		//获取 li 总数
		var numAll = $('#ul1 li').length ;
		var numAll2 = $('#ul2 li').length ;
		//滚动效果
		function listShow() {
			liNum = liNum%numAll;
			liNum2 = liNum2%numAll2;
			//采用动画设置top向上滚动
			$('#ul1 li').css({ 'position': 'relative' }).stop().animate({ 'top': (-36)+'px' },1000,function(){
				liNum++;
				//一轮里面执行一次
				if (liNum % numAll == 0) {
					//将top还原
					$('#ul1 li').css({ 'top': '0px' });
					//将第一个li丢到最后
					$('#ul1 li:first').appendTo("#ul1");
				};
			});
			$('#ul2 li').css({ 'position': 'relative' }).stop().animate({ 'top': (-36)+'px' },1000,function(){
				liNum2++;
				if (liNum2 % numAll2 == 0) {
					$('#ul2 li').css({ 'top': '0px' });
					$('#ul2 li:first').appendTo("#ul2");
				};
			});
		}
		setInterval(listShow, 3000);
	})
	</script>
	<div style="height:15px"></div>
	<div id="hm_t_57953">
		<div style="display: block; margin: 0px; padding: 0px; float: none; clear: none; overflow: hidden; position: relative; border: 0px none; background: transparent none repeat scroll 0% 0%; max-width: none; max-height: none; border-radius: 0px; box-shadow: none; transition: none 0s ease 0s ; text-align: left; box-sizing: content-box; width: 300px;">
			<div style="width: 298px;" class="hm-t-container">
				<div class="hm-t-main">
					<div class="hm-t-header">推荐阅读</div>
					<div class="hm-t-body">
						<ul class="hm-t-list hm-t-list-img" id="ul2" style="max-height:148px;">
							<?php foreach($readData as $v): ?>
							<li class="hm-t-item hm-t-item-img"><a style="visibility: visible;" class="hm-t-img-title" href="<?php echo url('index/Article/index',['id'=>$v['id']]); ?>" target="_blank" title="<?php echo $v['title']; ?>" data-pos="0"><span><?php echo $v['title']; ?></span></a></li>
							<?php endforeach; ?>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="height:15px"></div>
	<div id="bdcs">
		<div class="bdcs-container">
			<meta content="IE=9" http-equiv="x-ua-compatible">
			<!-- 嵌入式 -->
			<div id="default-searchbox" class="bdcs-main bdcs-clearfix">
				<div id="bdcs-search-inline" class="bdcs-search bdcs-clearfix">
					<form id="bdcs-search-form" autocomplete="off" class="bdcs-search-form" method="get" action="<?php echo url('index/Lst/search'); ?>">
						<input type="text" placeholder="请输入关键词" id="bdcs-search-form-input" class="bdcs-search-form-input" name="key" autocomplete="off" style="line-height: 30px; width:220px;" required="" value="<?php if((isset($key))): ?><?php echo $key; endif; ?>"> 
						<input type="submit" value="搜索" id="bdcs-search-form-submit" class="bdcs-search-form-submit bdcs-search-form-submit-magnifier" style="height:33px;float:right;padding-left:70px;"> </form>
				</div>
				<div id="bdcs-search-sug" class="bdcs-search-sug" style="top: 552px; width: 239px;">
					<ul id="bdcs-search-sug-list" class="bdcs-search-sug-list"></ul>
				</div>
			</div>
		</div>
	</div>
	<div style="height:15px"></div>
</div>

</div>

	<div class="footerd">
		<ul>
			<li>Copyright &#169; 2008-2016 all rights reserved 版权所有 <a href="http://www.miibeian.gov.cn" target="_blank" rel="nofollow">蜀icp备08107937号</a></li>
		</ul>
	</div>
	<div style="display:none;">
		<script src="__STATIC__/index/style/count_zixun.js" language="JavaScript"></script>
	</div>
</body>

</html>