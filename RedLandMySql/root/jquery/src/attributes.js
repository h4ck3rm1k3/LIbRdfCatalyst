jQuery.fn.extend({
	attr: function( name, value ) {
		return access(this, name, value, true, jQuery.attr);
	},

	addClass: function( value ) {
		if ( value && typeof value === "string" ) {
			var classNames = (value || "").split(/\s+/);

			for ( var i = 0, l = this.length; i < l; i++ ) {
				var elem = this[i];

				if ( elem.nodeType === 1 ) {
					if ( !elem.className ) {
						elem.className = value;
					} else {
						var className = " " + elem.className + " ";
						for ( var c = 0, cl = classNames.length; c < cl; c++ ) {
							if ( className.indexOf( " " + classNames[c] + " " ) < 0 ) {
								elem.className += " " + classNames[c];
							}
						}
					}
				}
			}
		}

		return this;
	},

	removeClass: function( value ) {
		if ( (value && typeof value === "string") || value === undefined ) {
			var classNames = (value || "").split(/\s+/);

			for ( var i = 0, l = this.length; i < l; i++ ) {
				var elem = this[i];

				if ( elem.nodeType === 1 && elem.className ) {
					if ( value ) {
					var className = " " + elem.className + " ";
						for ( var c = 0, cl = classNames.length; c < cl; c++ ) {
							className = className.replace(" " + classNames[c] + " ", " ");
						}
						elem.className = className.substring(1, className.length - 1);
					} else {
						elem.className = "";
					}
				}
			}
		}

		return this;
	},

	hasClass: function( selector ) {
		var className = " " + selector + " ";
		for ( var i = 0, l = this.length; i < l; i++ ) {
			if ( (" " + this[i].className + " ").indexOf( className ) > -1 ) {
				return true;
			}
		}

		return false;
	},

	val: function( value ) {
		if ( value === undefined ) {
			var elem = this[0];

			if ( elem ) {
				if( jQuery.nodeName( elem, 'option' ) ) {
					return (elem.attributes.value || {}).specified ? elem.value : elem.text;
				}
				// We need to handle select boxes special
				if ( jQuery.nodeName( elem, "select" ) ) {
					var index = elem.selectedIndex,
						values = [],
						options = elem.options,
						one = elem.type == "select-one";

					// Nothing was selected
					if ( index < 0 ) {
						return null;
					}
					// Loop through all the selected options
					for ( var i = one ? index : 0, max = one ? index + 1 : options.length; i < max; i++ ) {
						var option = options[ i ];

						if ( option.selected ) {
							// Get the specifc value for the option
							value = jQuery(option).val();

							// We don't need an array for one selects
							if ( one ) {
								return value;
							}
							// Multi-Selects return an array
							values.push( value );
						}
					}

					return values;
				}

				// Everything else, we just grab the value
				return (elem.value || "").replace(/\r/g, "");

			}

			return undefined;
		}

		// Typecast once if the value is a number
		if ( typeof value === "number" ) {
			value += '';
		}	
		var val = value;

		return this.each(function(){
			if(jQuery.isFunction(value)) {
				val = value.call(this);
				// Typecast each time if the value is a Function and the appended
				// value is therefore different each time.
				if( typeof val === "number" ) {
					val += ''; 
				}
			}
			
			if ( this.nodeType != 1 ) {
				return;
			}
			if ( jQuery.isArray(val) && /radio|checkbox/.test( this.type ) ) {
				this.checked = jQuery.inArray(this.value || this.name, val) >= 0;
			}
			else if ( jQuery.nodeName( this, "select" ) ) {
				var values = jQuery.makeArray(val);

				jQuery( "option", this ).each(function(){
					this.selected = jQuery.inArray( this.value || this.text, values ) >= 0;
				});

				if ( !values.length ) {
					this.selectedIndex = -1;
				}
			} else {
				this.value = val;
			}
		});
	}
});

jQuery.each({
	removeAttr: function( name ) {
		jQuery.attr( this, name, "" );
		if (this.nodeType == 1) {
			this.removeAttribute( name );
		}
	},

	toggleClass: function( classNames, state ) {
		var type = typeof classNames;
		if ( type === "string" ) {
			// toggle individual class names
			var isBool = typeof state === "boolean", className, i = 0,
				classNames = classNames.split( /\s+/ );
			while ( (className = classNames[ i++ ]) ) {
				// check each className given, space seperated list
				state = isBool ? state : !jQuery(this).hasClass( className );
				jQuery(this)[ state ? "addClass" : "removeClass" ]( className );
			}
		} else if ( type === "undefined" || type === "boolean" ) {
			if ( this.className ) {
				// store className if set
				jQuery.data( this, "__className__", this.className );
			}
			// toggle whole className
			this.className = this.className || classNames === false ? "" : jQuery.data( this, "__className__" ) || "";
		}
	}
}, function(name, fn){
	jQuery.fn[ name ] = function(){
		return this.each( fn, arguments );
	};
});

jQuery.extend({
	attr: function( elem, name, value ) {
		// don't set attributes on text and comment nodes
		if (!elem || elem.nodeType == 3 || elem.nodeType == 8) {
			return undefined;
		}
		if ( name in jQuery.fn && name !== "attr" ) {
			return jQuery(elem)[name](value);
		}
		
		var notxml = elem.nodeType !== 1 || !jQuery.isXMLDoc( elem ),
			// Whether we are setting (or getting)
			set = value !== undefined;

		// Try to normalize/fix the name
		name = notxml && jQuery.props[ name ] || name;

		// Only do all the following if this is a node (faster for style)
		if ( elem.nodeType === 1 ) {

			// These attributes require special treatment
			var special = /href|src|style/.test( name );

			// Safari mis-reports the default selected property of a hidden option
			// Accessing the parent's selectedIndex property fixes it
			if ( name == "selected" && elem.parentNode ) {
				elem.parentNode.selectedIndex;
			}
			// If applicable, access the attribute via the DOM 0 way
			if ( name in elem && notxml && !special ) {
				if ( set ) {
					// We can't allow the type property to be changed (since it causes problems in IE)
					if ( name == "type" && /(button|input)/i.test(elem.nodeName) && elem.parentNode ) {
						throw "type property can't be changed";
					}
					elem[ name ] = value;
				}

				// browsers index elements by id/name on forms, give priority to attributes.
				if( jQuery.nodeName( elem, "form" ) && elem.getAttributeNode(name) ) {
					return elem.getAttributeNode( name ).nodeValue;
				}
				// elem.tabIndex doesn't always return the correct value when it hasn't been explicitly set
				// http://fluidproject.org/blog/2008/01/09/getting-setting-and-removing-tabindex-values-with-javascript/
				if ( name == "tabIndex" ) {
					var attributeNode = elem.getAttributeNode( "tabIndex" );
					return attributeNode && attributeNode.specified
						? attributeNode.value
						: /(button|input|object|select|textarea)/i.test(elem.nodeName)
							? 0
							: /^(a|area)$/i.test(elem.nodeName) && elem.href
								? 0
								: undefined;
				}

				return elem[ name ];
			}

			if ( !jQuery.support.style && notxml && name == "style" ) {
				if ( set ) {
					elem.style.cssText = "" + value;
				}
				return elem.style.cssText;
			}

			if ( set ) {
				// convert the value to a string (all browsers do this but IE) see #1070
				elem.setAttribute( name, "" + value );
			}
			var attr = !jQuery.support.hrefNormalized && notxml && special
					// Some attributes require a special call on IE
					? elem.getAttribute( name, 2 )
					: elem.getAttribute( name );

			// Non-existent attributes return null, we normalize to undefined
			return attr === null ? undefined : attr;
		}

		// elem is actually elem.style ... set the style
		// Using attr for specific style information is now deprecated. Use style insead.
		return jQuery.style(elem, name, value);
	}
});
