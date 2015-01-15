// JavaScript Document
$(document).ready(function(e) {
	// var $ = jQuery.noConflict();
    initTopMenu();

   var winHeight=$(window).height()-78;
   $('.main').height(winHeight);
   $('iframe').height(winHeight-40)
   $(window).resize(function(){
   var winHeight=$(window).height()-78;
   $('.main').height(winHeight);
   $('iframe').height(winHeight-40)
	   })
   show4('.Lframe dl dt');
   show4('.Lframe dl dd ul>li h4');
function show4(THIS){
	$(document).on("click",THIS,function(){
		var url = $(this).attr("urls") ;
		if(typeof(url)!='undefined' && url!=null && url!='null' && url.indexOf("/") >-1){
			$("#indexIframe").attr("src",url);
		}
		$(this).parent().addClass('show').siblings().removeClass('show');
	   })
	}
	show2('.Lframe dl .btn','click');
    show2('.Lframe dl dd ul>li ol li','show');
function show2(THIS,CLASS){
	$(document).on("click",THIS,function(){
		$(this).addClass(CLASS).siblings().removeClass(CLASS);
	});
	}
  /* $('.Lframe dl #btn1').click(function(){
	   $('.Lframe').animate({'left':-200},500);
	   $('.Rframe').addClass('click');
	   $('#btn2').show();
	   $(this).hide();
	  // $(this).html('<div id="aa"></div>')
	   })
   $('.Lframe dl #btn2').click(function(){
	   $('.Lframe').animate({'left':0},500);
	   $('.Rframe').removeClass('click');
	   $('#btn1').show();
	   $(this).hide();
	  // $(this).html('<div id="aa"></div>')
	   })          */
	/*$('div').delegate('#aa','click',function(){
	   $('.Lframe').animate({'left':200},500);
	   $('.Rframe').removeClass('click');
	   $('#aa').hide();
		});*///解决动态数据无法绑定事件的bug； 
		
	   $(document).on("click",'.menu ul li a',function(){
	   
	   $(this).addClass('click');
	   var url=$(this).attr("urls");
	   //判断顶级是否为根节点,如果是根节点就没有左侧菜单
	   if(url!=null && url.indexOf("leftMenu")<0){
		   $("#indexIframe").attr("src",url);
	   }else{
		   $("#indexIframe").attr("src","");
	   }
	   //不是根节点就有左侧菜单
	   var parentId=$(this).attr("pid");
	   $(".Lframe").html("");
	   $.ajax({url:contextPath+url+'&parentid='+parentId,dataType:'json',async:false,
              success:function(data){
               		$(".Lframe").html(data.data);
             	}
       	});
		//top menu
	   	$(this).parent().siblings().find('a').removeClass('click');
	   
	   })
	if($('.layer .window').height()>$(window).height()){
		$('.layer .window').height($(window).height()-50);
		$('.layer .window').css('overflow-y','scroll');
		}
		
number(20)//在这里传参

//这里是我封装的函数，所有的js都在里面
function number(NUM){
	var number=NUM;
	
	//这段话是循环li的，如果你要在li上加功能，需要直接循环出来。
	var txt='';
		txt+='<ul><div class="Lbtn">上一页</div><li class="click">1</li><span>……</span>'
		for(var i=2;i<number-1;i++){
			txt+='<li>'+i+'</li>'
			}
		txt+='<span>……</span>';
		txt+='<li>'+number+'</li>'
		txt+='<div class="Rbtn">下一页</div></ul></div>'
	$('.Bnav').html(txt);
		
		
		
	var page=0;
	var Sindex=$('.Bnav ul span').index($(this));
	var Plength=$('.Bnav ul li').length;
	var li=$('.Bnav ul li');
	var span=$('.Bnav ul span');
	var Pindex=$('.Bnav ul li').index($(this));
	var index1=0;
	
	li.hide();
	span.first().hide();
	li.eq(Plength-1).show();
	for(var i=0;i<5;i++){
		li.eq(i).show();
		}//默认样式
		
		
	li.click(function(){
		Pindex=li.index($(this));
		nav(Pindex)
		})//点击导航
	$('.Bnav ul .Lbtn').click(function(){
		if(Pindex>0)
		Pindex--;
		nav(Pindex)
		})//这个是左部按钮点击
	$('.Bnav ul .Rbtn').click(function(){
		if(Pindex==-1){Pindex=0}
		if(Pindex<Plength-1)
		Pindex++;
		nav(Pindex)
		})//右部按钮点击
		
	function nav(Pindex){//封装函数（定义了三种状态）
		li.eq(Pindex).addClass('click').siblings().removeClass('click');//这句是为li添加点击的效果
		if(Pindex<4){//第一种状态，当前选中按钮小于5的时候
			li.hide();
			span.show();
			span.first().hide();
			li.eq(Plength-1).show();
			for(var i=0;i<5;i++){
				li.eq(i).show();
				}
			}else{
				if(Pindex>3){//第二种状态，当前选中按钮大于5并且小于倒第5个数的时候
					span.show();
					li.hide();
					li.first().show();
					li.eq(Plength-1).show();
					li.eq(Pindex).show();
					li.eq(Pindex-1).show();
					li.eq(Pindex-2).show();
					li.eq(Pindex+2).show();
					li.eq(Pindex+1).show();
					if(Pindex>Plength-5){//第三种状态，最后5个数
						li.hide();
						span.hide();
						span.first().show();
						li.first().show();
						for(var i=Plength-1;i>Plength-6;i--){
							li.eq(i).show();
							}
						}
					}
				}
		}
	}
//导航栏兼容模式
var navpage=0;
$('.menu .nav .leftbtn').click(function(){
	if(navpage>0){
		navpage--;
		}
	navfun(navpage);
	})	
$('.menu .nav .rightbtn').click(function(){
	if(navpage<$('.menu .window .ceng li').length-5){
		navpage++;
		}
	navfun(navpage);
	})	
function navfun(index){
	$('.menu .window .ceng').animate({'margin-left':-navpage*116},500)
	}
	
//下拉菜单背景变白
$('.selectui ul').css('background','#fff');
	
	
});
function addtr(CLASS){
		var trhtml=$(CLASS).parent().parent().html();
		$(CLASS).parent().parent().parent().append('<tr>'+trhtml+'</tr>');
		}
function show1(CLASS){
	$('.layer').show();
	$('.layer').find(CLASS).show().siblings().hide();
	$(window).resize(function(){
		if($('.layer .window').height()>$(window).height()){
			$('.layer .window').height($(window).height()-50);
			$('.layer .window').css('overflow-y','scroll')
			}
		$('.layer .window').css('margin-top',($(window).height()-$('.layer .window').height())/2)
		})
	$('.layer .title span,input[value="关闭"]').click(function(){
		$('.layer').hide();
		})
	if($('.layer .window').height()>$(window).height()){
		$('.layer .window').height($(window).height()-50);
		$('.layer .window').css('overflow-y','scroll')
		}
	$('.layer .window').css('margin-top',($(window).height()-$('.layer .window').height())/2)
	}
