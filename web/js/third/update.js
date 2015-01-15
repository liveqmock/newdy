// JavaScript Document
//初始化上传图片
function initUploadIcon(){
    $(".ajax-upload-dragdrop").remove();
    $(".ajax-file-upload-statusbar").remove();
    $(".selContainer").remove();
    $(".ajax-file-upload").remove();
    $("#singleupload").uploadFile({
        showDone:false,
        showAbort:false,
        showProgress:false,
        url:'',
       
        dragDropStr:"",
        allowedTypes:"png,gif,jpg,jpeg",
        showStatusAfterSuccess:false,
        onSuccess:function(files,data,xhr){
            
        },
        onError: function(files,status,errMsg){

        },
        afterUploadAll:function()
        {

        }
    });

	
};



function initUploadIcon0(){
    $(".ajax-upload-dragdrop").remove();
    $(".ajax-file-upload-statusbar").remove();
    $(".selContainer").remove();
    $(".ajax-file-upload").remove();
    $("#singleupload0").uploadFile({
        showDone:false,
        showAbort:false,
        showProgress:false,
        url:'',
       
        dragDropStr:"",
        allowedTypes:"png,gif,jpg,jpeg",
        showStatusAfterSuccess:false,
        onSuccess:function(files,data,xhr){
            
        },
        onError: function(files,status,errMsg){

        },
        afterUploadAll:function()
        {

        }
    });

	
};






$(document).ready(function(){     
	 initUploadIcon();	
	 initUploadIcon0();	
		
	});