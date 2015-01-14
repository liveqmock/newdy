/*
 * Translated default messages for the jQuery validation plugin.
 * Locale: ZH (Chinese, 中文 (Zhōngwén), 汉语, 漢語)
 */
(function ($) {
	$.extend($.validator.messages, {
		required: "必填字段不能为空",
		remote: "请修正该字段",
		remotewithid: "请修正该字段",
		email: "请输入正确格式的电子邮件",
		url: "请输入合法的网址",
		mobileFormat: "手机号码格式不正确",
		ipFormat: "ip地址格式不正确",
		ipRangeFormat: "ip地址范围地址格式不正确",
		nameFormat: "虚拟机名称只支持以英文开头，并且是英文或英文、数字、下划线的组合，请正确填写！",
		nameFormat2: "虚拟机名称只支持以英文开头，并且是英文、数字的组合，请正确填写！", //不允许带下划线
		nameFormat3: "虚拟机名称只支持以英文开头，并且是英文或英文、数字、下划线、横杠(-)的组合，请正确填写！",
		nameFormat4: "虚拟机名称只支持以英文开头，并且是英文、数字、横杠(-)的组合，请正确填写！", //不允许带下划线
		floatFormat: "输入格式不正确，请输入大于0的浮点型数据",
		isSpecialChar: "输入名称存在非法字符，请重新输入",
		date: "请输入合法的日期",
		dateISO: "请输入合法的日期 (ISO).",
		number: "请输入合法的数字",
		digits: "只能输入整数",
		positiveInt: "只能输入正整数",
		positive: "只能输入正数",
		creditcard: "请输入合法的信用卡号",
		equalTo: "请再次输入相同的值",
		accept: "请输入拥有合法后缀名的字符串",
		charater: "只能输入字母",
		maxlength: $.validator.format("请输入一个长度最多是 {0} 的字符串"),
		minlength: $.validator.format("请输入一个长度最少是 {0} 的字符串"),
		maxChlength: $.validator.format("最大长度限制为{0}个字符"),
		rexRange: $.validator.format("输入由6-16位半角字符（字母、数字、符号）组成，区分大小写！"),
		multiple: $.validator.format("CPU必须是0.1的偶数倍！"),
		rangelength: $.validator.format("请输入一个长度介于 {0} 和 {1} 之间的字符串"),
		range: $.validator.format("请输入一个介于 {0} 和 {1} 之间的值"),
		max: $.validator.format("请输入一个最大为 {0} 的值"),
		min: $.validator.format("请输入一个最小为 {0} 的值")
	});
}(jQuery));
