<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>首页</title>
		<link rel="stylesheet" href="./layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="./css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="./css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="./css/common.css" />
	</head>
	<style type="text/css">
		html, body {
			height: 100%;
		}
		#iframe {
			width: 100%;
			margin-top: 67px;
					}
		#header {
			height: auto;
			background: #fff;
			border-bottom: 0;
			position: fixed;
			top: 0;
			left: 0;
			width: 100%;
			z-index: 1;
		}
	
		#header .nav-top {
			display: flex;
			align-items: center;
			padding: 0 20px;
			font-size: 16px;
			color: #2a8a15;
			box-sizing: border-box;
			height: 67px;
			background: #10375E;
			box-shadow: 0 1px 6px rgba(0,0,0,.3);
			justify-content: center;
			position: relative;
			z-index: 1;
		}
	
		#header .nav-top-img {
			width: 124px;
			height: 40px;
			padding: 0;
			margin: 0;
			border-radius: 6px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
	
		#header .nav-top-title {
			line-height: 40px;
			font-size: 30px;
			color: rgba(255, 255, 255, 1);
			padding: 0 10px;
			margin: 0 10px;
			border-radius: 6px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
						background-color: rgba(0,0,0,0);
						box-shadow: 0 0 6px rgba(0,0,0,0);
		}
	
		#header .nav-top-tel {
			line-height: 40px;
			font-size: 16px;
			color: #333;
			padding: 0 10px;
			margin: 0;
			border-radius: 6px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
	
		#header .navs {
			display: flex;
			padding: 0 20px;
			align-items: center;
			box-sizing: border-box;
			height: 64px;
			background: #f7f7f7;
			box-shadow: 0 1px 6px rgba(0,0,0,0);
			justify-content: center;
		}
		#header .navs1 {
			width: 200px;
			height: 100vh;
			background: darkgoldenrod;
			position: absolute;
			top: 0;
			display: block;
			padding: 0;
			overflow-y: scroll;
			scrollbar-width: none;
			-ms-overflow-style: none;
		}
		
		#header .navs.navs1::-webkit-scrollbar {
			display: none;
		}
		
		#header .navs1 .list {
			display: flex;
			flex-direction: column;
		}
		#header .navs .title {
			width: auto;
			line-height: 40px;
			font-size: 16px;
			color: #333;
			padding: 0 10px;
			margin: 0 5px;
			border-radius: 6px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
						background-color: rgba(0,0,0,0);
						box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		#header .navs li {
			display: inline-block;
			width: 170px;
			line-height: 50px;
			padding: 0 10px;
			margin: 15px;
			color: #333;
			font-size: 16px;
			border-radius: 90px 90px 0 90px;
			border-width: 4px;
			border-style: solid;
			border-color: rgba(232, 232, 232, 1);
			background-color: rgba(232, 232, 232, 1);
			box-shadow: -8px -7px 0px 0px #B4B4B4;
			text-align: center;
			box-sizing: border-box;
			cursor: pointer;
		}
		#header .navs li a{
			color: inherit;
		}
		#header .navs li.current a{
			color: inherit;
		}
		#header .navs li a:hover{
			color: inherit;
		}
		#header .navs li.current {
			color: rgba(0, 0, 0, 1);
			font-size: 16px;
			border-radius: 90px 90px 0 90px;
			border-width: 4px;
			border-style: solid;
			border-color: rgba(16, 55, 94, 1);
			background-color: #f7f7f7;
			box-shadow: -8px -7px 0px 0px #10375e;
		}
		#header .navs li:hover {
			color: rgba(0, 0, 0, 1);
			font-size: 16px;
			border-radius: 90px 90px 0 90px;
			border-width: 4px;
			border-style: solid;
			border-color: rgba(16, 55, 94, 1);
			background-color: rgba(255, 255, 255, 1);
			box-shadow: -8px -7px 0px 0px #10375e;
		}
	</style>
	<body>

		<!-- 顶部导航栏 -->
		<!-- <header id="header">
			<ul class="layui-nav nav">
				<li class="layui-nav-item"><a href="javascript:navPage('./pages/home/home.jsp')">首页</a></li>
				<li v-for="(item,index) in indexNav" v-bind:key="index" class="layui-nav-item"><a :href="'javascript:navPage(\''+item.url+'\')'">{{item.name}}</a></li>
				<li class="layui-nav-item">
					<a href="javascript:centerPage();">我的</a>
				</li>
				<li class="layui-nav-item"><a target="_blank" :href="adminurl">跳转到后台</a></li>
				<li v-if="cartFlag" class="layui-nav-item">
					<a href="javascript:navPage('./pages/shop-cart/list.jsp')">
						<i class="layui-icon" style="font-size: 30px;">&#xe657;</i>
						购物车
					</a>
				</li>
				<li v-if="chatFlag" class="layui-nav-item">
					<a href="javascript:chatTap()">
						<i class="layui-icon" style="font-size: 30px;">&#xe677;</i>
						客服
					</a>
				</li>
			</ul>
		</header> -->
		
		<div id="header">
			<div v-if='true' class="nav-top">
			  <img v-if='false' class="nav-top-img" src='http://codegen.caihongy.cn/20210225/e1e748927010494ca6dbe9032cf73b67.gif'>
			  <div v-if="true" class="nav-top-title">{{projectName}}</div>
			  <div class="nav-top-tel"></div>
			</div>
						
						<div v-if="true" class="navs navs1" :style='{"width":"200px","boxShadow":"0 1px 6px rgba(0,0,0,0)","background":"#F5F5F5"}'>
			  <div style="padding-top:67px"></div>
			  <div v-if="false" style="text-align: center;" class="title" v-text="projectName"></div>
			  <div class="list">
				<ul>
					<li class='current'><a href="javascript:navPage('./pages/home/home.jsp')" class="menumain"><i v-if="false" class="layui-icon layui-icon-home"></i>首页</a></li>
					<li v-for="(item,index) in indexNav" v-bind:key="index"><a :href="'javascript:navPage(\''+item.url+'\')'" class="menumain" style="cursor: pointer;"><i v-if="false" class="layui-icon" :class="iconArr[index]"></i>{{item.name}}</a></li>
					<li><a href="javascript:centerPage();" class="menumain"><i v-if="false" class="layui-icon layui-icon-username"></i>个人中心</a></li>
					<li><a :href="adminurl" target="_blank" class="menumain" style="cursor: pointer;"><i v-if="false" class="layui-icon layui-icon-link"></i>后台管理</a></li>
														</ul>
			  </div>
			</div>
					</div>
		<!-- 顶部导航栏 -->

		<iframe src="./pages/home/home.jsp" id="iframe" frameborder="0" scrolling="no" width="100%" onload="changeFrameHeight()"></iframe>
		
		<div id="tabbar" v-if="false" class="tabbar" :style='{"padding":"20px 0","boxShadow":"0 0 6px rgba(110,22,64,.8)","margin":"10px 0 0 0","borderColor":"rgba(0,0,0,.3)","backgroundColor":"#000","borderRadius":"0","borderWidth":"0","borderStyle":"solid"}' style="position: relative;">
		  <img v-if='true' :style='{"boxShadow":"0 0 6px rgba(110,22,64,.8)","margin":"0 auto","borderColor":"rgba(0,0,0,.3)","borderRadius":"100%","borderWidth":"1px","width":"44px","borderStyle":"solid","height":"44px"}' style='display: block;box-sizing: border-box;' src='http://codegen.caihongy.cn/20201024/ed5e326ca66f403aa3197b5fbb4ec733.jpg' />
		  <div style='box-sizing: border-box;' :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(110,22,64,.8)","margin":"10px auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"#000","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"32px","fontSize":"14px","borderStyle":"solid"}' class="company">© 2014-2020 上海xxx信息科技有限公司</div>
		  <div style='box-sizing: border-box;' :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(255,0,0,0)","margin":"10px auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"#000","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"32px","fontSize":"14px","borderStyle":"solid"}' class="record">沪ICP备13031638号</div>
		  <div style='box-sizing: border-box;' :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(255,0,0,0)","margin":"10px auto 30px auto","borderColor":"rgba(255,255,255,1)","backgroundColor":"#000","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"1px 0","width":"40%","lineHeight":"32px","fontSize":"14px","borderStyle":"solid"}' class="desc">电话：4008000000 | 邮箱：support@21epub.com</div>
		</div>
		
		<!-- footer -->
		<!-- 
			<footer class="footer" id="footer">
			<div class="footer-item">
				地址：公司地址 电话：+86-0000-00000 传真：+86-0000-00000
			</div>
			<div class="footer-item">
				Copyright © 版权所有 Power by XXXXXX
			</div>
			</footer>
			 -->
		<!-- footer -->
		
		<script src="./js/jquery.js"></script>
		<!-- layui -->
		<script src="./layui/layui.js"></script>
		<!-- vue.js -->
		<script src="./js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="./js/config.js"></script>

		<script>
			var vue1 = new Vue({el: '#tabbar'})
			
			var vue = new Vue({
				el: '#header',
				data: {
					iconArr: ['layui-icon-gift','layui-icon-email','layui-icon-logout','layui-icon-transfer','layui-icon-slider','layui-icon-print','layui-icon-cols','layui-icon-snowflake','layui-icon-note','layui-icon-flag','layui-icon-theme','layui-icon-website','layui-icon-console','layui-icon-face-surprised','layui-icon-template-1','layui-icon-app','layui-icon-read','layui-icon-component','layui-icon-file-b','layui-icon-unlink','layui-icon-tabs','layui-icon-form','layui-icon-chat'],
					indexNav: indexNav,
					cartFlag: cartFlag,
					adminurl: adminurl,
					chatFlag: chatFlag,
					projectName: projectName,
				},
				mounted: function() {
					this.bindClickOnLi();
				},
				created() {
					this.iconArr.sort(()=>{
					  return (0.5-Math.random())
					})
				},
				methods: {
					jump(url) {
						jump(url)
					},
					bindClickOnLi() {
						let list = document.getElementsByTagName("li");
						for(var i = 0;i<list.length;i++){
							list[i].onclick = function(){
								$(this).addClass("current").siblings().removeClass("current");
							}
						}
					}
				}
			});

			layui.use(['element','layer'], function() {
				var element = layui.element;
				var layer = layui.layer;
			});
			
			function chatTap(){
				var userTable = localStorage.getItem('userTable');
				if (userTable) {
					layui.layer.open({
						type: 2,
						title: '客服',
						area: ['600px', '600px'],
						content: './pages/chat/chat.jsp'
					});
				} else {
					window.location.href = './pages/login/login.jsp'
				}
			}
			
			// 导航栏跳转
			function navPage(url) {
				localStorage.setItem('iframeUrl', url);
				document.getElementById('iframe').src = url;
			}

			// 跳转到个人中心也
			function centerPage() {
				var userTable = localStorage.getItem('userTable');
				if (userTable) {
					localStorage.setItem('iframeUrl', './pages/' + userTable + '/center.jsp');
					document.getElementById('iframe').src = './pages/' + userTable + '/center.jsp';
				} else {
					window.location.href = './pages/login/login.jsp'
				}
			}

			var iframeUrl = localStorage.getItem('iframeUrl');
			document.getElementById('iframe').src = iframeUrl || './pages/home/home.jsp';

			// alert(iframeUrl)

			setInterval(function(){
			  // i++;
			  // if(i<50) changeFrameHeight();
			  changeFrameHeight();
			},200)
			
			function changeFrameHeight() {
			  var iframe = document.getElementById('iframe');
			  // iframe.height = 'auto';
			    if (iframe) {
			        var iframeWin = iframe.contentWindow || iframe.contentDocument.parentWindow;
			        if (iframeWin.document.body) {
			            iframe.height = iframeWin.document.body.scrollHeight;
			        }
			    }
			};

			//  窗口变化时候iframe自适应
			// function changeFrameHeight() {
			// 	var header = document.getElementById('header').scrollHeight;
			// 	// var swiper = document.getElementById('swiper').scrollHeight;
			// 	var ifm = document.getElementById("iframe");
			// 	ifm.height = document.documentElement.clientHeight - header;
			// 	ifm.width = document.documentElement.clientWidth;
			// 	console.log(ifm.height)
			// }

			// reasize 事件 窗口大小变化后执行的方法
			window.onresize = function() {
				changeFrameHeight();
			}
		</script>
	</body>
</html>
