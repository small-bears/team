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
	<body scrolling="no" style="overflow-y: hidden;overflow-x: hidden;">

		<!-- 顶部导航栏 -->
		<header id="header">
			<ul class="layui-nav nav">
				<li class="layui-nav-item"><a href="javascript:navPage('./pages/home/home.jsp')">首页</a></li>
				<li v-for="(item,index) in indexNav" v-bind:key="index" class="layui-nav-item"><a :href="'javascript:navPage(\''+item.url+'\')'">{{item.name}}</a></li>
				<li class="layui-nav-item">
					<a href="javascript:centerPage();">我的</a>
				</li>
				<li class="layui-nav-item"><a target="_blank" :href="adminurl">跳转到后台</a></li>
				<li v-if="cartFlag" class="layui-nav-item">
					<a href="javascript:navPage('./pages/cart/list.jsp')">
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
		</header>
		<!-- 顶部导航栏 -->

		<iframe src="./pages/home/home.jsp" id="iframe" frameborder="0" scrolling="auto" onload="changeFrameHeight()"></iframe>

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

		<!-- layui -->
		<script src="./layui/layui.js"></script>
		<!-- vue.js -->
		<script src="./js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="./js/config.js"></script>

		<script>
			var vue = new Vue({
				el: '#header',
				data: {
					indexNav: indexNav,
					cartFlag: cartFlag,
					adminurl: adminurl,
					chatFlag: chatFlag
				},
				methods: {
					jump(url) {
						jump(url)
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
						title: '客服聊天',
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
			document.getElementById('iframe').src = iframeUrl;

			// alert(iframeUrl)

			changeFrameHeight();

			//  窗口变化时候iframe自适应
			function changeFrameHeight() {
				var header = document.getElementById('header').scrollHeight;
				// var swiper = document.getElementById('swiper').scrollHeight;
				var ifm = document.getElementById("iframe");
				ifm.height = document.documentElement.clientHeight - header;
				ifm.width = document.documentElement.clientWidth;
				console.log(ifm.height)
			}

			// reasize 事件 窗口大小变化后执行的方法
			window.onresize = function() {
				changeFrameHeight();
			}
		</script>
	</body>
</html>
