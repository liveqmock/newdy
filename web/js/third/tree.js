// JavaScript Document
//tree
function  initTree(){
	var  setting = {
			    			check : {
			    				enable : true,
			    				chkStyle: "checkbox",
			    				chkboxType: {"Y":"ps","N":"ps"}
			    			},
				    		view: {
								dblClickExpand: true
							},
							data: {
								simpleData: {
									enable: true,
									idKey: "departId",
									pIdKey: "superId",
									rootPId: 0
								}
							}				
					};
			      var zNodes=[{departId:1,name:"系统管理",superId:0},
								  {departId:2,name:"角色管理",superId:1},
									  {departId:3,name:"增加",superId:2},
									  {departId:4,name:"删除",superId:2},
									  {departId:5,name:"修改",superId:2},	
								  {departId:6,name:"用户管理",superId:1},
								  {departId:7,name:"组织结构",superId:1},
								  {departId:8,name:"系统配置",superId:1},
								 
								{departId:9,name:"资源中心",superId:0},
								  {departId:10,name:"资源分类",superId:9},	
								  {departId:11,name:"资源管理",superId:9},
								  {departId:12,name:"学习资源管理",superId:9},
								  {departId:13,name:"报告管理",superId:9},
								  {departId:14,name:"资讯类管理",superId:9},
								  {departId:15,name:"讲师资源",superId:9},
								  
								{departId:16,name:"考试管理",superId:0},
								  {departId:17,name:"题库管理",superId:16},	
								  {departId:18,name:"试卷管理",superId:16},
								  {departId:19,name:"考试安排",superId:16},
								  {departId:20,name:"阅卷管理",superId:16},
								  {departId:21,name:"成绩管理",superId:16},
								  {departId:22,name:"学习安排",superId:16},
								  {departId:23,name:"准考证管理",superId:16},
								
								{departId:24,name:"培训管理",superId:0},
								  {departId:25,name:"培训课程设计",superId:24},	
								  {departId:26,name:"培训课程报名记录",superId:24},
								  {departId:27,name:"培训课程作业",superId:24},
								  {departId:28,name:"课程培训记录",superId:24},
								  
								{departId:29,name:"学员管理",superId:0},
								  {departId:30,name:"学员基础信息",superId:29},	
								  {departId:31,name:"学员考试信息",superId:29},
								  {departId:32,name:"学员培训信息",superId:29},
								  {departId:33,name:"订单查询",superId:29},

								  ];
	  
								  	 
				  $.fn.zTree.init($("#treeDemo"), setting, zNodes);
				  var treeObj = $.fn.zTree.getZTreeObj("treeDemo");
				  
				  var rootNode = treeObj.getNodeByParam("departId", 1);
				  treeObj.expandNode(rootNode,true,false); 				  
			  
				  
				 // var rootNode = treeObj.getNodeByParam("departId", 1);
				  //treeObj.expandNode(rootNode,true,false); 
};




$(document).ready(function(){  
	   
	 //初始化树  
	 initTree();
	 $("#xl").hide();
	 $("#selbut").click(function(){
			$("#xl").toggle();
		});
	 $("#cancel").click(function(){
			$("#xl").hide();
		});

});