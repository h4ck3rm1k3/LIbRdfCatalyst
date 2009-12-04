(function ($) {
	//if(typeof $.introspector == "undefined") throw "jsTree introspector: jQuery introspector plugin not included.";

	$.extend($.tree.plugins, {
		"introspector" : {
			defaults : {
				attribute	: "introspector"
			},
			callbacks : {
				check : function(rule, obj, value, tree) {
					var opts = $.extend(true, {}, $.tree.plugins.introspector.defaults, this.settings.plugins.metadata);
					if(typeof $(obj).introspector({ type : "attr", name : opts.attribute })[rule] != "undefined") return $(obj).introspector()[rule];
				}
			}
		}
	});
})(jQuery);