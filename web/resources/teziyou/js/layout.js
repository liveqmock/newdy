// JavaScript Document
$(window).resize(function () {
    resetHeight();
});
function resetHeight() {
    var winHeight = $(window).height() - 100;
    $('.main').height(winHeight);
    $('#rightDiv').height(winHeight - 35);
}

function show(THIS) {
    $(THIS).click(function () {
        $(this).parent().addClass('show').siblings().removeClass('show');
    });
}


function show2(THIS, CLASS) {
    $(THIS).click(function () {
        $(this).addClass(CLASS).siblings().removeClass(CLASS);
    });
}

function init() {
    $('.Lframe dl #btn1').click(function () {
        $('.Lframe').animate({'left': -200}, 500);
        $('.Rframe').animate({'margin-left': 20}, 500);
        $('#tnavBar').animate({'margin-left': 0}, 500);

        //$('.Rframe').addClass('click');
        $('#btn2').show();
        $(this).hide();
        // $(this).html('<div id="aa"></div>')
    });
    $('.Lframe dl #btn2').click(function () {
        $('.Lframe').animate({'left': 0}, 500);
        $('.Rframe').animate({'margin-left': 220}, 500);
        $('#tnavBar').animate({'margin-left': 200}, 500);
        //$('.Rframe').removeClass('click');
        $('#btn1').show();
        $(this).hide();
        // $(this).html('<div id="aa"></div>')
    });
    /*$('div').delegate('#aa','click',function(){
     $('.Lframe').animate({'left':200},500);
     $('.Rframe').removeClass('click');
     $('#aa').hide();
     });*///解决动态数据无法绑定事件的bug；
    $('.menu ul li a').click(function () {
        $(this).addClass('click');
        $(this).parent().siblings().find('a').removeClass('click');
    });
}

