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
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<link rel="stylesheet" href="../../css/swiper.min.css" />
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		html::after {
			position: fixed;
			top: 0;
			right: 0;
			left: 0;
			bottom: 0;
			content: '';
			display: block;
			background-attachment: fixed;
			background-size: cover;
			background-position: center;
		}
		#app {
			position: relative;
			z-index: 1;
		}
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
	
		.recommend {
		  padding: 10px 0;
		  display: flex;
		  justify-content: center;
		  background-repeat: no-repeat;
		  background-position: center center;
		  background-size: cover;
		}
	
		.recommend .box {
		    width: 1014px;
		}
	
		.recommend .box .title {
			padding: 10px 5px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
	
		.recommend .box .title span {
			padding: 0 10px;
			line-height: 1.4;
		}
	
		.recommend .box .list {
			display: flex;
			flex-wrap: wrap;
		}
		.index-pv1 .box .list .list-item {
			flex: 0 0 ${var1}%;
			padding: 0 5px;
			box-sizing: border-box;
		}
	
		.recommend .box .list .list-item-body {
			border: 1px solid rgba(0, 0, 0, 3);
			padding: 5px;
			box-sizing: border-box;
			cursor: pointer;
		}
	
		.recommend .box .list img {
			width: 100%;
			height: 100px;
			display: block;
			margin: 0 auto;
	    object-fit: cover;
	    max-width: 100%;
		}
	
		.recommend .box .list .name {
			padding-top: 5px;
			color: red;
			font-size: 14px;
			text-align: center;
			box-sizing: border-box;
		}
	
		.recommend .box .list .list-item3 {
			flex: 0 0 33.33%;
		}
	
		.recommend .box .list .list-item5 {
			flex: 0 0 20%;
		}
		
		/* 商品推荐-样式4-开始 */
		.recommend .list-4{
		  display: flex;
		  flex-wrap: wrap;
		  justify-content: center;
		}
		.recommend .list-4 .list-4-body {
		    display: flex;
		    flex-direction: column;
		}
		
		.recommend .list-4 .list-4-item {
		    position: relative;
		    z-index: 1;
		}
		.recommend .list-4 .list-4-item.item-1 {
		    width: 400px;
		    height: 400px;
		    margin-right: 20px;
		}
		
		.recommend .list-4 .list-4-item.item-2 {
		    width: 220px;
		    height: 190px;
		    margin-right: 20px;
		    margin-bottom: 20px;
		}
		
		.recommend .list-4 .list-4-item.item-3 {
		    width: 220px;
		    height: 190px;
		    margin-right: 20px;
		    margin-bottom: 0;
		}
		
		.recommend .list-4 .list-4-item.item-4 {
		    width: 190px;
		    height: 190px;
		    margin-right: 0;
		    margin-bottom: 20px;
		}
		
		.recommend .list-4 .list-4-item.item-5 {
		    width: 190px;
		    height: 190px;
		    margin-right: 0;
		    margin-bottom: 0;
		}
		
		.recommend .list-4 .list-4-item img {
		      width: 100%;
		      height: 100%;
		      object-fit: cover;
		      display: block;
		    }
		
		.recommend .list-4 .list-4-item .list-4-item-center {
			position: absolute;
			bottom: 0;
			left: 0;
			width: 100%;
			height: auto;
			display: flex;
			flex-wrap: wrap;
			background-color: rgba(0,0,0,.3);
		}
		.recommend .list-4 .list-4-item .list-4-item-center .list-4-item-title {
			width: 50%;
			text-align: left;
			line-height: 44px;
			color: #fff;
			font-size: 14px;
			padding: 0 6px;
		}
		
		.recommend .list-4 .list-4-item .list-4-item-center .list-4-item-price {
			width: 50%;
			text-align: right;
			line-height: 44px;
			color: #fff;
			font-size: 14px;
			padding: 0 6px;
		}
		/* 商品推荐-样式4-结束 */
		/* 商品推荐-样式5-开始 */
		.recommend .recommend-five-swiper.swiper-container-horizontal>.swiper-pagination-bullets {
		    line-height: 1;
		}
		.recommend .recommend-five-swiper .swiper-slide.swiper-slide-prev {
			z-index: 5;
		}
		.recommend .recommend-five-swiper .swiper-slide.swiper-slide-next {
			z-index: 5;
		}
		.recommend .recommend-five-swiper .swiper-slide.swiper-slide-active {
			z-index: 9;
		}
		
		.recommend .lists-five-swiper.swiper-container-horizontal>.swiper-pagination-bullets {
		    line-height: 1;
		}
		.recommend .lists-five-swiper .swiper-slide.swiper-slide-prev {
			z-index: 5;
		}
		.recommend .lists-five-swiper .swiper-slide.swiper-slide-next {
			z-index: 5;
		}
		.recommend .lists-five-swiper .swiper-slide.swiper-slide-active {
			z-index: 9;
		}
		/* 商品推荐-样式5-结束 */
	
		.news {
			padding: 10px 0;
			display: flex;
			justify-content: center;
			background-repeat: no-repeat;
			background-position: center center;
			background-size: cover;
			width: 100%;
		}
	
		.news .box {
		    width: 1014px;
		}
	
		.news .box .title {
			padding: 10px 5px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
	
		.news .box .title span {
			padding: 0 10px;
			line-height: 1.4;
		}
	
		.news .box .list {
			display: flex;
			flex-wrap: wrap;
		}
		.index-pv2 .box .list .list-item {
			flex: 0 0 ${var2}%;
			padding: 0 10px;
			box-sizing: border-box;
		}
	
		.news .box .list .list-item .list-item-body {
			border: 1px solid rgba(0, 0, 0, 3);
			padding: 10px;
			box-sizing: border-box;
			display: flex;
			cursor: pointer;
		}
	
		.news .box .list .list-item .list-item-body img {
			width: 120px;
			height: 100%;
			display: block;
			margin: 0 auto;
	    object-fit: cover;
	    max-width: 100%;
		}
	
		.news .box .list .list-item .list-item-body .item-info {
			flex: 1;
			display: flex;
			justify-content: space-between;
			flex-direction: column;
			padding-left: 10px;
			box-sizing: border-box;
		}
	
		.news .box .list .list-item .list-item-body .item-info .name {
			padding-top: 5px;
			color: red;
			font-size: 14px;
			box-sizing: border-box;
			overflow: hidden;
			text-overflow: ellipsis;
			display: -webkit-box;
			-webkit-line-clamp: 1;
			-webkit-box-orient: vertical;
		}
	
		.news .box .list .list-item .list-item-body .item-info .time {
			padding-top: 5px;
			color: red;
			font-size: 14px;
			overflow: hidden;
			text-overflow: ellipsis;
			display: -webkit-box;
			-webkit-line-clamp: 1;
			-webkit-box-orient: vertical;
		}
	
		.news .box .list .list-item1 {
			flex: 0 0 100%;
		}
	
		.news .box .list .list-item3 {
			flex: 0 0 33.33%;
		}
	
		.lists {
			padding: 10px 0;
			display: flex;
			justify-content: center;
			background-repeat: no-repeat;
			background-position: center center;
			background-size: cover;
		}
	
		.lists .box {
		    width: 1014px;
		    overflow: hidden;
		}
	
		.lists .box .title {
			padding: 10px 5px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
	
		.lists .box .title span {
			padding: 0 10px;
			line-height: 1.4;
		}
	
		.lists .box .swiper-slide {
			box-sizing: border-box;
			cursor: pointer;
		}
	
		.lists .box .swiper-slide .img-box {
			width: 100%;
			overflow: hidden;
		}
	
		.lists .box .swiper-slide .img-box img {
			width: 100%;
			height: 100%;
			object-fit: cover;
	    max-width: 100%;
		}
	.line1 {
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 1;
		overflow: hidden;
	}
	.line2 {
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 2;
		overflow: hidden;
	}
	.line3 {
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 3;
		overflow: hidden;
	}
	  	.index-pv3 .box .list .list-item {
	  		flex: 0 0 ${var3}%;
	  		padding: 0 10px;
	  		box-sizing: border-box;
	  	}
	
		.index-pv1 .animation-box:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1.02) rotate(0deg) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
		.index-pv2 .animation-box:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1.02) rotate(0deg) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
		.index-pv3 .animation-box:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1.02) rotate(0deg) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
		
		.index-pv1 .animation-box img:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1) rotate(0deg) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
		.index-pv2 .animation-box img:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1) rotate(0deg) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
		.index-pv3 .animation-box img:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1) rotate(0deg) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
	  
		.swiper-new-list-6 .swiper-wrapper {
			-webkit-transition-timing-function: linear;
			-moz-transition-timing-function: linear;
			-ms-transition-timing-function: linear;
			-o-transition-timing-function: linear;
			transition-timing-function: linear;
		}
		
		.idea {
		  display: flex;
		  flex-wrap: wrap;
		}
		.idea div {
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  background-repeat: no-repeat;
		  background-size: 100% 100%;
		}
		.recommendIdea .box1 {
			margin: 0 2%;
			padding: 0;
			width: 21%;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box2 {
			margin: 0 2%;
			padding: 0;
			width: 21%;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box3 {
			margin: 0 2%;
			padding: 0;
			width: 21%;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box4 {
			margin: 0 2%;
			padding: 0;
			width: 21%;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box5 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box6 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box7 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box8 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box9 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box10 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		
		.newsIdea .box1 {
			margin: 0 2%;
			padding: 0;
			width: 21%;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box2 {
			margin: 0 2%;
			padding: 0;
			width: 21%;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box3 {
			margin: 0 2%;
			padding: 0;
			width: 21%;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box4 {
			margin: 0 2%;
			padding: 0;
			width: 21%;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box5 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box6 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box7 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box8 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box9 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box10 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		
		.listsIdea .box1 {
			margin: 0 2%;
			padding: 0;
			width: 21%;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box2 {
			margin: 0 2%;
			padding: 0;
			width: 21%;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box3 {
			margin: 0 2%;
			padding: 0;
			width: 21%;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box4 {
			margin: 0 2%;
			padding: 0;
			width: 21%;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box5 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box6 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box7 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box8 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box9 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box10 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
	</style>
	<body>

		<div id="app">
			<!-- 轮播图 -->
			<div class="layui-carousel" style="overflow: hidden;" id="swiper" :style='{"boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 auto 0 200px","borderColor":"rgba(0,0,0,.3)","borderRadius":"20px","borderWidth":"0","width":"89.58%","borderStyle":"solid"}'>
			  <div carousel-item>
				<div v-if="swiperList.length" v-for="(item,index) in swiperList" :key="index">
					<img style="width: 100%;height: 100%;object-fit:cover;" :src="baseurl+item.value" />
				</div>
			  </div>
			</div>
			<!-- 轮播图 -->



			<!-- 推荐 -->

            

			<!-- 新闻资讯 -->
				<div class="news index-pv2" style="display: flex;justify-content: center;width:100%" :style='{"padding":"40px 0 25px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0","borderColor":"rgba(0,0,0,.3)","borderRadius":"0","borderWidth":"0","background":"#fff url(\"http://codegen.caihongy.cn/20220105/79a1bef6955345f588086c6e7a258e37.png\") no-repeat top","borderStyle":"solid"}'>
				  <div class="box" style='width:1000px'>
					<div v-if="false && 1 == 1" class="idea newsIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,.3)","width":"100%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				    <div class="title" :style='{"padding":"10px 0 10px 0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"10px 4% 40px 0","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(247, 247, 247, 0)","color":"rgba(16, 55, 94, 1)","borderRadius":"32px","alignItems":"center","borderWidth":"0","fontSize":"20px","borderStyle":"solid"}'>
				      <span>HOME NEWS</span><span>校园新闻</span>
				    </div>
				    <div v-if="false && 1 == 2" class="idea newsIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,.3)","width":"100%","borderStyle":"solid","height":"auto"}'>
				    	<div class="box1"></div>
				    	<div class="box2"></div>
				    	<div class="box3"></div>
				    	<div class="box4"></div>
				    	<div class="box5"></div>
				    	<div class="box6"></div>
				    	<div class="box7"></div>
				    	<div class="box8"></div>
				    	<div class="box9"></div>
				    	<div class="box10"></div>
				    </div>
					<div v-if="newsList.length" class="new-list-5" style="display: flex;flex-direction: column;align-items: center;">
					  <div @click="jump('../news/detail.jsp?id='+newsList[0].id)" v-if="newsList.length>0" class="new5-one" style="display: flex;flex-wrap: wrap;width: 100%;" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 1% 20px 1%","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 0)","borderRadius":"0","borderWidth":"0","width":"98%","borderStyle":"solid","height":"315px"}'>
					    <img :style='{"padding":"0","boxShadow":"1px 1px 0px 15px rgba(16,55,94,1)","margin":"15px","borderColor":"rgba(0, 0, 0, 0.5)","backgroundColor":"rgba(0,0,0,0)","borderRadius":"0","borderWidth":"0","width":"500px","borderStyle":"solid","height":"280px"}' style="width: 40%;height: 100%;object-fit: cover;" :src="baseurl+newsList[0].picture" alt="">
					    <div :style='{"padding":"0","boxShadow":"0px 3px 6px rgba(16, 55, 94, 0.56)","margin":"105px 0 0 1px","borderColor":"#ccc","backgroundColor":"#fff","borderRadius":"0","borderWidth":"1px","width":"45%","borderStyle":"solid","height":"65%"}' class="new5-one-info" style="width: 60%;">
					      <div :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(16, 55, 94, 1)","textAlign":"left","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"16px","borderStyle":"solid"}' style="box-sizing: border-box;" class="new5-one-info-title line1">{{newsList[0].title}}</div>
					      <div :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(168, 168, 168, 1)","textAlign":"left","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"32px","fontSize":"14px","borderStyle":"solid"}' style="box-sizing: border-box;" class="new5-one-info-descript line3">{{newsList[0].introduction}}</div>
					      <div :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(168, 168, 168, 1)","textAlign":"right","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' style="box-sizing: border-box;" class="new5-one-info-time">{{newsList[0].addtime}}</div>
					    </div>
					  </div>
					  <div class="new5-body" style="display: flex;width: 100%;">
					    <div @click="jump('../news/detail.jsp?id='+newsList[1].id)" v-if="newsList.length>1" class="new5-item animation-box" :style='{"padding":"0","boxShadow":"0px 0px 0px 12px rgba(16,55,94,1) inset","margin":"0 20px 30px 70px","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"31.33%","borderStyle":"solid","height":"200px"}'>
					      <div :style='{"padding":"5px 10px","boxShadow":"0 0 6px rgba(0,0,0,.3)","margin":"0 0 0 -70px","borderColor":"#ccc","backgroundColor":"rgba(16, 55, 94, 1)","borderRadius":"0","borderWidth":"0","width":"70px","borderStyle":"solid","height":"100%"}' class="new5-item-time" style="display: flex;flex-direction: column;align-items: center;justify-content: center;">
					        <span :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"21px","fontSize":"18px","borderStyle":"solid"}'>{{newsList[1].month}}</span><span :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"21px","fontSize":"14px","borderStyle":"solid"}'>{{newsList[1].addtime.split(" ")[0]}}</span>
					      </div>
					      <div :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"-180px 0 0 20px","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(16, 55, 94, 1)","textAlign":"left","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"16px","borderStyle":"solid"}' style="box-sizing: border-box;" class="new5-item-title line1">{{newsList[1].title}}</div>
					      <div :style='{"padding":"0px 35px 0 10px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0 0 20px","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(168, 168, 168, 1)","textAlign":"left","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"32px","fontSize":"14px","borderStyle":"solid"}' style="box-sizing: border-box;" class="new5-item-descript line3">{{newsList[1].introduction}}</div>
					    </div>
						<div @click="jump('../news/detail.jsp?id='+newsList[2].id)" v-if="newsList.length>2" class="new5-item animation-box" :style='{"padding":"0","boxShadow":"0px 0px 0px 12px rgba(16,55,94,1) inset","margin":"0 20px 30px 70px","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"31.33%","borderStyle":"solid","height":"200px"}'>
						  <div :style='{"padding":"5px 10px","boxShadow":"0 0 6px rgba(0,0,0,.3)","margin":"0 0 0 -70px","borderColor":"#ccc","backgroundColor":"rgba(16, 55, 94, 1)","borderRadius":"0","borderWidth":"0","width":"70px","borderStyle":"solid","height":"100%"}' class="new5-item-time" style="display: flex;flex-direction: column;align-items: center;justify-content: center;">
						    <span :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"21px","fontSize":"18px","borderStyle":"solid"}'>{{newsList[2].month}}</span><span :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"21px","fontSize":"14px","borderStyle":"solid"}'>{{newsList[1].addtime.split(" ")[0]}}</span>
						  </div>
						  <div :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"-180px 0 0 20px","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(16, 55, 94, 1)","textAlign":"left","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"16px","borderStyle":"solid"}' style="box-sizing: border-box;" class="new5-item-title line1">{{newsList[2].title}}</div>
						  <div :style='{"padding":"0px 35px 0 10px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0 0 20px","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(168, 168, 168, 1)","textAlign":"left","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"32px","fontSize":"14px","borderStyle":"solid"}' style="box-sizing: border-box;" class="new5-item-descript line3">{{newsList[2].introduction}}</div>
						</div>
						<div @click="jump('../news/detail.jsp?id='+newsList[3].id)" v-if="newsList.length>3" class="new5-item animation-box" :style='{"padding":"0","boxShadow":"0px 0px 0px 12px rgba(16,55,94,1) inset","margin":"0 20px 30px 70px","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"31.33%","borderStyle":"solid","height":"200px"}'>
						  <div :style='{"padding":"5px 10px","boxShadow":"0 0 6px rgba(0,0,0,.3)","margin":"0 0 0 -70px","borderColor":"#ccc","backgroundColor":"rgba(16, 55, 94, 1)","borderRadius":"0","borderWidth":"0","width":"70px","borderStyle":"solid","height":"100%"}' class="new5-item-time" style="display: flex;flex-direction: column;align-items: center;justify-content: center;">
						    <span :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"21px","fontSize":"18px","borderStyle":"solid"}'>{{newsList[3].month}}</span><span :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"21px","fontSize":"14px","borderStyle":"solid"}'>{{newsList[1].addtime.split(" ")[0]}}</span>
						  </div>
						  <div :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"-180px 0 0 20px","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(16, 55, 94, 1)","textAlign":"left","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"16px","borderStyle":"solid"}' style="box-sizing: border-box;" class="new5-item-title line1">{{newsList[3].title}}</div>
						  <div :style='{"padding":"0px 35px 0 10px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0 0 20px","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(168, 168, 168, 1)","textAlign":"left","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"32px","fontSize":"14px","borderStyle":"solid"}' style="box-sizing: border-box;" class="new5-item-descript line3">{{newsList[3].introduction}}</div>
						</div>
					  </div>
					</div>
					
				    <div class="clear"></div>
				    <div style="text-align: center;">
					<button @click="jump('../news/list.jsp')" style="display: block;cursor: pointer;" type="button" :style='{"padding":"0 15px","boxShadow":"0 0 6px rgba(255,0,0,0)","margin":"4px auto","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(16, 55, 94, 1)","borderRadius":"6px","borderWidth":"0","width":"auto","fontSize":"16px","borderStyle":"solid","height":"34px"}'>查看更多<i v-if="true" :style='{"isshow":true,"padding":"0 0 0 1px","fontSize":"16px","color":"rgba(16, 55, 94, 1)"}' class="layui-icon layui-icon-next"></i></el-button>
				    </div>
					<div v-if="false && 1 == 3" class="idea newsIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,.3)","width":"100%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				  </div>
				</div>
			<!-- 新闻资讯 -->

			

			<!-- 图文列表 -->
				<div class="recommend index-pv3" :style='{"padding":"50px 0 100px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0","borderColor":"rgba(0,0,0,.3)","borderRadius":"0","borderWidth":"0","background":"#fff url(\"http://codegen.caihongy.cn/20220105/391d8548c8eb4d04bdbcc6e58ebddd1c.png\") no-repeat top","borderStyle":"solid"}'>
				  <div class="box" style='width:1100px'>
					<div v-if="false && 1 == 1" class="idea listsIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,.3)","width":"100%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				    <div class="title" :style='{"isshow":true,"padding":"0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"10px 4% 50px 0","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(247, 247, 247, 0)","color":"rgba(16, 55, 94, 1)","borderRadius":"32px","alignItems":"center","borderWidth":"0","fontSize":"22px","borderStyle":"solid"}'>
				      <span>DATA SHOW</span><span>社团介绍展示</span>
				    </div>
					<div v-if="false && 1 == 2" class="idea listsIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,.3)","width":"100%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
					<div class="list-4">
					    <div v-if="shetuanjieshaoList.length>0" class="list-4-item animation-box item-1" @click="jump('../shetuanjieshao/detail.jsp?id='+shetuanjieshaoList[0].id)" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"0 20px 35px 0","borderColor":"rgba(16, 55, 94, 1)","backgroundColor":"rgba(204, 204, 204, 0)","borderRadius":"50%","borderWidth":"25px","width":"460px","borderStyle":"solid","height":"460px"}'>
									<img :style='{"padding":"0","boxShadow":"0 0 10px #10375E","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(204, 204, 204, 0)","borderRadius":"50%","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="shetuanjieshaoList[0].shetuantupian?baseurl+shetuanjieshaoList[0].shetuantupian.split(',')[0]:''" alt="" />
					    			<div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0 25% ","borderColor":"#ccc","backgroundColor":"rgba(16, 55, 94, 1)","borderRadius":"80px","borderWidth":"0","width":"50%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
										<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{shetuanjieshaoList[0].shetuanmingcheng}}</div>
					    			</div>
					    </div>
					    <div class="list-4-body">
					    			<div v-if="shetuanjieshaoList.length>1" @click="jump('../shetuanjieshao/detail.jsp?id='+shetuanjieshaoList[1].id)" class="list-4-item animation-box item-2" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"0 20px 20px 0","borderColor":"rgba(16, 55, 94, 1)","backgroundColor":"rgba(204, 204, 204, 0)","borderRadius":"50%","borderWidth":"15px","width":"200px","borderStyle":"solid","height":"200px"}'>
					    			  <img :style='{"padding":"0","boxShadow":"0 0 10px #10375E","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(204, 204, 204, 0)","borderRadius":"50%","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="shetuanjieshaoList[1].shetuantupian?baseurl+shetuanjieshaoList[1].shetuantupian.split(',')[0]:''" alt="" />
					    			  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0 25% ","borderColor":"#ccc","backgroundColor":"rgba(16, 55, 94, 1)","borderRadius":"80px","borderWidth":"0","width":"50%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
					    			  	<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{shetuanjieshaoList[1].shetuanmingcheng}}</div>
					    			  </div>
					    			</div>
					    			<div v-if="shetuanjieshaoList.length>2" @click="jump('../shetuanjieshao/detail.jsp?id='+shetuanjieshaoList[2].id)" class="list-4-item animation-box item-3" :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0, .3)","margin":"0 20px 0 0","borderColor":"rgba(16, 55, 94, 1)","backgroundColor":"#ccc","borderRadius":"50%","borderWidth":"15px","width":"200px","borderStyle":"solid","height":"200px"}'>
					    			  <img :style='{"padding":"0","boxShadow":"0 0 10px #10375E","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(204, 204, 204, 0)","borderRadius":"50%","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="shetuanjieshaoList[2].shetuantupian?baseurl+shetuanjieshaoList[2].shetuantupian.split(',')[0]:''" alt="" />
					    			  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0 25% ","borderColor":"#ccc","backgroundColor":"rgba(16, 55, 94, 1)","borderRadius":"80px","borderWidth":"0","width":"50%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
					    			  	<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{shetuanjieshaoList[2].shetuanmingcheng}}</div>
					    			  </div>
					    			</div>
					    </div>
					    <div class="list-4-body">
					    			<div v-if="shetuanjieshaoList.length>3" @click="jump('../shetuanjieshao/detail.jsp?id='+shetuanjieshaoList[3].id)" class="list-4-item animation-box item-4" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"0 0 20px 0","borderColor":"rgba(16, 55, 94, 1)","backgroundColor":"#ccc","borderRadius":"50%","borderWidth":"15px","width":"200px","borderStyle":"solid","height":"200px"}'>
					    			  <img :style='{"padding":"0","boxShadow":"0 0 10px #10375E","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(204, 204, 204, 0)","borderRadius":"50%","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="shetuanjieshaoList[3].shetuantupian?baseurl+shetuanjieshaoList[3].shetuantupian.split(',')[0]:''" alt="" />
					    			  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0 25% ","borderColor":"#ccc","backgroundColor":"rgba(16, 55, 94, 1)","borderRadius":"80px","borderWidth":"0","width":"50%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
								<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{shetuanjieshaoList[3].shetuanmingcheng}}</div>
					    			  </div>
					    			</div>
					    			<div v-if="shetuanjieshaoList.length>4" @click="jump('../shetuanjieshao/detail.jsp?id='+shetuanjieshaoList[4].id)" class="list-4-item animation-box item-5" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"0","borderColor":"rgba(16, 55, 94, 1)","backgroundColor":"#ccc","borderRadius":"50%","borderWidth":"15px","width":"200px","borderStyle":"solid","height":"200px"}'>
					    			  <img :style='{"padding":"0","boxShadow":"0 0 10px #10375E","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(204, 204, 204, 0)","borderRadius":"50%","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="shetuanjieshaoList[4].shetuantupian?baseurl+shetuanjieshaoList[4].shetuantupian.split(',')[0]:''" alt="" />
					    			  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0 25% ","borderColor":"#ccc","backgroundColor":"rgba(16, 55, 94, 1)","borderRadius":"80px","borderWidth":"0","width":"50%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
					    			  	<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{shetuanjieshaoList[4].shetuanmingcheng}}</div>
					    			  </div>
					    			</div>
					    </div>
					</div>
					<div class="clear"></div>
					<div style="text-align: center;">
					<button @click="jump('../shetuanjieshao/list.jsp')" style="display: block;cursor: pointer;" type="button" :style='{"padding":"0 15px","boxShadow":"0 0 6px rgba(255,0,0,0)","margin":"4px auto","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(16, 55, 94, 1)","borderRadius":"6px","borderWidth":"0","width":"auto","fontSize":"16px","borderStyle":"solid","height":"34px"}'>查看更多<i v-if="true" :style='{"isshow":true,"padding":"0 0 0 1px","fontSize":"16px","color":"rgba(16, 55, 94, 1)"}' class="layui-icon layui-icon-next"></i></el-button>
					</div>
					<div v-if="false && 1 == 3" class="idea listsIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,.3)","width":"100%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				  </div>
				</div>
			<!-- 图文列表 -->


		</div>
		<script src="../../layui/layui.js"></script>
		<script src="../../js/swiper.min.js"></script>
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





                    shetuanjieshaoList: [],


                    // 轮播图
					swiperList: [],
					baseurl: '',
					// 新闻资讯
					newsList: [],
					leftNewsList: [],
					rightNewsList: []
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 60) {
								return val.substring(0, 60).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
				},
				methods: {
					jump(url) {
						jump(url)
					},
				}
			})

			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						vue.swiperList = res.data.list;
						
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
                

                // 新闻资讯
				http.request('news/list', 'get', {
					page: 1,
				}, function(res) {
					var newsList = res.data.list;
					
					vue.newsList = newsList;
					if (newsList.length > 0 && newsList.length <= 2) {
						vue.leftNewsList = res.data.list
					} else {
						var leftNewsList = []
						for (let i = 0; i <= 2; i++) {
							leftNewsList.push(newsList[i]);
						}
						vue.leftNewsList = leftNewsList
					}
					if (newsList.length > 2 && newsList.length <= 8) {
						var rightNewsList = []
						for (let i = 3; i <= newsList.length; i++) {
							rightNewsList.push(newsList[i]);
						}
						vue.rightNewsList = rightNewsList
						console.log('rightNewsList',rightNewsList,vue.rightNewsList)
					}
					
					let flag = 5;
					let options = {"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"slidesPerView":5,"loop":true,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
					options.pagination = {el:'null'}
					if(options.slidesPerView) {
						options.slidesPerView = Number(options.slidesPerView);
					}
					if(options.spaceBetween) {
						options.spaceBetween = Number(options.spaceBetween);
					}
					if(flag == 3) {
						vue.$nextTick(() => {
							new Swiper ('#newsnews', options)
						})
					}
					
					if(flag == 6) {
						let sixSwiper = {
							loop: true,
							speed: 2500,
							slidesPerView: 3,
							spaceBetween: Number(10),
							centeredSlides: true,
							watchSlidesProgress: true,
							autoplay: {
							  delay: 0,
							  stopOnLastSlide: false,
							  disableOnInteraction: false
							}
						}
						
						vue.$nextTick(() => {
							new Swiper('#new-list-6news', sixSwiper)
						})
					}
				});

                


				

                http.request(`shetuanjieshao/list`, 'get', {
					page: 1,
				}, function(res) {
					vue.shetuanjieshaoList = res.data.list
					let flag = 4;
					let options = {"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"slidesPerView":5,"loop":true,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
					options.pagination = {el:'null'}
					if(options.slidesPerView) {
						options.slidesPerView = Number(options.slidesPerView);
					}
					if(options.spaceBetween) {
						options.spaceBetween = Number(options.spaceBetween);
					}
					if(flag == 3) {
						vue.$nextTick(() => {
							new Swiper ('#listsshetuanjieshao', options)
						})
					}
					// 商品列表样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#lists-five-swipershetuanjieshao', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
								pagination: {"el":".swiper-pagination","clickable":true},
							});
						})
					}
				});

				
			});
		</script>
	</body>
</html>
