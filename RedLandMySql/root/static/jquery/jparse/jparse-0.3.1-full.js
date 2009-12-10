/*
 * jParse (Beta) v0.3.1
 * jparse.kylerush.net
 *
 * Copyright (c) 2009 Kyle Rush
 * Licensed under the MIT license.
 * http://creativecommons.org/licenses/MIT/
 *
 * Date: Wednesday, 09 Dec 2009 17:40 (GMT - 5:00)
 */
(function($){

    $.fn.extend({ 
        
        //pass the options variable to the function
        jParse: function(options) {
            
            //Set the default values, use comma to separate the o2, example:
            var defaults = {
                ajaxOpts: {dataType: ($.browser.msie) ? "text" : "xml", contentType: 'text/xml'},
                parentElement: 'item',
                elementTag: ['title', 'link', 'description'],
                output: '<div><h2><a href="jpet1">jpet0</a></h2><p>jpet2</p></div>'
            };
            
            //consolidate both user defined and default functions
            settings =  $.extend(true, defaults, options);
            
            //run precallback
            if(settings.precallback !== undefined){
                settings.precallback();
            }
            
            //assign the selected element to the variable 'slected'
            var selected = $(this);
            
            //master colon regexp
            var colon = /\:/;
            
            //settings.ajaxOpts.dataType = ($.browser.msie) ? "text" : "xml";
            settings.ajaxOpts.success = function(data){

                //extra code for ie content type handling
                var xml;
                if (typeof data == "string") {
                    xml = new ActiveXObject("Microsoft.XMLDOM");
                    xml.async = false;
                    xml.loadXML(data);
                } else {
                    xml = data;
                }
                
                //shortcut for referencing settings
                var o = settings;
                
                //create an object/array of all specified 'items' in xml document
                var parentElementArray = $(xml).find(o.parentElement);
                
                //initiate the containg variable
                var container = '';
                
                //initiate the number of included elements variable
                var numberIncluded = 0;
                
                //this nodeChecker function formats entry variables for proper namespace parsing
                function nodeChecker(node){
                    //if there is a colon in the entryTag name
                    if(colon.test(node) === true){
                        //asign the elemTagName variable to a jQuery parsable attribute selector
                        elemTagName = '[nodeName=' + node + ']';
                    } else {
                        elemTagName = node;
                    }
                }
                
                //element value processor function
                function processElementValue(elementValue, elementParent){

                    //detect if the specified element tag is a string or an object
                    if(o.elementTag[n].elem === undefined){

                        //run the node checker function
                        nodeChecker(elementValue);
                        
                        //set the element's value
                        elemTagValue = $(elementParent).find(elemTagName).text();
                        
                        //strip any CDATA text from the result if it exists
                        elemTagValue = elemTagValue.replace(/^\[CDATA\[/, '').replace(/\]\]$/, '');
                        
                    } else {

                        //run the node checker function
                        nodeChecker(elementValue);
                        
                        //detect if the the user has not specified an attribute to pull
                        if(o.elementTag[n].attr === undefined){
                            
                            //detect if array of element tag was provided
                            if(o.elementTag[n].select !== undefined){
                             
                                var arrayElements = $(elementParent).find(elemTagName);
                                elemTagValue = $(arrayElements[o.elementTag[n].select]).text();
                                
                            } else if(o.elementTag[n].select === undefined) {

                                elemTagValue = $(elementParent).find(elemTagName).text();
                            
                            }
                            
                        } else {
                            
                            elemTagValue = $(elementParent).find(elemTagName).attr(o.elementTag[n].attr);
                            
                        }
                            
                        //detect for the exclude variable if specified
                        if(o.elementTag[n].exclude !== undefined){
                            var excluder = new RegExp(o.elementTag[n].exclude);
                            if(excluder.test(elemTagValue) === true){
                                
                                //increment the value of the excludeFound variable
                                excludeFound = true;
                                
                            }
                        }
                        
                        //strip any CDATA text from the result if it exists
                        elemTagValue = elemTagValue.replace(/^\[CDATA\[/, '').replace(/\]\]$/, '');
                        
                        //Format function
						if (o.elementTag[n].format !== undefined) {
                            console.log('format function found');
							elemTagValue = o.elementTag[n].format(elemTagValue);
						}
                        
                        //JS Date Format
                        console.log('test');
                        if(o.elementTag[n].dateFormat !== undefined){
                            console.log('dateFormat found');
                            elemTagValue = date(o.elementTag[n].dateFormat, elemTagValue);
                        }
                        
                    }
                }//END processElementValue Function
                
                //detect count variable
                if(o.count !== undefined){
                    jQuery(o.count).append(parentElementArray.length);
                }
                
                //MAIN LOOP: FOR EACH PARENT ELEMENT 
                for(var i = 0; i < parentElementArray.length; i++){
                
                    //detect if number of exclude variable has been satisfied
                    if(numberIncluded >= settings.limit){
                        $(selected).append(container);
                        if(settings.callback !== undefined){
                            settings.callback();
                        }
                        return false;
                    }
                    
                    //define the output variable option
                    var outputVar = o.output;
                    
                    //initiate the exclude variable
                    var excludeFound = false;
                    
                    //SUB LOOP: through each specified 'elementTag'
                    for(var n = 0; n < o.elementTag.length; n++){
                        
                        //create a regular expression to find the position for the element tag
                        var position = new RegExp('jpet' + [n], 'g');
                        
                        //detect if the elementTag is a simple string or object
                        if(o.elementTag[n].constructor == String){
                            processElementValue(o.elementTag[n], parentElementArray[i]);
                        } else if(o.elementTag[n].constructor == Object){
                            processElementValue(o.elementTag[n].elem, parentElementArray[i]);
                        }
                            
                        //replace the position with the value of the selected element tag
                        outputVar = outputVar.replace(position, elemTagValue);
                        
                    } //END SUB LOOP
                    
                    //append the results to the container
                    if(excludeFound !== true){
                        container += outputVar;
                        numberIncluded++;
                    }
                    
                }//END MAIN LOOP
                
                //append the results to the selected element
                $(selected).append(container);
                
                //run callback
                if(settings.callback !== undefined){
                    settings.callback();
                }
                
            }; 
            
            return this.each(function() {
                $.ajax(settings.ajaxOpts);
            });
        }
    });

})(jQuery);