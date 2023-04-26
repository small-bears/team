
var projectName = '社团管理系统的设计与实现';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的收藏',
	url: '../storeup/list.jsp'
}
]


var indexNav = [

{
	name: '社团新闻',
	url: './pages/shetuanxinwen/list.jsp'
}, 
{
	name: '社团介绍',
	url: './pages/shetuanjieshao/list.jsp'
}, 

{
	name: '校园新闻',
	url: './pages/news/list.jsp'
},
]

var adminurl =  "http://localhost:8080/jspm971h5/index.jsp";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["新增","查看","修改","删除"],"menu":"社员","menuJump":"列表","tableName":"sheyuan"}],"menu":"社员管理"},{"child":[{"appFrontIcon":"cuIcon-album","buttons":["新增","查看","修改","删除"],"menu":"社长","menuJump":"列表","tableName":"shezhang"}],"menu":"社长管理"},{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["查看","修改","删除","审核"],"menu":"社团新闻","menuJump":"列表","tableName":"shetuanxinwen"}],"menu":"社团新闻管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","修改","删除","查看评论"],"menu":"社团介绍","menuJump":"列表","tableName":"shetuanjieshao"}],"menu":"社团介绍管理"},{"child":[{"appFrontIcon":"cuIcon-attentionfavor","buttons":["查看","修改","删除"],"menu":"社团加入","menuJump":"列表","tableName":"shetuanjiaru"}],"menu":"社团加入管理"},{"child":[{"appFrontIcon":"cuIcon-news","buttons":["查看","修改","删除","审核"],"menu":"活动申请","menuJump":"列表","tableName":"huodongshenqing"}],"menu":"活动申请管理"},{"child":[{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"社员缴费","menuJump":"列表","tableName":"sheyuanjiaofei"}],"menu":"社员缴费管理"},{"child":[{"appFrontIcon":"cuIcon-goodsnew","buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"校园新闻","tableName":"news"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-paint","buttons":["查看"],"menu":"社团新闻列表","menuJump":"列表","tableName":"shetuanxinwen"}],"menu":"社团新闻模块"},{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["查看","查看评论","加入"],"menu":"社团介绍列表","menuJump":"列表","tableName":"shetuanjieshao"}],"menu":"社团介绍模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-attentionfavor","buttons":["查看"],"menu":"社团加入","menuJump":"列表","tableName":"shetuanjiaru"}],"menu":"社团加入管理"},{"child":[{"appFrontIcon":"cuIcon-news","buttons":["查看","支付"],"menu":"社员缴费","menuJump":"列表","tableName":"sheyuanjiaofei"}],"menu":"社员缴费管理"},{"child":[{"appFrontIcon":"cuIcon-favor","buttons":["查看"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-paint","buttons":["查看"],"menu":"社团新闻列表","menuJump":"列表","tableName":"shetuanxinwen"}],"menu":"社团新闻模块"},{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["查看","查看评论","加入"],"menu":"社团介绍列表","menuJump":"列表","tableName":"shetuanjieshao"}],"menu":"社团介绍模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"社员","tableName":"sheyuan"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["查看","修改","删除"],"menu":"社员","menuJump":"列表","tableName":"sheyuan"}],"menu":"社员管理"},{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["新增","查看","修改","删除"],"menu":"社团新闻","menuJump":"列表","tableName":"shetuanxinwen"}],"menu":"社团新闻管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["新增","查看","修改","删除","查看评论"],"menu":"社团介绍","menuJump":"列表","tableName":"shetuanjieshao"}],"menu":"社团介绍管理"},{"child":[{"appFrontIcon":"cuIcon-attentionfavor","buttons":["查看","审核"],"menu":"社团加入","menuJump":"列表","tableName":"shetuanjiaru"}],"menu":"社团加入管理"},{"child":[{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"活动申请","menuJump":"列表","tableName":"huodongshenqing"}],"menu":"活动申请管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-paint","buttons":["查看"],"menu":"社团新闻列表","menuJump":"列表","tableName":"shetuanxinwen"}],"menu":"社团新闻模块"},{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["查看","查看评论","加入"],"menu":"社团介绍列表","menuJump":"列表","tableName":"shetuanjieshao"}],"menu":"社团介绍模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"社长","tableName":"shezhang"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
