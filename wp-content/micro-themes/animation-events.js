!function(){"use strict";function t(i){if(!i)throw new Error("No options passed to MTWaypoint constructor");if(!i.element)throw new Error("No element option passed to MTWaypoint constructor");if(!i.handler)throw new Error("No handler option passed to MTWaypoint constructor");this.key="waypoint-"+e,this.options=t.Adapter.extend({},t.defaults,i),this.element=this.options.element,this.adapter=new t.Adapter(this.element),this.callback=i.handler,this.axis=this.options.horizontal?"horizontal":"vertical",this.enabled=this.options.enabled,this.triggerPoint=null,this.group=t.Group.findOrCreate({name:this.options.group,axis:this.axis}),this.context=t.Context.findOrCreateByElement(this.options.context),t.offsetAliases[this.options.offset]&&(this.options.offset=t.offsetAliases[this.options.offset]),this.group.add(this),this.context.add(this),n[this.key]=this,e+=1}var e=0,n={};t.prototype.queueTrigger=function(t){this.group.queueTrigger(this,t)},t.prototype.trigger=function(t){this.enabled&&this.callback&&this.callback.apply(this,t)},t.prototype.destroy=function(){this.context.remove(this),this.group.remove(this),delete n[this.key]},t.prototype.disable=function(){return this.enabled=!1,this},t.prototype.enable=function(){return this.context.refresh(),this.enabled=!0,this},t.prototype.next=function(){return this.group.next(this)},t.prototype.previous=function(){return this.group.previous(this)},t.invokeAll=function(t){var e=[];for(var i in n)e.push(n[i]);for(var o=0,r=e.length;o<r;o++)e[o][t]()},t.destroyAll=function(){t.invokeAll("destroy")},t.disableAll=function(){t.invokeAll("disable")},t.enableAll=function(){t.Context.refreshAll();for(var e in n)n[e].enabled=!0;return this},t.refreshAll=function(){t.Context.refreshAll()},t.viewportHeight=function(){return window.innerHeight||document.documentElement.clientHeight},t.viewportWidth=function(){return document.documentElement.clientWidth},t.adapters=[],t.defaults={context:window,continuous:!0,enabled:!0,group:"default",horizontal:!1,offset:0},t.offsetAliases={"bottom-in-view":function(){return this.context.innerHeight()-this.adapter.outerHeight()},"right-in-view":function(){return this.context.innerWidth()-this.adapter.outerWidth()}},window.MTWaypoint=t}(),function(){"use strict";function t(t){window.setTimeout(t,1e3/60)}function e(t){this.element=t,this.Adapter=o.Adapter,this.adapter=new this.Adapter(t),this.key="waypoint-context-"+n,this.didScroll=!1,this.didResize=!1,this.oldScroll={x:this.adapter.scrollLeft(),y:this.adapter.scrollTop()},this.waypoints={vertical:{},horizontal:{}},t.waypointContextKey=this.key,i[t.waypointContextKey]=this,n+=1,o.windowContext||(o.windowContext=!0,o.windowContext=new e(window)),this.createThrottledScrollHandler(),this.createThrottledResizeHandler()}var n=0,i={},o=window.MTWaypoint,r=window.onload;e.prototype.add=function(t){var e=t.options.horizontal?"horizontal":"vertical";this.waypoints[e][t.key]=t,this.refresh()},e.prototype.checkEmpty=function(){var t=this.Adapter.isEmptyObject(this.waypoints.horizontal),e=this.Adapter.isEmptyObject(this.waypoints.vertical),n=this.element==this.element.window;t&&e&&!n&&(this.adapter.off(".waypoints"),delete i[this.key])},e.prototype.createThrottledResizeHandler=function(){function t(){e.handleResize(),e.didResize=!1}var e=this;this.adapter.on("resize.waypoints",function(){e.didResize||(e.didResize=!0,o.requestAnimationFrame(t))})},e.prototype.createThrottledScrollHandler=function(){function t(){e.handleScroll(),e.didScroll=!1}var e=this;this.adapter.on("scroll.waypoints",function(){e.didScroll&&!o.isTouch||(e.didScroll=!0,o.requestAnimationFrame(t))})},e.prototype.handleResize=function(){o.Context.refreshAll()},e.prototype.handleScroll=function(){var t={},e={horizontal:{newScroll:this.adapter.scrollLeft(),oldScroll:this.oldScroll.x,forward:"right",backward:"left"},vertical:{newScroll:this.adapter.scrollTop(),oldScroll:this.oldScroll.y,forward:"down",backward:"up"}};for(var n in e){var i=e[n],o=i.newScroll>i.oldScroll?i.forward:i.backward;for(var r in this.waypoints[n]){var s=this.waypoints[n][r];if(null!==s.triggerPoint){var a=i.oldScroll<s.triggerPoint,l=i.newScroll>=s.triggerPoint,h=a&&l,p=!a&&!l;(h||p)&&(s.queueTrigger(o),t[s.group.id]=s.group)}}}for(var c in t)t[c].flushTriggers();this.oldScroll={x:e.horizontal.newScroll,y:e.vertical.newScroll}},e.prototype.innerHeight=function(){return this.element==this.element.window?o.viewportHeight():this.adapter.innerHeight()},e.prototype.remove=function(t){delete this.waypoints[t.axis][t.key],this.checkEmpty()},e.prototype.innerWidth=function(){return this.element==this.element.window?o.viewportWidth():this.adapter.innerWidth()},e.prototype.destroy=function(){var t=[];for(var e in this.waypoints)for(var n in this.waypoints[e])t.push(this.waypoints[e][n]);for(var i=0,o=t.length;i<o;i++)t[i].destroy()},e.prototype.refresh=function(){var t,e=this.element==this.element.window,n=e?void 0:this.adapter.offset(),i={};this.handleScroll(),t={horizontal:{contextOffset:e?0:n.left,contextScroll:e?0:this.oldScroll.x,contextDimension:this.innerWidth(),oldScroll:this.oldScroll.x,forward:"right",backward:"left",offsetProp:"left"},vertical:{contextOffset:e?0:n.top,contextScroll:e?0:this.oldScroll.y,contextDimension:this.innerHeight(),oldScroll:this.oldScroll.y,forward:"down",backward:"up",offsetProp:"top"}};for(var r in t){var s=t[r];for(var a in this.waypoints[r]){var l,h,p,c,u,f=this.waypoints[r][a],d=f.options.offset,w=f.triggerPoint,y=0,v=null==w;f.element!==f.element.window&&(y=f.adapter.offset()[s.offsetProp]),"function"==typeof d?d=d.apply(f):"string"==typeof d&&(d=parseFloat(d),f.options.offset.indexOf("%")>-1&&(d=Math.ceil(s.contextDimension*d/100))),l=s.contextScroll-s.contextOffset,f.triggerPoint=Math.floor(y+l-d),h=w<s.oldScroll,p=f.triggerPoint>=s.oldScroll,c=h&&p,u=!h&&!p,!v&&c?(f.queueTrigger(s.backward),i[f.group.id]=f.group):!v&&u?(f.queueTrigger(s.forward),i[f.group.id]=f.group):v&&s.oldScroll>=f.triggerPoint&&(f.queueTrigger(s.forward),i[f.group.id]=f.group)}}return o.requestAnimationFrame(function(){for(var t in i)i[t].flushTriggers()}),this},e.findOrCreateByElement=function(t){return e.findByElement(t)||new e(t)},e.refreshAll=function(){for(var t in i)i[t].refresh()},e.findByElement=function(t){return i[t.waypointContextKey]},window.onload=function(){r&&r(),e.refreshAll()},o.requestAnimationFrame=function(e){(window.requestAnimationFrame||window.mozRequestAnimationFrame||window.webkitRequestAnimationFrame||t).call(window,e)},o.Context=e}(),function(){"use strict";function t(t,e){return t.triggerPoint-e.triggerPoint}function e(t,e){return e.triggerPoint-t.triggerPoint}function n(t){this.name=t.name,this.axis=t.axis,this.id=this.name+"-"+this.axis,this.waypoints=[],this.clearTriggerQueues(),i[this.axis][this.name]=this}var i={vertical:{},horizontal:{}},o=window.MTWaypoint;n.prototype.add=function(t){this.waypoints.push(t)},n.prototype.clearTriggerQueues=function(){this.triggerQueues={up:[],down:[],left:[],right:[]}},n.prototype.flushTriggers=function(){for(var n in this.triggerQueues){var i=this.triggerQueues[n],o="up"===n||"left"===n;i.sort(o?e:t);for(var r=0,s=i.length;r<s;r+=1){var a=i[r];(a.options.continuous||r===i.length-1)&&a.trigger([n])}}this.clearTriggerQueues()},n.prototype.next=function(e){this.waypoints.sort(t);var n=o.Adapter.inArray(e,this.waypoints);return n===this.waypoints.length-1?null:this.waypoints[n+1]},n.prototype.previous=function(e){this.waypoints.sort(t);var n=o.Adapter.inArray(e,this.waypoints);return n?this.waypoints[n-1]:null},n.prototype.queueTrigger=function(t,e){this.triggerQueues[e].push(t)},n.prototype.remove=function(t){var e=o.Adapter.inArray(t,this.waypoints);e>-1&&this.waypoints.splice(e,1)},n.prototype.first=function(){return this.waypoints[0]},n.prototype.last=function(){return this.waypoints[this.waypoints.length-1]},n.findOrCreate=function(t){return i[t.axis][t.name]||new n(t)},o.Group=n}(),function(){"use strict";function t(t){return t===t.window}function e(e){return t(e)?e:e.defaultView}function n(t){this.element=t,this.handlers={}}var i=window.MTWaypoint;n.prototype.innerHeight=function(){return t(this.element)?this.element.innerHeight:this.element.clientHeight},n.prototype.innerWidth=function(){return t(this.element)?this.element.innerWidth:this.element.clientWidth},n.prototype.off=function(t,e){function n(t,e,n){for(var i=0,o=e.length-1;i<o;i++){var r=e[i];n&&n!==r||t.removeEventListener(r)}}var i=t.split("."),o=i[0],r=i[1],s=this.element;if(r&&this.handlers[r]&&o)n(s,this.handlers[r][o],e),this.handlers[r][o]=[];else if(o)for(var a in this.handlers)n(s,this.handlers[a][o]||[],e),this.handlers[a][o]=[];else if(r&&this.handlers[r]){for(var l in this.handlers[r])n(s,this.handlers[r][l],e);this.handlers[r]={}}},n.prototype.offset=function(){if(!this.element.ownerDocument)return null;var t=this.element.ownerDocument.documentElement,n=e(this.element.ownerDocument),i={top:0,left:0};return this.element.getBoundingClientRect&&(i=this.element.getBoundingClientRect()),{top:i.top+n.pageYOffset-t.clientTop,left:i.left+n.pageXOffset-t.clientLeft}},n.prototype.on=function(t,e){var n=t.split("."),i=n[0],o=n[1]||"__default",r=this.handlers[o]=this.handlers[o]||{};(r[i]=r[i]||[]).push(e),this.element.addEventListener(i,e)},n.prototype.outerHeight=function(e){var n,i=this.innerHeight();return e&&!t(this.element)&&(n=window.getComputedStyle(this.element),i+=parseInt(n.marginTop,10),i+=parseInt(n.marginBottom,10)),i},n.prototype.outerWidth=function(e){var n,i=this.innerWidth();return e&&!t(this.element)&&(n=window.getComputedStyle(this.element),i+=parseInt(n.marginLeft,10),i+=parseInt(n.marginRight,10)),i},n.prototype.scrollLeft=function(){var t=e(this.element);return t?t.pageXOffset:this.element.scrollLeft},n.prototype.scrollTop=function(){var t=e(this.element);return t?t.pageYOffset:this.element.scrollTop},n.extend=function(){for(var t=Array.prototype.slice.call(arguments),e=1,n=t.length;e<n;e++)!function(t,e){if("object"==typeof t&&"object"==typeof e)for(var n in e)e.hasOwnProperty(n)&&(t[n]=e[n])}(t[0],t[e]);return t[0]},n.inArray=function(t,e,n){return null==e?-1:e.indexOf(t,n)},n.isEmptyObject=function(t){for(var e in t)return!1;return!0},i.adapters.push({name:"noframework",Adapter:n}),i.Adapter=n}(),function(){"use strict";function t(){}function e(t){this.options=n.Adapter.extend({},e.defaults,t),this.axis=this.options.horizontal?"horizontal":"vertical",this.waypoints=[],this.element=this.options.element,this.createMTWaypoints()}var n=window.MTWaypoint;e.prototype.createMTWaypoints=function(){for(var t={vertical:[{down:"enter",up:"exited",offset:"100%"},{down:"entered",up:"exit",offset:"bottom-in-view"},{down:"exit",up:"entered",offset:0},{down:"exited",up:"enter",offset:function(){return-this.adapter.outerHeight()}}],horizontal:[{right:"enter",left:"exited",offset:"100%"},{right:"entered",left:"exit",offset:"right-in-view"},{right:"exit",left:"entered",offset:0},{right:"exited",left:"enter",offset:function(){return-this.adapter.outerWidth()}}]},e=0,n=t[this.axis].length;e<n;e++){var i=t[this.axis][e];this.createMTWaypoint(i)}},e.prototype.createMTWaypoint=function(t){var e=this;this.waypoints.push(new n({context:this.options.context,element:this.options.element,enabled:this.options.enabled,handler:function(t){return function(n){e.options[t[n]].call(e,n)}}(t),offset:t.offset,horizontal:this.options.horizontal}))},e.prototype.destroy=function(){for(var t=0,e=this.waypoints.length;t<e;t++)this.waypoints[t].destroy();this.waypoints=[]},e.prototype.disable=function(){for(var t=0,e=this.waypoints.length;t<e;t++)this.waypoints[t].disable()},e.prototype.enable=function(){for(var t=0,e=this.waypoints.length;t<e;t++)this.waypoints[t].enable()},e.defaults={context:window,enabled:!0,enter:t,entered:t,exit:t,exited:t},n.Inview=e}(),jQuery(document).ready(function(t){var e=function(){var e={data:{},boundEls:{click:!1,inview:!1,inview_once:!1},targetEls:{click:!1,inview:!1,inview_once:!1},customEvents:[],eventClasses:[],mediaMatches:function(t){return window.matchMedia(t).matches},jquery_compat:function(e){try{return t(e)}catch(t){return!1}},apply_effect:function(t){if(!t.eventObj.mq||window.matchMedia(t.eventObj.mq).matches){var n=t.single_target;if(n.hasClass(t.evt_class)&&(n.removeClass(t.evt_class),"transition"===t.eventObj.type))return!1;if(window.requestAnimationFrame(function(e){window.requestAnimationFrame(function(e){n.addClass(t.evt_class)})}),e.after_animation(n,{type:t.eventObj.type,args:[t],cb:function(t){"inview_once"==t.event&&t.waypoint.destroy()}}),"transition"===t.eventObj.type){var i=!1;switch(t.event){case"mouseenter":i="mouseleave";break;case"focus":i="blur"}t.$el.on(i,null,t,function(e){n.removeClass(t.evt_class)})}}},after_animation:function(t,e){var n="transition"==e.type?"transitionend.tvr webkitTransitionEnd.tvr oTransitionEnd.tvr otransitionend.tvr MSTransitionEnd.tvr":"oanimationend.tvr animationend.tvr webkitAnimationEnd.tvr";t.on(n,function(){e.cb.apply(this,e.args),t.off(n)})},refresh_event_binding:function(){if(window.MT_Events_Data&&MT_Events_Data===Object(MT_Events_Data)){MTWaypoint.destroyAll();var n=t(),i=e.customEvents.join(" ");for(var o in e.boundEls)if(e.boundEls.hasOwnProperty(o)){var r=e.boundEls[o],s=e.targetEls[o];r&&"inview"!=o&&"inview_once"!=o&&r.off(i),s&&(n=n.add(s))}n.removeClass(e.eventClasses.join(" "));var a=MT_Events_Data;for(var l in a)if(a.hasOwnProperty(l))for(var h=a[l],p=0;p<h.length;p++){var c=h[p],u=e.jquery_compat(c.code),s=c.target?e.jquery_compat(c.target):u,f="focus"===l?"mt-js_"+l:"mt-"+l,d=l+".tvr-"+c.mqKey;e.boundEls[l]=u,e.targetEls[l]=s,t.inArray(f,e.eventClasses)<0&&e.eventClasses.push(f),"inview"!=l&&"inview_once"!=l&&t.inArray(d,e.customEvents)<0&&e.customEvents.push(d),u&&u.each(function(n){var i=t(this),o=i[0],r={$el:i,target:s,single_target:c.target?s:i,event:l,evt_class:f,custom_event:d,eventObj:c};switch(l){case"click":case"mouseenter":case"focus":i.on(d,null,r,function(t){t.stopPropagation(),e.apply_effect(r)});break;case"inview":case"inview_once":var a=new MTWaypoint.Inview({element:o,group:l,enabled:!1,mt:r,enter:function(t){this.options.mt.waypoint=this,e.apply_effect(this.options.mt)},exit:function(t){"transition"==c.type&&"inview_once"!=l&&this.options.mt.single_target.removeClass(f)}});setTimeout(function(){a.enable()},250)}})}}}};return e}();e.refresh_event_binding(),window.MT_Events_Manager=e});