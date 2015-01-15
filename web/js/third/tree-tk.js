// JavaScript Document
//tree
function  initTree(){
	var  setting = {
			    			/*check : {
			    				enable : true,
			    				chkStyle: "checkbox",
			    				chkboxType: {"Y":"ps","N":"ps"}
			    			}*/
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
			      var zNodes=[{departId:1,name:"java",superId:0},
								  {departId:2,name:"MAVA第一章",superId:1},
									  {departId:3,name:"AVA重点一",superId:2},
									  {departId:4,name:"AVA重点二",superId:2},
									  {departId:5,name:"AVA重点三",superId:2},	
								  {departId:6,name:"MAVA第二章",superId:1},
								  {departId:7,name:"MAVA第三章",superId:1},
								  {departId:8,name:"MAVA第四章",superId:1},
								 
								{departId:9,name:"PHP",superId:0},
								  {departId:10,name:"PHP第一章",superId:9},	
								  {departId:11,name:"PHP第二章",superId:9},
								  {departId:12,name:"PHP第三章",superId:9},
								  {departId:13,name:"PHP第四章",superId:9},
								  {departId:14,name:"PHP第五章",superId:9},
								  {departId:15,name:"PHP第六章",superId:9},
								  
								{departId:16,name:"photoshop",superId:0},
								  {departId:17,name:"题库管理",superId:16},	
								  {departId:18,name:"试卷管理",superId:16},
								  {departId:19,name:"考试安排",superId:16},
								  {departId:20,name:"阅卷管理",superId:16},
								  {departId:21,name:"成绩管理",superId:16},
								  {departId:22,name:"学习安排",superId:16},
								  {departId:23,name:"准考证管理",superId:16},
								
								{departId:24,name:"asp",superId:0},
								  {departId:25,name:"培训课程设计",superId:24},	
								  {departId:26,name:"培训课程报名记录",superId:24},
								  {departId:27,name:"培训课程作业",superId:24},
								  {departId:28,name:"课程培训记录",superId:24},
								  
								{departId:29,name:"dreamweaver",superId:0},
								  {departId:30,name:"学员基础信息",superId:29},	
								  {departId:31,name:"学员考试信息",superId:29},
								  {departId:32,name:"学员培训信息",superId:29},
								  {departId:33,name:"订单查询",superId:29},

								  ];
								  
					
					
					var zNodesb=[{departId:1,name:"java培训一班",superId:0},
								  {departId:2,name:"王一",superId:1},	
								  {departId:3,name:"王二",superId:1},
								  {departId:4,name:"王三",superId:1},
								 
								{departId:5,name:"java培训二班",superId:0},
								  {departId:6,name:"张一",superId:5},	
								  {departId:7,name:"张二",superId:5},
								  {departId:8,name:"张三",superId:5},
								  {departId:9,name:"张思",superId:5},

								  ];
					
								  
								  	 
				  $.fn.zTree.init($("#treeDemo"), setting, zNodes);
				  var treeObj = $.fn.zTree.getZTreeObj("treeDemo");
				  
				  var rootNode = treeObj.getNodeByParam("departId", 1);
				  treeObj.expandNode(rootNode,true,false); 
				  
				  
				  
				  $.fn.zTree.init($("#treeDemo1"), setting, zNodes);
				  var treeObj1 = $.fn.zTree.getZTreeObj("treeDemo1");
				  
				  $.fn.zTree.init($("#treeDemo2"), setting, zNodes);
				  var treeObj2 = $.fn.zTree.getZTreeObj("treeDemo2");	
	  
				  
				  
				  
				
};




$(document).ready(function(){  
	   
	 //初始化树  
	 initTree();

});