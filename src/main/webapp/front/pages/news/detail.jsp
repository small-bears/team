<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!-- 新闻资讯 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>校园新闻</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		#swiper {
			overflow: hidden;
		}
		#swiper .layui-carousel-ind li {
			width: 16px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 3px;
			background-color: #f7f7f7;
			box-shadow: 0 0 6px #b4b4b4;
		}
		#swiper .layui-carousel-ind li.layui-this {
			width: 24px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 10px;
			background-color: rgba(16, 55, 94, 1);
			box-shadow: 0 0 6px #b4b4b4;
		}
		
		.index-title {
		    text-align: center;
		    box-sizing: border-box;
		    width: 980px;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    flex-direction: column;
		}
		
		.layui-laypage .layui-laypage-count {
		  padding: 0 10px;
		}
		.layui-laypage .layui-laypage-skip {
		  padding-left: 10px;
		}
		
		.news-container .content {
			margin: 30px auto;
		}
		
		.news-container .btn-container {
			display: flex;
			    align-items: center;
			    box-sizing: border-box;
			    width: 100%;
			    flex-wrap: wrap;
				width: 980px !important;
				    margin: 0 auto !important;
				    justify-content: space-between !important;
		}
		.news-container .btn-container button i {
			margin-right: 4px;
		}
	</style>
	<body>

		<div id="app">

			<!-- 轮播图 -->
			<div class="layui-carousel" id="swiper" :style='{"boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 auto 0 200px","borderColor":"rgba(0,0,0,.3)","borderRadius":"20px","borderWidth":"0","width":"89.58%","borderStyle":"solid"}'>
			  <div carousel-item id="swiper-item">
				<div v-for="(item,index) in swiperList" :key="index">
					<img style="width: 100%;height: 100%;object-fit:cover;" :src="item.img" />
				</div>
			  </div>
			</div>
			<!-- 轮播图 -->

			<!-- 标题 -->
			<div class="index-title" :style='{"padding":"10px","boxShadow":"-5px -5px 0px 0px rgba(16,55,94,1)","margin":"20px auto","borderColor":"rgba(16, 55, 94, 1)","backgroundColor":"rgba(255, 255, 255, 1)","color":"#333","borderRadius":"4px","borderWidth":"5px","fontSize":"20px","borderStyle":"solid","height":"auto"}'>
			  <span>NEWS / INFORMATION</span><span>校园新闻</span>
			</div>
			<!-- 标题 -->

			<div class="news-container">
				<h1 class="title">{{detail.title}}</h1>
				<div class="auth-container">
					时间：{{detail.addtime}}
				</div>
				<div class="content" v-html="detail.content">
				</div>

				<div class="btn-container" :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"10px 0 10px 0","borderColor":"rgba(0,0,0,.3)","backgroundColor":"rgba(16, 55, 94, 1)","borderRadius":"4px","borderWidth":"0","borderStyle":"solid","justifyContent":"flex-end","height":"64px"}'>
					<div class="title" style="font-size: 18px;color:#999;">
						本篇文章：{{detail.title}}
					</div>
					<button :style='{"padding":"0 15px","boxShadow":"0 0 8px rgba(0,0,0,0)","margin":"0 0 0 10px","borderColor":"#409EFF","backgroundColor":"rgba(193, 193, 193, 1)","color":"#fff","borderRadius":"0","borderWidth":"0","width":"auto","fontSize":"14px","borderStyle":"solid","height":"40px"}' onclick="back()" type="button" class="layui-btn layui-btn-lg btn-theme">
						<i v-if="true" class="layui-icon">&#xe65c;</i> 返回列表
					</button>
				</div>
			</div>
		</div>

		<!-- layui -->
		<script src="../../layui/layui.js"></script>
		<!-- vue -->
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>

		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					detail: {}
				},
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})

			layui.use(['layer', 'element', 'carousel', 'laypage', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var laypage = layui.laypage;
				var http = layui.http;
				var jquery = layui.jquery;

				var id = http.getParam('id');
				vue.baseurl = http.baseurl;
				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						var swiperItemHtml = '';
						for (let item of res.data.list) {
							if (item.name.indexOf('picture') >= 0 && item.value && item.value != "" && item.value != null) {
								swiperItemHtml +=
									'<div>' +
									'<img style="width: 100%;height: 100%;object-fit:cover;" class="swiper-item" src="' + http.baseurl+item.value + '">' +
									'</div>';
							}
						}
						jquery('#swiper-item').html(swiperItemHtml);
						// 轮播图
						vue.$nextTick(() => {
						  carousel.render({
						  	elem: '#swiper',
							width: '89.58%',
						  	height: '500px',
						  	arrow: 'hover',
						  	anim: 'default',
						  	autoplay: 'true',
						  	interval: '3000',
						  	indicator: 'inside'
						  });
						
						})
					}
				});

				// 详情信息
				http.request('news/detail/' + id, 'get', {}, function(res) {
					vue.detail = res.data
				});

			});
		</script>
	</body>
</html>
