! function($, t, e) {
	function i(t, e) {
		this.element = $(t), this.options = $.extend({}, n, e), this.head = this.element.find(".selectui-head"), this.result = this.head.find("input:hidden"), this.resultText = this.head.find(".selectui-result"), this.drop = this.head.find(".selectui-drop"), this.list = this.element.find("ul"), this._defaults = n, this._name = a, this.init()
	}
	var a = "SelectUI",
		s = t.VBArray && !t.XMLHttpRequest || navigator.userAgent.indexOf("MSIE 7.0") > -1 || navigator.userAgent.indexOf("SE 2.X") > -1,
		l = t.document,
		r = ["destroy", "refresh", "add"],
		n = {
			type: "click"
		};
	i.prototype.init = function() {
		var t = this,
			e = (t.element.attr("data-dock"), t.element.attr("data-size"), t.element.attr("data-adapter")),
			i = parseInt(t.element.attr("data-maxHeight") || "350"),
			a = t.element.hasClass("selectui-disabled");
		s && $("<i />").appendTo(t.drop), t.result.length > 0 && t.result.attr("autocomplete", "off"), t.result.attr("data-ui", t._name), t.drop.attr("data-name", t.result.attr("name") || ""), "hover" === t.options.type ? t.drop[t.options.type](function() {
			!a && t.element.addClass("selectui-active")
		}, function() {
			!a && t.element.removeClass("selectui-active")
		}) : t.drop.add(t.resultText).bind(t.options.type, function(s) {
			var l = t.list.find('li[data-value="' + e + '"]');
			a || ($(".selectui-active").each(function() {
				!$.contains(this, s.target) && $(this).removeClass("selectui-active")
			}), t.element.hasClass("selectui-active") ? t.element.removeClass("selectui-active") : (t.element.addClass("selectui-active"), i && t.list.height() > i && (t.list.css({
				height: i + "px",
				"overflow-y": "auto"
			}), e && 0 === t.list.find('li[data-selected="selected"]').length && l.length > 0 && t.list.scrollTop(l.position().top)))), s.stopPropagation()
		}), t.list.delegate("li a", "click", function(e) {
			var i = $(this).closest("li");
			return i.addClass("active").attr("data-selected", "selected").siblings("li.active").removeClass("active").removeAttr("data-selected"), t.result.length > 0 && t.result.val(i.attr("data-value") || "").trigger("change"), t.resultText.text($(this).text()), t.options.callback && t.options.callback.call(this, i.attr("data-value"), $(this).text()), 0 === $(this).attr("href").indexOf("javascript:") ? ($(".selectui-active").removeClass("selectui-active"), e.stopPropagation(), !1) : void 0
		}), $(l).bind("click", function() {
			$(".selectui-active").removeClass("selectui-active")
		}), t.refresh()
	}, i.prototype.value = function(t) {
		var e = this;
		return e.result.val(t), e.list.find('[data-selected="selected"]').removeClass("active").removeAttr("data-selected"), e.refresh(), e
	}, i.prototype.add = function(t, i) {
		var a;
		Array.isArray(t) || (t = [t]), 1 === t.length && t.push(t[0]), 2 === t.length && t.push(!1), a = $('<li data-value="' + t[0] + '"' + (t[2] ? ' data-selected="selected"' : "") + '><a href="javascript:;">' + t[1] + "</a></li>"), i === e ? a.prependTo(this.list) : 0 === i ? a.appendTo(this.list) : a.insertBefore(this.list.find("li:eq(" + i + ")"))
	}, i.prototype.empty = function() {
		return this.result.val(""), this.resultText.text(""), this.list.empty(), this
	}, i.prototype.refresh = function() {
		var t, e = this,
			i = e.element.attr("data-dock"),
			a = e.element.attr("data-size"),
			r = e.result.attr("placeholder"),
			n = "" === e.resultText.html().replace(/&nbsp;/g, "").trim();
		a && e.head.width(parseFloat(a) + 3.5 + "em"), i && "false" !== i ? (e.list.css("right", "auto"), !a && e.head.width(Math.max(e.list.width(), e.head.width())), e.list.css("right", "0"), s && e.list.width(e.element.width() - 2) && e.list.css("overflow", "hidden")) : (e.list.css("right", "auto"), s && e.list.width(e.list.width() - 2), e.list.width() < e.head.width() && e.list.width(e.head.width())), t = e.list.find('li[data-selected="selected"]'), "" === e.result.val() || n ? r ? e.resultText.text(r) : (0 === t.length && e.list.find("li").each(function() {
			$(this).attr("data-value") === e.result.val() && $(this).attr("data-selected", "selected")
		}), e.resultText.text(e.resultText.text() || " ")) : 0 === t.length && e.list.find("li").each(function() {
			$(this).attr("data-value") === e.result.val() && $(this).attr("data-selected", "selected")
		}), t = e.list.find('li[data-selected="selected"]'), t.length > 0 && (t.addClass("active"), e.result.length > 0 && e.result.val(t.attr("data-value") || ""), e.resultText.text(t.find("a").text())), "" === e.resultText.text() && e.resultText.html("&nbsp;"), $(l).bind("click", function() {
			$(".selectui-active").removeClass("selectui-active")
		})
	}, $.fn[a] = function(t) {
		var e, s, l, n;
		if ("string" == typeof t) {
			if (e = arguments, s = t, l = function() {
				for (var t = 0; t < r.length; t++)
					if (r[t] === s) return !0;
				return !1
			}, Array.prototype.shift.call(e), "check" == s) return !!this.data("plugin_" + a);
			if (l()) return this.each(function() {
				var t = $(this).data("plugin_" + a);
				t && t[s] && t[s].apply(t, e)
			});
			if (n = this.first().data("plugin_" + a), n && n[s]) return n[s].apply(n, e);
			throw new TypeError(a + ' has no method "' + s + '"')
		}
		return this.each(function() {
			var e = $(this).data("plugin_" + a);
			e || $(this).data("plugin_" + a, new i(this, t))
		})
	}
}(jQuery, window);