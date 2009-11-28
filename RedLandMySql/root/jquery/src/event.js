/*
 * A number of helper functions used for managing events.
 * Many of the ideas behind this code originated from
 * Dean Edwards' addEvent library.
 */
jQuery.event = {

	// Bind an event to an element
	// Original by Dean Edwards
	add: function( elem, types, handler, data ) {
		if ( elem.nodeType === 3 || elem.nodeType === 8 ) {
			return;
		}

		// For whatever reason, IE has trouble passing the window object
		// around, causing it to be cloned in the process
		if ( elem.setInterval && ( elem !== window && !elem.frameElement ) ) {
			elem = window;
		}

		// Make sure that the function being executed has a unique ID
		if ( !handler.guid ) {
			handler.guid = this.guid++;
		}

		// if data is passed, bind to handler
		if ( data !== undefined ) {
			// Create temporary function pointer to original handler
			var fn = handler;

			// Create unique handler function, wrapped around original handler
			handler = this.proxy( fn );

			// Store data in unique handler
			handler.data = data;
		}

		// Init the element's event structure
		var events = jQuery.data( elem, "events" ) || jQuery.data( elem, "events", {} ),
			handle = jQuery.data( elem, "handle" ) || jQuery.data( elem, "handle", function() {
				// Handle the second event of a trigger and when
				// an event is called after a page has unloaded
				return typeof jQuery !== "undefined" && !jQuery.event.triggered ?
					jQuery.event.handle.apply( arguments.callee.elem, arguments ) :
					undefined;
			});
		// Add elem as a property of the handle function
		// This is to prevent a memory leak with non-native
		// event in IE.
		handle.elem = elem;

		// Handle multiple events separated by a space
		// jQuery(...).bind("mouseover mouseout", fn);
		types = types.split( /\s+/ );
		var type, i=0;
		while ( (type = types[ i++ ]) ) {
			// Namespaced event handlers
			var namespaces = type.split(".");
			type = namespaces.shift();
			handler.type = namespaces.slice(0).sort().join(".");

			// Get the current list of functions bound to this event
			var handlers = events[ type ],
				special = this.special[ type ] || {};

			if ( special.add ) {
				var modifiedHandler = special.add.call( elem, handler, data, namespaces );
				if ( modifiedHandler && jQuery.isFunction( modifiedHandler ) ) {
					modifiedHandler.guid = modifiedHandler.guid || handler.guid;
					handler = modifiedHandler;
				}
			}

			// Init the event handler queue
			if ( !handlers ) {
				handlers = events[ type ] = {};

				// Check for a special event handler
				// Only use addEventListener/attachEvent if the special
				// events handler returns false
				if ( !special.setup || special.setup.call( elem, data, namespaces ) === false ) {
					// Bind the global event handler to the element
					if ( elem.addEventListener ) {
						elem.addEventListener( type, handle, false );
					} else if ( elem.attachEvent ) {
						elem.attachEvent( "on" + type, handle );
					}
				}
			}

			// Add the function to the element's handler list
			handlers[ handler.guid ] = handler;

			// Keep track of which events have been used, for global triggering
			this.global[ type ] = true;
		}

		// Nullify elem to prevent memory leaks in IE
		elem = null;
	},

	guid: 1,
	global: {},

	// Detach an event or set of events from an element
	remove: function( elem, types, handler ) {
		// don't do events on text and comment nodes
		if ( elem.nodeType === 3 || elem.nodeType === 8 ) {
			return;
		}

		var events = jQuery.data( elem, "events" ), ret, type;

		if ( events ) {
			// Unbind all events for the element
			if ( types === undefined || (typeof types === "string" && types.charAt(0) === ".") ) {
				for ( type in events ) {
					this.remove( elem, type + (types || "") );
				}
			} else {
				// types is actually an event object here
				if ( types.type ) {
					handler = types.handler;
					types = types.type;
				}

				// Handle multiple events seperated by a space
				// jQuery(...).unbind("mouseover mouseout", fn);
				types = types.split(/\s+/);
				var i = 0;
				while ( (type = types[ i++ ]) ) {
					// Namespaced event handlers
					var namespaces = type.split(".");
					type = namespaces.shift();
					var all = !namespaces.length,
						namespace = new RegExp("(^|\\.)" + namespaces.slice(0).sort().join("\\.(?:.*\\.)?") + "(\\.|$)"),
						special = this.special[ type ] || {};

					if ( events[ type ] ) {
						// remove the given handler for the given type
						if ( handler ) {
							delete events[ type ][ handler.guid ];

						// remove all handlers for the given type
						} else {
							for ( var handle in events[ type ] ) {
								// Handle the removal of namespaced events
								if ( all || namespace.test( events[ type ][ handle ].type ) ) {
									delete events[ type ][ handle ];
								}
							}
						}

						if ( special.remove ) {
							special.remove.call( elem, namespaces );
						}

						// remove generic event handler if no more handlers exist
						for ( ret in events[ type ] ) {
							break;
						}
						if ( !ret ) {
							if ( !special.teardown || special.teardown.call( elem, namespaces ) === false ) {
								if ( elem.removeEventListener ) {
									elem.removeEventListener( type, jQuery.data( elem, "handle" ), false );
								} else if ( elem.detachEvent ) {
									elem.detachEvent( "on" + type, jQuery.data( elem, "handle" ) );
								}
							}
							ret = null;
							delete events[ type ];
						}
					}
				}
			}

			// Remove the expando if it's no longer used
			for ( ret in events ) {
				break;
			}
			if ( !ret ) {
				var handle = jQuery.data( elem, "handle" );
				if ( handle ) {
					handle.elem = null;
				}
				jQuery.removeData( elem, "events" );
				jQuery.removeData( elem, "handle" );
			}
		}
	},

	// bubbling is internal
	trigger: function( event, data, elem /*, bubbling */ ) {
		// Event object or event type
		var type = event.type || event,
			bubbling = arguments[3];

		if ( !bubbling ) {
			event = typeof event === "object" ?
				// jQuery.Event object
				event[expando] ? event :
				// Object literal
				jQuery.extend( jQuery.Event(type), event ) :
				// Just the event type (string)
				jQuery.Event(type);

			if ( type.indexOf("!") >= 0 ) {
				event.type = type = type.slice(0, -1);
				event.exclusive = true;
			}

			// Handle a global trigger
			if ( !elem ) {
				// Don't bubble custom events when global (to avoid too much overhead)
				event.stopPropagation();
				// Only trigger if we've ever bound an event for it
				if ( this.global[ type ] ) {
					jQuery.each( jQuery.cache, function() {
						if ( this.events && this.events[type] ) {
							jQuery.event.trigger( event, data, this.handle.elem );
						}
					});
				}
			}

			// Handle triggering a single element

			// don't do events on text and comment nodes
			if ( !elem || elem.nodeType === 3 || elem.nodeType === 8 ) {
				return undefined;
			}

			// Clean up in case it is reused
			event.result = undefined;
			event.target = elem;

			// Clone the incoming data, if any
			data = jQuery.makeArray( data );
			data.unshift( event );
		}

		event.currentTarget = elem;

		// Trigger the event, it is assumed that "handle" is a function
		var handle = jQuery.data( elem, "handle" );
		if ( handle ) {
			handle.apply( elem, data );
		}

		var nativeFn, nativeHandler;
		try {
			nativeFn = elem[ type ];
			nativeHandler = elem[ "on" + type ];
		// prevent IE from throwing an error for some elements with some event types, see #3533
		} catch (e) {}
		// Handle triggering native .onfoo handlers (and on links since we don't call .click() for links)
		if ( (!nativeFn || (jQuery.nodeName(elem, 'a') && type === "click")) && nativeHandler && nativeHandler.apply( elem, data ) === false ) {
			event.result = false;
		}

		// Trigger the native events (except for clicks on links)
		if ( !bubbling && nativeFn && !event.isDefaultPrevented() && !(jQuery.nodeName(elem, 'a') && type === "click") ) {
			this.triggered = true;
			try {
				nativeFn();
			// prevent IE from throwing an error for some hidden elements
			} catch (e) {}
		}

		this.triggered = false;

		if ( !event.isPropagationStopped() ) {
			var parent = elem.parentNode || elem.ownerDocument;
			if ( parent ) {
				jQuery.event.trigger( event, data, parent, true );
			}
		}
	},

	handle: function( event ) {
		// returned undefined or false
		var all, handlers;

		event = arguments[0] = jQuery.event.fix( event || window.event );
		event.currentTarget = this;

		// Namespaced event handlers
		var namespaces = event.type.split(".");
		event.type = namespaces.shift();

		// Cache this now, all = true means, any handler
		all = !namespaces.length && !event.exclusive;

		var namespace = new RegExp("(^|\\.)" + namespaces.slice(0).sort().join("\\.(?:.*\\.)?") + "(\\.|$)");

		handlers = ( jQuery.data(this, "events") || {} )[ event.type ];

		for ( var j in handlers ) {
			var handler = handlers[ j ];

			// Filter the functions by class
			if ( all || namespace.test(handler.type) ) {
				// Pass in a reference to the handler function itself
				// So that we can later remove it
				event.handler = handler;
				event.data = handler.data;

				var ret = handler.apply( this, arguments );

				if ( ret !== undefined ) {
					event.result = ret;
					if ( ret === false ) {
						event.preventDefault();
						event.stopPropagation();
					}
				}

				if ( event.isImmediatePropagationStopped() ) {
					break;
				}

			}
		}
	},

	props: "altKey attrChange attrName bubbles button cancelable charCode clientX clientY ctrlKey currentTarget data detail eventPhase fromElement handler keyCode layerX layerY metaKey newValue offsetX offsetY originalTarget pageX pageY prevValue relatedNode relatedTarget screenX screenY shiftKey srcElement target toElement view wheelDelta which".split(" "),

	fix: function( event ) {
		if ( event[ expando ] ) {
			return event;
		}

		// store a copy of the original event object
		// and "clone" to set read-only properties
		var originalEvent = event;
		event = jQuery.Event( originalEvent );

		for ( var i = this.props.length, prop; i; ) {
			prop = this.props[ --i ];
			event[ prop ] = originalEvent[ prop ];
		}

		// Fix target property, if necessary
		if ( !event.target ) {
			event.target = event.srcElement || document; // Fixes #1925 where srcElement might not be defined either
		}

		// check if target is a textnode (safari)
		if ( event.target.nodeType === 3 ) {
			event.target = event.target.parentNode;
		}

		// Add relatedTarget, if necessary
		if ( !event.relatedTarget && event.fromElement ) {
			event.relatedTarget = event.fromElement === event.target ? event.toElement : event.fromElement;
		}

		// Calculate pageX/Y if missing and clientX/Y available
		if ( event.pageX == null && event.clientX != null ) {
			var doc = document.documentElement, body = document.body;
			event.pageX = event.clientX + (doc && doc.scrollLeft || body && body.scrollLeft || 0) - (doc && doc.clientLeft || body && body.clientLeft || 0);
			event.pageY = event.clientY + (doc && doc.scrollTop  || body && body.scrollTop  || 0) - (doc && doc.clientTop  || body && body.clientTop  || 0);
		}

		// Add which for key events
		if ( !event.which && ((event.charCode || event.charCode === 0) ? event.charCode : event.keyCode) ) {
			event.which = event.charCode || event.keyCode;
		}

		// Add metaKey to non-Mac browsers (use ctrl for PC's and Meta for Macs)
		if ( !event.metaKey && event.ctrlKey ) {
			event.metaKey = event.ctrlKey;
		}

		// Add which for click: 1 == left; 2 == middle; 3 == right
		// Note: button is not normalized, so don't use it
		if ( !event.which && event.button !== undefined ) {
			event.which = (event.button & 1 ? 1 : ( event.button & 2 ? 3 : ( event.button & 4 ? 2 : 0 ) ));
		}

		return event;
	},

	proxy: function( fn, proxy, thisObject ) {
		if ( proxy !== undefined && !jQuery.isFunction( proxy ) ) {
			thisObject = proxy;
			proxy = undefined;
		}
		// FIXME: Should proxy be redefined to be applied with thisObject if defined?
		proxy = proxy || function() { return fn.apply( thisObject !== undefined ? thisObject : this, arguments ); };
		// Set the guid of unique handler to the same of original handler, so it can be removed
		proxy.guid = fn.guid = fn.guid || proxy.guid || this.guid++;
		// So proxy can be declared as an argument
		return proxy;
	},

	special: {
		ready: {
			// Make sure the ready event is setup
			setup: bindReady,
			teardown: function() {}
		},

		live: {
			add: function( proxy, data, namespaces ) {
				jQuery.extend( proxy, data || {} );
				proxy.guid += data.selector + data.live;
				jQuery.event.add( this, data.live, liveHandler, data );
			},

			remove: function( namespaces ) {
				if ( namespaces.length ) {
					var remove = 0, name = new RegExp("(^|\\.)" + namespaces[0] + "(\\.|$)");

					jQuery.each( (jQuery.data(this, "events").live || {}), function() {
						if ( name.test(this.type) ) {
							remove++;
						}
					});

					if ( remove < 1 ) {
						jQuery.event.remove( this, namespaces[0], liveHandler );
					}
				}
			}
		}
	}
};

jQuery.Event = function( src ){
	// Allow instantiation without the 'new' keyword
	if ( !this.preventDefault ) {
		return new jQuery.Event( src );
	}

	// Event object
	if ( src && src.type ) {
		this.originalEvent = src;
		this.type = src.type;
	// Event type
	} else {
		this.type = src;
	}

	// timeStamp is buggy for some events on Firefox(#3843)
	// So we won't rely on the native value
	this.timeStamp = now();

	// Mark it as fixed
	this[ expando ] = true;
};

function returnFalse() {
	return false;
}
function returnTrue() {
	return true;
}

// jQuery.Event is based on DOM3 Events as specified by the ECMAScript Language Binding
// http://www.w3.org/TR/2003/WD-DOM-Level-3-Events-20030331/ecma-script-binding.html
jQuery.Event.prototype = {
	preventDefault: function() {
		this.isDefaultPrevented = returnTrue;

		var e = this.originalEvent;
		if ( !e ) {
			return;
		}
		
		// if preventDefault exists run it on the original event
		if ( e.preventDefault ) {
			e.preventDefault();
		}
		// otherwise set the returnValue property of the original event to false (IE)
		e.returnValue = false;
	},
	stopPropagation: function() {
		this.isPropagationStopped = returnTrue;

		var e = this.originalEvent;
		if ( !e ) {
			return;
		}
		// if stopPropagation exists run it on the original event
		if ( e.stopPropagation ) {
			e.stopPropagation();
		}
		// otherwise set the cancelBubble property of the original event to true (IE)
		e.cancelBubble = true;
	},
	stopImmediatePropagation: function(){
		this.isImmediatePropagationStopped = returnTrue;
		this.stopPropagation();
	},
	isDefaultPrevented: returnFalse,
	isPropagationStopped: returnFalse,
	isImmediatePropagationStopped: returnFalse
};
// Checks if an event happened on an element within another element
// Used in jQuery.event.special.mouseenter and mouseleave handlers
var withinElement = function( event ) {
	// Check if mouse(over|out) are still within the same parent element
	var parent = event.relatedTarget;
	// Traverse up the tree
	while ( parent && parent != this ) {
		// Firefox sometimes assigns relatedTarget a XUL element
		// which we cannot access the parentNode property of
		try { parent = parent.parentNode; }
		// assuming we've left the element since we most likely mousedover a xul element
		catch(e) { break; }
	}

	if ( parent != this ) {
		// set the correct event type
		event.type = event.data;
		// handle event if we actually just moused on to a non sub-element
		jQuery.event.handle.apply( this, arguments );
	}

},

// In case of event delegation, we only need to rename the event.type,
// liveHandler will take care of the rest.
delegate = function( event ) {
	event.type = event.data;
	jQuery.event.handle.apply( this, arguments );
};

// Create mouseenter and mouseleave events
jQuery.each({
	mouseover: "mouseenter",
	mouseout: "mouseleave"
}, function( orig, fix ) {
	jQuery.event.special[ fix ] = {
		setup: function(data){
			jQuery.event.add( this, orig, data && data.selector ? delegate : withinElement, fix );
		},
		teardown: function(data){
			jQuery.event.remove( this, orig, data && data.selector ? delegate : withinElement );
		}
	};
});

(function() {
	
	var event = jQuery.event,
		special = event.special,
		handle  = event.handle;

	special.submit = {
		setup: function(data, namespaces) {
			if(data.selector) {
				event.add(this, 'click.specialSubmit', function(e, eventData) {
					if(jQuery(e.target).filter(":submit, :image").closest(data.selector).length) {
						e.type = "submit";
						return handle.call( this, e, eventData );
					}
				});
				
				event.add(this, 'keypress.specialSubmit', function( e, eventData ) {
					if(jQuery(e.target).filter(":text, :password").closest(data.selector).length) {
						e.type = "submit";
						return handle.call( this, e, eventData );
					}
				});
			} else {
				return false;
			}
		},
		
		remove: function(namespaces) {
			event.remove(this, 'click.specialSubmit');
			event.remove(this, 'keypress.specialSubmit');
		}
	};
	
})();

// Create "bubbling" focus and blur events
jQuery.each({
	focus: "focusin",
	blur: "focusout"
}, function( orig, fix ){
	var event = jQuery.event,
		handle = event.handle;
	
	function ieHandler() { 
		arguments[0].type = orig;
		return handle.apply(this, arguments);
	}

	event.special[orig] = {
		setup:function() {
			if ( this.addEventListener ) {
				this.addEventListener( orig, handle, true );
			} else {
				event.add( this, fix, ieHandler );
			}
		}, 
		teardown:function() { 
			if ( this.removeEventListener ) {
				this.removeEventListener( orig, handle, true );
			} else {
				event.remove( this, fix, ieHandler );
			}
		}
	};
});

jQuery.fn.extend({
	// TODO: make bind(), unbind() and one() DRY!
	bind: function( type, data, fn, thisObject ) {
		// Handle object literals
		if ( typeof type === "object" ) {
			for ( var key in type ) {
				this.bind(key, data, type[key], fn);
			}
			return this;
		}
		
		if ( jQuery.isFunction( data ) ) {
			thisObject = fn;
			fn = data;
			data = undefined;
		}
		fn = thisObject === undefined ? fn : jQuery.event.proxy( fn, thisObject );
		return type === "unload" ? this.one(type, data, fn, thisObject) : this.each(function() {
			jQuery.event.add( this, type, fn, data );
		});
	},

	one: function( type, data, fn, thisObject ) {
		// Handle object literals
		if ( typeof type === "object" ) {
			for ( var key in type ) {
				this.one(key, data, type[key], fn);
			}
			return this;
		}
		
		if ( jQuery.isFunction( data ) ) {
			thisObject = fn;
			fn = data;
			data = undefined;
		}
		fn = thisObject === undefined ? fn : jQuery.event.proxy( fn, thisObject );
		var one = jQuery.event.proxy( fn, function( event ) {
			jQuery( this ).unbind( event, one );
			return fn.apply( this, arguments );
		});
		return this.each(function() {
			jQuery.event.add( this, type, one, data );
		});
	},

	unbind: function( type, fn ) {
		// Handle object literals
		if ( typeof type === "object" && !type.preventDefault ) {
			for ( var key in type ) {
				this.unbind(key, type[key]);
			}
			return this;
		}
		
		return this.each(function() {
			jQuery.event.remove( this, type, fn );
		});
	},

	trigger: function( type, data ) {
		return this.each(function() {
			jQuery.event.trigger( type, data, this );
		});
	},

	triggerHandler: function( type, data ) {
		if ( this[0] ) {
			var event = jQuery.Event( type );
			event.preventDefault();
			event.stopPropagation();
			jQuery.event.trigger( event, data, this[0] );
			return event.result;
		}
	},

	toggle: function( fn ) {
		// Save reference to arguments for access in closure
		var args = arguments, i = 1;

		// link all the functions, so any of them can unbind this click handler
		while( i < args.length ) {
			jQuery.event.proxy( fn, args[ i++ ] );
		}

		return this.click( jQuery.event.proxy( fn, function( event ) {
			// Figure out which function to execute
			var lastToggle = ( jQuery.data( this, 'lastToggle' + fn.guid ) || 0 ) % i;
			jQuery.data( this, 'lastToggle' + fn.guid, lastToggle + 1 );

			// Make sure that clicks stop
			event.preventDefault();

			// and execute the function
			return args[ lastToggle ].apply( this, arguments ) || false;
		}));
	},

	hover: function( fnOver, fnOut ) {
		return this.mouseenter( fnOver ).mouseleave( fnOut || fnOver );
	},

	ready: function( fn ) {
		// Attach the listeners
		bindReady();

		// If the DOM is already ready
		if ( jQuery.isReady ) {
			// Execute the function immediately
			fn.call( document, jQuery );

		// Otherwise, remember the function for later
		} else {
			// Add the function to the wait list
			jQuery.readyList.push( fn );
		}

		return this;
	},

	live: function( type, data, fn, thisObject ) {
		if ( jQuery.isFunction( data ) ) {
			if ( fn !== undefined ) {
				thisObject = fn;
			}
			fn = data;
			data = undefined;
		}
		jQuery( this.context ).bind( liveConvert( type, this.selector ), {
			data: data, selector: this.selector, live: type
		}, fn, thisObject );
		return this;
	},

	die: function( type, fn ) {
		jQuery( this.context ).unbind( liveConvert( type, this.selector ), fn ? { guid: fn.guid + this.selector + type } : null );
		return this;
	}
});

function liveHandler( event ) {
	var stop = true, elems = [], args = arguments;

	jQuery.each( jQuery.data( this, "events" ).live || [], function( i, fn ) {
		if ( fn.live === event.type ) {
			var elem = jQuery( event.target ).closest( fn.selector, event.currentTarget )[0],
				related;
			if ( elem ) {
				// Those two events require additional checking
				if ( fn.live === "mouseenter" || fn.live === "mouseleave" ) {
					related = jQuery( event.relatedTarget ).closest( fn.selector )[0];
				}

				if ( !related || related !== elem ) {
					elems.push({ elem: elem, fn: fn });
				}
			}
		}
	});

	elems.sort(function( a, b ) {
		return a.closer - b.closer;
	});

	jQuery.each(elems, function() {
		event.currentTarget = this.elem;
		event.data = this.fn.data;
		if ( this.fn.apply( this.elem, args ) === false ) {
			return (stop = false);
		}
	});

	return stop;
}

function liveConvert( type, selector ) {
	return ["live", type, selector.replace(/\./g, "`").replace(/ /g, "|")].join(".");
}

jQuery.extend({
	isReady: false,
	readyList: [],
	// Handle when the DOM is ready
	ready: function() {
		// Make sure that the DOM is not already loaded
		if ( !jQuery.isReady ) {
			if ( !document.body ) {
				return setTimeout( jQuery.ready, 13 );
			}

			// Remember that the DOM is ready
			jQuery.isReady = true;

			// If there are functions bound, to execute
			if ( jQuery.readyList ) {
				// Execute all of them
				var fn, i = 0;
				while ( (fn = jQuery.readyList[ i++ ]) ) {
					fn.call( document, jQuery );
				}

				// Reset the list of functions
				jQuery.readyList = null;
			}

			// Trigger any bound ready events
			jQuery( document ).triggerHandler( "ready" );
		}
	}
});

var readyBound = false;

function bindReady() {
	if ( readyBound ) { return; }
	readyBound = true;

	// Catch cases where $(document).ready() is called after the
	// browser event has already occurred.
	if ( document.readyState === "complete" ) {
		return jQuery.ready();
	}

	// Mozilla, Opera and webkit nightlies currently support this event
	if ( document.addEventListener ) {
		// Use the handy event callback
		document.addEventListener( "DOMContentLoaded", function() {
			document.removeEventListener( "DOMContentLoaded", arguments.callee, false );
			jQuery.ready();
		}, false );

	// If IE event model is used
	} else if ( document.attachEvent ) {
		// ensure firing before onload,
		// maybe late but safe also for iframes
		document.attachEvent("onreadystatechange", function() {
			// Make sure body exists, at least, in case IE gets a little overzealous (ticket #5443).
			if ( document.readyState === "complete" ) {
				document.detachEvent( "onreadystatechange", arguments.callee );
				jQuery.ready();
			}
		});

		// If IE and not a frame
		// continually check to see if the document is ready
		var toplevel = false;

		try {
			toplevel = window.frameElement == null;
		} catch(e){}

		if ( document.documentElement.doScroll && toplevel ) {
			(function() {
				if ( jQuery.isReady ) {
					return;
				}

				try {
					// If IE is used, use the trick by Diego Perini
					// http://javascript.nwbox.com/IEContentLoaded/
					document.documentElement.doScroll("left");
				} catch( error ) {
					setTimeout( arguments.callee, 0 );
					return;
				}

				// and execute any waiting functions
				jQuery.ready();
			})();
		}
	}

	// A fallback to window.onload, that will always work
	jQuery.event.add( window, "load", jQuery.ready );
}

jQuery.each( ("blur focus load resize scroll unload click dblclick " +
	"mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave " +
	"change select submit keydown keypress keyup error").split(" "), function( i, name ) {

	// Handle event binding
	jQuery.fn[ name ] = function( fn ) {
		return fn ? this.bind( name, fn ) : this.trigger( name );
	};
});

// Prevent memory leaks in IE
// Window isn't included so as not to unbind existing unload events
// More info:
//  - http://isaacschlueter.com/2006/10/msie-memory-leaks/
/*@cc_on
jQuery( window ).bind( 'unload', function() {
	for ( var id in jQuery.cache ) {
		// Skip the window
		if ( id != 1 && jQuery.cache[ id ].handle ) {
			jQuery.event.remove( jQuery.cache[ id ].handle.elem );
		}
	}
});
@*/
