$.extend($.validator, {
	messages: {
		required: "必填项",
		remote: "Please fix this field.",//该值已存在，请修正输入
		email: "必须输入正确格式的电子邮件",
		url: "必须输入正确格式的网址",
		date: "必须输入正确格式的日期",
		dateISO: "必须输入正确格式的日期(ISO).",
		number: "必须输入合法的数字(负数，小数).",
		digits: "必须输入整数.",
		creditcard: "必须输入合法的信用卡号",
		equalTo: "输入值必须和#field相同",
		accept: "输入拥有合法后缀名的字符串（上传文件的后缀）",
		maxlength: $.validator.format("输入长度最多是{0}的字符串(汉字算一个字符)"),
		minlength: $.validator.format("输入长度最小是{0}的字符串(汉字算一个字符)."),
		rangelength: $.validator.format("输入长度必须介于{0}和{1}之间的字符串)(汉字算一个字符)"),
		range: $.validator.format("请输入介入 {0} 到 {1}之间."),
		max: $.validator.format("输入值不能大于{0}."),
		min: $.validator.format("输入值不能小于{0}.")
	}
	
});

// 手机号码验证
jQuery.validator.addMethod("mobile", function(value, element) {
var length = value.length;
var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/;  
return this.optional(element) || (length == 11 && mobile.test(value));
}, "手机号码格式错误");

// 字母和数字的验证
jQuery.validator.addMethod("chrnum", function(value, element) {
var chrnum = /^([a-zA-Z0-9]+)$/;
return this.optional(element) || (chrnum.test(value));
}, "只能输入数字和字母(字符A-Z, a-z, 0-9)");

// 数字的验证
jQuery.validator.addMethod("num", function(value, element) {
    var chrnum = /^([1-9]+[0-9]*)$/;
    return this.optional(element) || (chrnum.test(value));
}, "只能输入数字和字母(字符A-Z, a-z, 0-9)");

// 中文的验证
jQuery.validator.addMethod("chinese", function(value, element) {
	var chinese = /^[u4e00-u9fa5]+$/;
	return this.optional(element) || (chinese.test(value));
}, "只能输入中文");

