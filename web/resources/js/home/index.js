ITZY.page.HomeIndex = function(){
	var minimize = function() {
		$('.btn-minimize').click(function(e){
			e.preventDefault();
			var $target = $(this).parent().parent().next('.box-content');
			if($target.is(':visible')) $('i',$(this)).removeClass('icon-chevron-up').addClass('icon-chevron-down');
			else 					   $('i',$(this)).removeClass('icon-chevron-down').addClass('icon-chevron-up');
			$target.slideToggle();
		});
	};
	
	var loadDataTables = function() {
		$('.datatable').dataTable({
			//"sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span12'i><'span12 center'p>>",
			"sDom": "<'row-fluid'<'span8'><'span4'f>r>t<'row-fluid'<'span9'l><'span3'i>r><'span12 center'p>>",
			"sPaginationType": "bootstrap",
			"sAjaxSource": "ajax",
			"bServerSide" : false,
			"sServerMethod" : "GET",
			"iDisplayLength" : 5,
			"aLengthMenu": [5, 10, 20, 40 ],
			"oLanguage": {
				"sUrl": "charisma/js/datatable.cn.txt"
			},
			
			"aoColumns": [
				{"mDataProp":"username"},
				{"mDataProp":"registerDate"},
				{"mDataProp":"rolename"},
				{"mDataProp":"state"}
//				{
//					"mDataProp":"op",
//					"sClass" : "center",
//					"fnRender" : function(obj) {
//						return '<a class="btn btn-success" href="#"><i class="icon-zoom-in icon-white"></i>View</a>' +
//							   '<a class="btn btn-info" href="#"><i class="icon-edit icon-white"></i>Edit</a>' +
//							   '<a class="btn btn-danger" href="#"><i class="icon-trash icon-white"></i>Delete</a>';
//					}
//				}
				
	        ],
	        "fnServerData": function (sUrl, aoData, fnCallback) {
	            $.ajax({
	                "url": sUrl,
	                "data": aoData,
	                "success": fnCallback,
	                "dataType": "json",
	                "cache": false
	            });
	        }
		});	
	};
	
	return {
		init: function() {
			loadDataTables();
			
			minimize();
		}
	};
}();

var me = ITZY.page.HomeIndex;

$(function(){ 
	me.init();
});