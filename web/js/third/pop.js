/*user basic information*/
function  initDialog(){
	$("#dialog" ).dialog({
		   resizable: false,
		   width:700,
		   height:460,
		   draggable:false,		  
		   modal: true,
		   title:"用户基本信息",
		   buttons: {
					
				"取消": function() {
					$(this).dialog("close");
			    }
		   }
	 });	
};

/*system menu add*/
function cdmenuDialog() {
    $("#cdmenudialog").dialog({
        resizable: false,
        width: 700,
        height: 400,
        draggable: false,
        modal: true,
        title: "添加",
        buttons: {
            "保存": function () {

                var menuName = $("#menuNameAdd").val();
                if(menuName==''){
                    alert("菜单名称不能为空!");
                    return;
                }

                var orderNum = $("#orderNumAdd").val();
                if (orderNum == '') {
                    alert("排列序号不能为空!");
                    return;
                }


                 var params = $("#addMenuForm").serialize();
                //*   //请求子节点
                $.ajax({
                    url: "/menu/add",
                    type: 'post',
                    dataType: 'json',
                    data: params,
                    error: function () {
                        alert('error');
                    },
                    success: function (data) {
                        if (data.code == 200) {
                            $("#cdmenudialog").dialog("close");
                            queryResult();
                            alert("新增成功");
                        }else if(data.code==202){
                            alert("同级菜单下排列序号已存在!");
                        }else{
                            alert("未知错误,请联系管理员!");
                        }
                    }
                });
            },

            "取消": function () {
                $(this).dialog("close");
            }
        }
    });
};


/*editor*/
function  editorDialog(){
	$("#editordialog" ).dialog({
		   resizable: false,
		   width:700,
		   height:320,
		   draggable:false,		  
		   modal: true,
		   title:"批量修改",
		   buttons: {
				"保存": function() {	
				    //save();
				},
			   "重置": function() {	
				   // reset();
			    },	
				"取消": function() {
					$(this).dialog("close");
			    }
		   }
	 });	
};


/*see*/
function  seeDialog(){
	$("#seedialog" ).dialog({
		   resizable: false,
		   width:700,
		   height:540,
		   draggable:false,		  
		   modal: true,
		   title:"计算机初级培训课程",
		   buttons: {
					
				"取消": function() {
					$(this).dialog("close");
			    }
		   }
	 });	
};


/*Pay to modify*/
function  payDialog(){
	$("#paydialog").dialog({
		   resizable: false,
		   width:700,
		   height:540,
		   draggable:false,		  
		   modal: true,
		   title:"编辑",
		   buttons: {
				"保存": function() {	
				   // save();
				},
			   "重置": function() {	
				   // reset();
			    },	
				"取消": function() {
					$(this).dialog("close");
			    }
		   }
	 });	
};

function  paybDialog(){
	$("#paydialogb" ).dialog({
		   resizable: false,
		   width:700,
		   height:540,
		   draggable:false,		  
		   modal: true,
		   title:"编辑",
		   buttons: {
				"保存": function() {	
				    //save();
				},
			   "重置": function() {	
				    //reset();
			    },	
				"取消": function() {
					$(this).dialog("close");
			    }
		   }
	 });	
};

function  paycDialog(){
	$("#paydialogc" ).dialog({
		   resizable: false,
		   width:700,
		   height:540,
		   draggable:false,		  
		   modal: true,
		   title:"编辑",
		   buttons: {
				"保存": function() {	
				    //save();
				},
			   "重置": function() {	
				    //reset();
			    },	
				"取消": function() {
					$(this).dialog("close");
			    }
		   }
	 });	
};

//set_index add
function  setaddDialog(){
    $("#picuploadUrl").val(""); $("#uploadpicfileName").val("");
    $("uploadhomepic").attr("src",basepath+'/images/img4.jpg');
	$("#setadddialogc" ).dialog({
		   resizable: false,
		   width:700,
		   height:220,
		   draggable:false,		  
		   modal: true,
        close: function(event, ui) {  $("#picuploadUrl").val(""); $("#uploadpicfileName").val("");
            $("#uploadhomepic").attr("src",basepath+'/images/img4.jpg');
        },
		   title:"添加",
		   buttons: {
				"保存并发布": function() {	
				   // save();
                    $.ajax({
                        url:basepath+"/homepic/addsave",
                        type: "post",
                        dataType: "json",
                        data:{uploadPicFileName:jQuery.trim($("#uploadpicfileName").val()),
                            fileUrl:jQuery.trim($("#picuploadUrl").val()),
                            fileStatus:'S'
                        },
                        async: false,
                        success: function (data) {
                            if (data.code != "200") {
                                alert("保存并发布"+data.msg);
                                return;
                            } else {
                                alert("保存并发布"+data.msg);
                                $("#picuploadUrl").val(""); $("#uploadpicfileName").val("");
                                $("#uploadhomepic").attr("src",basepath+'/images/img4.jpg');
                                var file = $("#picture")
                                file.after(file.clone().val(""));
                                file.remove();
                                window.location.href=basepath+"/homepic/list";
                            }
                        }
                    });
				},
			   "保存": function() {	
				    //save();

                   $.ajax({
                       url:basepath+"/homepic/addsave",
                       type: "post",
                       dataType: "json",
                       data:{uploadPicFileName:jQuery.trim($("#uploadpicfileName").val()),
                           fileUrl:jQuery.trim($("#picuploadUrl").val()),
                           fileStatus:'H'
                       },
                       async: false,
                       success: function (data) {
                           if (data.code != "200") {
                               alert("保存"+data.msg);
                               return;
                           } else {
                               alert("保存"+data.msg);
                               $("#picuploadUrl").val(""); $("#uploadpicfileName").val("");
                               $("#uploadhomepic").attr("src",basepath+'/images/img4.jpg');
                               var file = $("#picture")
                               file.after(file.clone().val(""));
                               file.remove();
                               window.location.href=basepath+"/homepic/list";
                           }
                       }
                   });

			    },	
				"取消": function() {
                    $("#picuploadUrl").val(""); $("#uploadpicfileName").val("");
                    $("#uploadhomepic").attr("src",basepath+'/images/img4.jpg');
					$(this).dialog("close");
			    }
		   }
	 });	
};

/*homework add*/
function  homeworkDialog(){
    $("#homeworkdialog" ).dialog({
        resizable: false,
        width:800,
        height:500,
        draggable:false,
        modal: true,
        title:"添加作业",
        buttons: {
            "保存": function() {
                var boolean=false;

                var str ='';//非空提示
                if($("#courseId1").val()==''){
                    $("#courseId1").css("border","1px solid red")
                    str+="课程"
                }else{
                    $("#courseId1").css("border","1px solid #ccc")
                }
                if(
                $("#addhomeworkName").val()==''){
                    $("#addhomeworkName").css("border","1px solid red")
                    if(str!='')str+='、'
                    str+="作业名称"
                    }else{
                    $("#addhomeworkName").css("border","1px solid #ccc")
                }
                if(
                $("#addhomeworkdesc").val()==''){
                    $("#addhomeworkdesc").css("border","1px solid red")
                    if(str!='')str+='、'
                    str+="作业描述"
                    }else{
                    $("#addhomeworkdesc").css("border","1px solid #ccc")
                }

               /* if(
                $("#homeworkfilename").val()==''){
                    $("#homeworkfilename").css("border","1px solid red")
                    if(str!='')str+='、'
                    str+="作业附件"
                }else{
                    $("#homeworkfilename").css("border","1px solid #ccc")
                }*/
if(str!=''){
    alert(str+="不能为空")
    boolean=true
}
                if(boolean){

                }else{
                    //ajax 提交workSet的数据


                    var param=$("#doAddWorkSetForm").serialize();
                    var url=$("#doAddWorkSetForm").attr("action")

                    $.ajax({
                        url:url,
                        type: "post",
                        dataType: "json",
                        data:param,
                        async: false,
                        success: function (data) {
                            if (data.code != "200") {
                                alert("保存并发布"+data.msg);
                                return;
                            } else {
                                alert("保存并发布"+data.msg);

                                var file = $("#picture")
                                file.after(file.clone().val(""));
                                file.remove();

                                $("#textTree2").val("请选择")
                                window.location.href=basepath+"/homework/list";
                            }
                        }
                    });

                }


            },
            "重置": function() {
                $("#doAddWorkSetForm")[0].reset()
                var file = $("#picture")
                file.after(file.clone().val(""));
                file.remove();

            },
            "取消": function() {
                $(this).dialog("close");
                $("#textTree2").val("请选择")
                $("#homeworkfilename").css("border","1px solid #ccc")
                $("#addhomeworkdesc").css("border","1px solid #ccc")
                $("#addhomeworkName").css("border","1px solid #ccc")
                $("#courseId1").css("border","1px solid #ccc")

            }
        }
    });
};

/*homework edit*/
function  edithomeworkDialog(){
    $("#homeworkdialog" ).dialog({
        resizable: false,
        width:800,
        height:500,
        draggable:false,
        modal: true,
        title:"编辑作业",
        buttons: {
            "保存": function() {
                var boolean=false;

                var str ='';//非空提示
                if($("#courseId1").val()==''){
                    $("#courseId1").css("border","1px solid red")
                    str+="课程"
                }else{
                    $("#courseId1").css("border","1px solid #ccc")
                }
                if(
                    $("#addhomeworkName").val()==''){
                    $("#addhomeworkName").css("border","1px solid red")
                    if(str!='')str+='、'
                    str+="作业名称"
                }else{
                    $("#addhomeworkName").css("border","1px solid #ccc")
                }
                if(
                    $("#addhomeworkdesc").val()==''){
                    $("#addhomeworkdesc").css("border","1px solid red")
                    if(str!='')str+='、'
                    str+="作业描述"
                }else{
                    $("#addhomeworkdesc").css("border","1px solid #ccc")
                }


                if(str!=''){
                    alert(str+="不能为空")
                    boolean=true
                }
                if(boolean){

                }else{
                    //ajax 提交workSet的数据


                    var param=$("#doAddWorkSetForm").serialize();
                    var url=$("#doAddWorkSetForm").attr("action")

                    $.ajax({
                        url:url,
                        type: "post",
                        dataType: "json",
                        data:param,
                        async: false,
                        success: function (data) {
                            if (data.code != "200") {
                                alert("保存并发布"+data.msg);
                                return;
                            } else {
                                alert("保存并发布"+data.msg);

                                var file = $("#picture")
                                file.after(file.clone().val(""));
                                file.remove();

                                $("#textTree2").val("请选择")
                                window.location.href=basepath+"/homework/list";

                                $("#doAddWorkSetForm")[0].reset()
                                var file = $("#picture")
                                file.after(file.clone().val(""));
                                file.remove();

                            }
                        }
                    });

                }


            },
            "重置": function() {
                $("#doAddWorkSetForm")[0].reset()
                var file = $("#picture")
                file.after(file.clone().val(""));
                file.remove();

            },
            "取消": function() {
                $(this).dialog("close");
                $("#textTree2").val("请选择")
                $("#homeworkfilename").css("border","1px solid #ccc")
                $("#addhomeworkdesc").css("border","1px solid #ccc")
                $("#addhomeworkName").css("border","1px solid #ccc")
                $("#courseId1").css("border","1px solid #ccc")

            }
        }
    });
};



//set_index add
function  appsetaddDialog(){
    $("#picuploadUrl").val(""); $("#uploadpicfileName").val("");
    $("uploadhomepic").attr("src",basepath+'/images/img4.jpg');
    $("#appsetadddialogc" ).dialog({
        resizable: false,
        width:700,
        height:220,
        draggable:false,
        modal: true,
        close: function(event, ui) {  $("#picuploadUrl").val(""); $("#uploadpicfileName").val("");
            $("#uploadhomepic").attr("src",basepath+'/images/img4.jpg');
        },
        title:"添加",
        buttons: {
            "保存并发布": function() {
                // save();
                $.ajax({
                    url:basepath+"/appbase/addpicsave",
                    type: "post",
                    dataType: "json",
                    data:{uploadPicFileName:jQuery.trim($("#uploadpicfileName").val()),
                        fileUrl:jQuery.trim($("#picuploadUrl").val()),
                        fileStatus:'S',apptemplateId:$("#apptemplateId").val()
                    },
                    async: false,
                    success: function (data) {
                        if (data.code != "200") {
                            alert("保存并发布"+data.msg);
                            return;
                        } else {
                            alert("保存并发布"+data.msg);
                            $("#picuploadUrl").val(""); $("#uploadpicfileName").val("");
                            $("#uploadhomepic").attr("src",basepath+'/images/img4.jpg');
                            var file = $("#picture")
                            file.after(file.clone().val(""));
                            file.remove();
                            window.location.href=basepath+"/appbase/template/apppicindex?templateId="+templateId;
                        }
                    }
                });
            },
            "保存": function() {
                //save();

                $.ajax({
                    url:basepath+"/appbase/addpicsave",
                    type: "post",
                    dataType: "json",
                    data:{uploadPicFileName:jQuery.trim($("#uploadpicfileName").val()),
                        fileUrl:jQuery.trim($("#picuploadUrl").val()),
                        fileStatus:'H',apptemplateId:$("#apptemplateId").val()
                    },
                    async: false,
                    success: function (data) {
                        if (data.code != "200") {
                            alert("保存"+data.msg);
                            return;
                        } else {
                            alert("保存"+data.msg);
                            $("#picuploadUrl").val(""); $("#uploadpicfileName").val("");
                            $("#uploadhomepic").attr("src",basepath+'/images/img4.jpg');
                            var file = $("#picture")
                            file.after(file.clone().val(""));
                            file.remove();
                            window.location.href=basepath+"/appbase/template/apppicindex?templateId="+templateId;
                        }
                    }
                });

            },
            "取消": function() {
                $("#picuploadUrl").val(""); $("#uploadpicfileName").val("");
                $("#uploadhomepic").attr("src",basepath+'/images/img4.jpg');
                $(this).dialog("close");
            }
        }
    });
};


/*course_add add*/
function  courseDialog(){
	$("#coursedialog").dialog({
		   resizable: false,
		   width:700,
		   height:540,
		   draggable:false,		  
		   modal: true,
		   title:"添加资源",
		   buttons: {
				"保存": function() {	
				    
				},
			   "重置": function() {	
				    
			    },	
				"取消": function() {
					$(this).dialog("close");
			    }
		   }
	 });	
};


/*audit*/
function  auditDialog(){
	$("#auditdialog").dialog({
		   resizable: false,
		   width:700,
		   height:290,
		   draggable:false,		  
		   modal: true,
		   title:"审核",
		   buttons: {
				"保存": function() {	
				    
				},
			   "重置": function() {	
				    
			    },	
				"取消": function() {
					$(this).dialog("close");
			    }
		   }
	 });	
};


/*system role_add*/
function  roleDialog(){
	$("#roledialog" ).dialog({
		   resizable: false,
		   width:800,
		   height:460,
		   draggable:false,		  
		   modal: true,
		   title:"添加角色",
		   buttons: {
			   "保存": function() {
                   //把选中的菜单ID放入隐藏域中
                   var tree = $.fn.zTree.getZTreeObj("treeDemo");
                   var nodes = tree.getCheckedNodes(true);
                   var tmp = "";
                   var tmpId = "";
                   $.each(nodes, function (i, item) {
                       if (item.isParent == false) {
                           tmp += item.name + ";";
                           tmpId += item.id + ";"
                       }
                   });
                   tmp = tmp.substring(0, tmp.length - 1);
                   tmpId = tmpId.substring(0, tmpId.length - 1);
                   //存放菜单名字
                   $("#roleFunction").val(tmp);
                   //存放菜单ID
                   $("#menuid").val(tmpId);
                   if($("#addRoleName").val()==''){
                       alert('角色名称不能为空');
                       return;
                   }

                   //提交表单
                   var params = $("#queryForm1").serialize();
                   $.ajax({
                       url: "/system/insert",
                       type: 'post',
                       dataType: 'json',
                       data: params,
                       error: function () {
                           alert('error');
                       },
                       success: function (data) {
                           if(data.code==200){
                               alert("保存成功");
                               $("#roledialog").dialog("close");
                               queryResult();
                           }
                       }
                   });
				},
			   /*"重置": function() {
				    
			    },*/
				"取消": function() {
					$(this).dialog("close");
			    }
		   }
	 });	
};

/*system_terminal check*/
function  checkDialog(){
	$("#checkdialog" ).dialog({
		   resizable: false,
		   width:800,
		   height:460,
		   draggable:false,		  
		   modal: true,
		   title:"核对个人信息",
		   buttons: {								
				"取消": function() {
					$(this).dialog("close");
			    }
		   }
	 });	
};

/*announcement_management add*/



/*announcement_information object*/


/*statistical*/
function  statisticalDialog(){
	$("#statisticaldialog" ).dialog({
		   resizable: false,
		   width:700,
		   height:540,
		   draggable:false,
		   modal: true,
		   title:"当前学习人数",
		   buttons: {

				"取消": function() {
					$(this).dialog("close");
			    }
		   }
	 });
};

/*statistical_learn*/
function  learnDialog(){
	$("#learndialog" ).dialog({
		   resizable: false,
		   width:700,
		   height:540,
		   draggable:false,
		   modal: true,
		   title:"参加课程",
		   buttons: {

				"取消": function() {
					$(this).dialog("close");
			    }
		   }
	 });
};

function  buyDialog(){
	$("#buydialog" ).dialog({
		   resizable: false,
		   width:700,
		   height:540,
		   draggable:false,
		   modal: true,
		   title:"购买课程",
		   buttons: {

				"取消": function() {
					$(this).dialog("close");
			    }
		   }
	 });
};

function checkpropertyName(name,id){
    $.ajax({
        url: "/system/doCheckPropertyName",
        type: 'post',
        dataType: 'json',
        data:{name:name,id:id},
        error: function () {

            alert('error');
        },
        success: function (data) {
            if(data.code==200){
                isExistName=false;
            }else{

                isExistName=true;
                alert(data.msg)
            }
        }
    });
}

/*system parameter add*/
function  parameterDialog(){
    $("#propertyAddForm").prop("action",basePath+'/system/propertyAdd')
    var isboolean=false;
    //校验参数名称是否存在









    $("#parameterdialog" ).dialog({
        resizable: false,
        width:800,
        height:270,
        draggable:false,
        modal: true,
        title:"添加",
        buttons: {
            "保存": function() {


                if(jQuery.trim($("#propertyName"))!=''&&!isExistName){

                $("#propertyAddForm").submit();
                }else{
                    alert("名称不能为空或名称已存在")
                }
            },
            "重置": function() {
                document.getElementById("propertyAddForm").reset();
               // $("#propertyAddForm").reset
            },
            "取消": function() {
                $(this).dialog("close");

               $("#propertyName").val('');
               $("#propertyValue").val('');

            }
        }
    });
};



//保存新添加用户信息
function save(){
   /* if ($("#formDialog").validate().form() == true){
	   $.post(
			  'addUser.action',
			  $("#formDialog").serialize(),
			  function(data){
                if( data.result == "0000"){
				   $("#dialog" ).dialog("close");				  
                }else{
                   MessageBox.alert(data.result);
                }
		     }
	    );
   } */
};
function  reset(){
	$("#formDialog label.error").remove();
};

/*assign roles*/
function announcementDialog(userIds) {
    $("#announcementdialog").dialog({
        resizable: false,
        width: 800,
        height: 300,
        draggable: false,
        modal: true,
        title: "分配角色",
        buttons: {
            "保存": function () {
                var roleIds = "";
                $("input[name='roleIds']").each(function (i, item) {
                    if (item.checked) {
                        roleIds += this.value + ',';
                    }
                });
                roleIds = roleIds.substring(0, roleIds.length - 1);
                if (roleIds == "") {
                    alert("角色不能为空");
                }else{
                    $.ajax({
                        url: '/system/updateRole',
                        type: 'post',
                        dataType: 'json',
                        data: {roleIds: roleIds, userIds: userIds},
                        error: function () {
                            alert('error');
                        },
                        success: function (data) {
                            if (data.code == 200) {
                                alert("角色分配成功");
                                $("#announcementdialog").dialog("close");
                            } else {
                                alert("操作失败,请联系管理员");
                            }
                        }
                    });
                }


            },
           /* "重置": function () {

            },*/
            "取消": function () {
                $(this).dialog("close");
            }
        }
    });
};


$(document).ready(function(){
    //courseware add
    $("#cdmenuadialog").click(function () {
        $("#orderNumAdd").val("");
        $("#menuUrl").val("");
        $("#selbut").val("选择上级菜单");
        $("#menuNameAdd").val("");
        $("#menuid").val("");
       /* var tree = $.fn.zTree.getZTreeObj("treeDemo");
       var nodes = tree.getCheckedNodes(true);
        console.log(nodes);
        if(nodes.length!=0){
            tree.cancelSelectedNode(nodes[1]);
        }*/
        //tree.checkAllNodes(false);
        cdmenuDialog();
    });

		//left-menu
		$(".left ul li a").click(function(){
			var  id = $(this).attr("id");
			var  i = id.substring(8,id.length);
			for(var j=1;j<=30;j++){
			   
			   if (i==j)
			   {
				   $("#ico-menu"+j+ " i").removeClass("ico1"+j);
                   $("#ico-menu"+j + " i").addClass("ico2"+j);
				   $("#ico-menu"+j).addClass("menu-bg");
			   }else{ 
				   $("#ico-menu"+j + " i").removeClass("ico2"+j);
				   $("#ico-menu"+j + " i").addClass("ico1"+j);
				   $("#ico-menu"+j).removeClass("menu-bg");
			   }
              

			}
	    })
		

		
		$("#divdialog").click(function(){
		   initDialog();
	    });

    $("#announcementadialog").click(function () {
        if ($("#batchForm").find("input[name=userId]:checked").size() > 0) {
            var userIds = getIds();
            announcementDialog(userIds);
        } else {
            alert('没有选中资源');
        }


    })

		//editor
		$("#bjdialog").click(function(){
		   editorDialog();
	    });
		
		//see
		$("#chkdialog").click(function(){
		   seeDialog();
	    });
    //homework add
    $("#homeworkadialog").click(function(){
        homeworkDialog();
    })


		//Pay to modify
		$("#zfbjdialog").click(function(){
		   payDialog();
	    });
		
		$("#zfbjdialogb").click(function(){
		   paybDialog();
	    });
		
		$("#zfbjdialogc").click(function(){
		   paycDialog();
	    })
		
		//set_index add
		$("#setaddadialog").click(function(){
		   setaddDialog();
	    })

    $("#appsetaddadialog").click(function(){
        appsetaddDialog();
    })
		
		//course_add add
		$("#courseadialog").click(function(){
		   courseDialog();
	    })
		
		//audit
		$("#auditadialog").click(function(){
		   auditDialog();
	    })
		
		//system role_add
		$("#roleadialog").click(function(){
		   roleDialog();
	    })
		
		//system_terminal check
		$("#checkadialog").click(function(){
		   checkDialog();
	    })
    //system parameter add
    $("#parameteradialog").click(function(){
        parameterDialog();
    })



		//statistical
		$("#statisticaladialog").click(function(){
		   statisticalDialog();
	    })
		
		//statistical_learn
		$("#learnadialog").click(function(){
		   learnDialog();
	    })

		$("#buyadialog").click(function(){
		   buyDialog();
	    })
		
		
	});


function importDialog() {
    $("#importdialog").dialog({
        resizable: false,
        width: 700,
        height: 200,
        draggable: false,
        modal: true,
        title: "导入用户",
        buttons: {
            "导入": function () {
                $("#importForm").ajaxSubmit(
                    {
                        success: (function (response) {
                            if(response.code==200){
                                alert("导入成功");
                            }
                        }),
                        dataType: 'json',//返回的数据类型
                        url: "/user/import",//表单的action
                        method: 'post'//方式
                    }
                );

            },

            "取消": function () {
                $(this).dialog("close");
            }
        }
    });
};
