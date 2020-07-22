var searchVisible = 0;
var transparent = true;
var mobile_device = false;

$(document).ready(function(){

    $.material.init();

    /*  Activate the tooltips      */
    $('[rel="tooltip"]').tooltip();

    // Wizard Initialization
  	$('.wizard-card').bootstrapWizard({
        'tabClass': 'nav nav-pills',
        'nextSelector': '.btn-next',
        'previousSelector': '.btn-previous',

        onNext: function(tab, navigation, index) {
        	var $valid = $('.wizard-card form').valid();
        	if(!$valid) {
        		return false;
        	}
        },

        onInit : function(tab, navigation, index){
            //check number of tabs and fill the entire row
            var $total = navigation.find('li').length;
            var $wizard = navigation.closest('.wizard-card');

            $first_li = navigation.find('li:first-child a').html();
            $moving_div = $('<div class="moving-tab">' + $first_li + '</div>');
            $('.wizard-card .wizard-navigation').append($moving_div);

            refreshAnimation($wizard, index);

            $('.moving-tab').css('transition','transform 0s');
       },

        onTabClick : function(tab, navigation, index){
            var $valid = $('.wizard-card form').valid();

            if(!$valid){
                return false;
            } else{
                return true;
            }
        },

        onTabShow: function(tab, navigation, index) {
            var $total = navigation.find('li').length;
            var $current = index+1;

            var $wizard = navigation.closest('.wizard-card');

            // If it's the last tab then hide the last button and show the finish instead
            if($current >= $total) {
                $($wizard).find('.btn-next').hide();
                $($wizard).find('.btn-finish').show();
            } else {
                $($wizard).find('.btn-next').show();
                $($wizard).find('.btn-finish').hide();
            }

            button_text = navigation.find('li:nth-child(' + $current + ') a').html();

            setTimeout(function(){
                $('.moving-tab').text(button_text);
            }, 150);

            var checkbox = $('.footer-checkbox');

            if( !index == 0 ){
                $(checkbox).css({
                    'opacity':'0',
                    'visibility':'hidden',
                    'position':'absolute'
                });
            } else {
                $(checkbox).css({
                    'opacity':'1',
                    'visibility':'visible'
                });
            }

            refreshAnimation($wizard, index);
        }
  	});


    // Prepare the preview for profile picture
    $("#wizard-picture").change(function(){
        readURL(this);
    });

    $('[data-toggle="wizard-radio"]').click(function(){
        wizard = $(this).closest('.wizard-card');
        wizard.find('[data-toggle="wizard-radio"]').removeClass('active');
        $(this).addClass('active');
        $(wizard).find('[type="radio"]').removeAttr('checked');
        $(this).find('[type="radio"]').attr('checked','true');
    });

    $('[data-toggle="wizard-checkbox"]').click(function(){
        if( $(this).hasClass('active')){
            $(this).removeClass('active');
            $(this).find('[type="checkbox"]').removeAttr('checked');
        } else {
            $(this).addClass('active');
            $(this).find('[type="checkbox"]').attr('checked','true');
        }
    });

    $('.set-full-height').css('height', 'auto');

});



 //Function to show image before upload

function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#wizardPicturePreview').attr('src', e.target.result).fadeIn('slow');
        }
        reader.readAsDataURL(input.files[0]);
    }
}

$(window).resize(function(){
    $('.wizard-card').each(function(){
        $wizard = $(this);

        index = $wizard.bootstrapWizard('currentIndex');
        refreshAnimation($wizard, index);

        $('.moving-tab').css({
            'transition': 'transform 0s'
        });
    });
});

function refreshAnimation($wizard, index){
    $total = $wizard.find('.nav li').length;
    $li_width = 100/$total;

    total_steps = $wizard.find('.nav li').length;
    move_distance = $wizard.width() / total_steps;
    index_temp = index;
    vertical_level = 0;

    mobile_device = $(document).width() < 600 && $total > 3;

    if(mobile_device){
        move_distance = $wizard.width() / 2;
        index_temp = index % 2;
        $li_width = 50;
    }

    $wizard.find('.nav li').css('width',$li_width + '%');

    step_width = move_distance;
    move_distance = move_distance * index_temp;

    $current = index + 1;

    if($current == 1 || (mobile_device == true && (index % 2 == 0) )){
        move_distance -= 8;
    } else if($current == total_steps || (mobile_device == true && (index % 2 == 1))){
        move_distance += 8;
    }

    if(mobile_device){
        vertical_level = parseInt(index / 2);
        vertical_level = vertical_level * 38;
    }

    $wizard.find('.moving-tab').css('width', step_width);
    $('.moving-tab').css({
        'transform':'translate3d(' + move_distance + 'px, ' + vertical_level +  'px, 0)',
        'transition': 'all 0.5s cubic-bezier(0.29, 1.42, 0.79, 1)'

    });
}

materialDesign = {

    checkScrollForTransparentNavbar: debounce(function() {
                if($(document).scrollTop() > 260 ) {
                    if(transparent) {
                        transparent = false;
                        $('.navbar-color-on-scroll').removeClass('navbar-transparent');
                    }
                } else {
                    if( !transparent ) {
                        transparent = true;
                        $('.navbar-color-on-scroll').addClass('navbar-transparent');
                    }
                }
        }, 17)

}

function debounce(func, wait, immediate) {
	var timeout;
	return function() {
		var context = this, args = arguments;
		clearTimeout(timeout);
		timeout = setTimeout(function() {
			timeout = null;
			if (!immediate) func.apply(context, args);
		}, wait);
		if (immediate && !timeout) func.apply(context, args);
	};
};



;(function($) {
    var bootstrapWizardCreate = function(element, options) {
        var element = $(element);
        var obj = this;
    
        // selector skips any 'li' elements that do not contain a child with a tab data-toggle
        var baseItemSelector = 'li:has([data-toggle="tab"])';
    
        // Merge options with defaults
        var $settings = $.extend({}, $.fn.bootstrapWizard.defaults, options);
        var $activeTab = null;
        var $navigation = null;
    
        this.rebindClick = function(selector, fn)
        {
            selector.unbind('click', fn).bind('click', fn);
        }
    
        this.fixNavigationButtons = function() {
            // Get the current active tab
            if(!$activeTab.length) {
                // Select first one
                $navigation.find('a:first').tab('show');
                $activeTab = $navigation.find(baseItemSelector + ':first');
            }
    
            // See if we're currently in the first/last then disable the previous and last buttons
            $($settings.previousSelector, element).toggleClass('disabled', (obj.firstIndex() >= obj.currentIndex()));
            $($settings.nextSelector, element).toggleClass('disabled', (obj.currentIndex() >= obj.navigationLength()));
    
            // We are unbinding and rebinding to ensure single firing and no double-click errors
            obj.rebindClick($($settings.nextSelector, element), obj.next);
            obj.rebindClick($($settings.previousSelector, element), obj.previous);
            obj.rebindClick($($settings.lastSelector, element), obj.last);
            obj.rebindClick($($settings.firstSelector, element), obj.first);
    
            if($settings.onTabShow && typeof $settings.onTabShow === 'function' && $settings.onTabShow($activeTab, $navigation, obj.currentIndex())===false){
                return false;
            }
        };
    
        this.next = function(e) {
    
            // If we clicked the last then dont activate this
            if(element.hasClass('last')) {
                return false;
            }
    
            if($settings.onNext && typeof $settings.onNext === 'function' && $settings.onNext($activeTab, $navigation, obj.nextIndex())===false){
                return false;
            }
    
            // Did we click the last button
            $index = obj.nextIndex();
            if($index > obj.navigationLength()) {
            } else {
                $navigation.find(baseItemSelector + ':eq('+$index+') a').tab('show');
            }
        };
    
        this.previous = function(e) {
    
            // If we clicked the first then dont activate this
            if(element.hasClass('first')) {
                return false;
            }
    
            if($settings.onPrevious && typeof $settings.onPrevious === 'function' && $settings.onPrevious($activeTab, $navigation, obj.previousIndex())===false){
                return false;
            }
    
            $index = obj.previousIndex();
            if($index < 0) {
            } else {
                $navigation.find(baseItemSelector + ':eq('+$index+') a').tab('show');
            }
        };
    
        this.first = function(e) {
            if($settings.onFirst && typeof $settings.onFirst === 'function' && $settings.onFirst($activeTab, $navigation, obj.firstIndex())===false){
                return false;
            }
    
            // If the element is disabled then we won't do anything
            if(element.hasClass('disabled')) {
                return false;
            }
            $navigation.find(baseItemSelector + ':eq(0) a').tab('show');
    
        };
        this.last = function(e) {
            if($settings.onLast && typeof $settings.onLast === 'function' && $settings.onLast($activeTab, $navigation, obj.lastIndex())===false){
                return false;
            }
    
            // If the element is disabled then we won't do anything
            if(element.hasClass('disabled')) {
                return false;
            }
            $navigation.find(baseItemSelector + ':eq('+obj.navigationLength()+') a').tab('show');
        };
        this.currentIndex = function() {
            return $navigation.find(baseItemSelector).index($activeTab);
        };
        this.firstIndex = function() {
            return 0;
        };
        this.lastIndex = function() {
            return obj.navigationLength();
        };
        this.getIndex = function(e) {
            return $navigation.find(baseItemSelector).index(e);
        };
        this.nextIndex = function() {
            return $navigation.find(baseItemSelector).index($activeTab) + 1;
        };
        this.previousIndex = function() {
            return $navigation.find(baseItemSelector).index($activeTab) - 1;
        };
        this.navigationLength = function() {
            return $navigation.find(baseItemSelector).length - 1;
        };
        this.activeTab = function() {
            return $activeTab;
        };
        this.nextTab = function() {
            return $navigation.find(baseItemSelector + ':eq('+(obj.currentIndex()+1)+')').length ? $navigation.find(baseItemSelector + ':eq('+(obj.currentIndex()+1)+')') : null;
        };
        this.previousTab = function() {
            if(obj.currentIndex() <= 0) {
                return null;
            }
            return $navigation.find(baseItemSelector + ':eq('+parseInt(obj.currentIndex()-1)+')');
        };
        this.show = function(index) {
            if (isNaN(index)) {
                return element.find(baseItemSelector + ' a[href=#' + index + ']').tab('show');
            }
            else {
                return element.find(baseItemSelector + ':eq(' + index + ') a').tab('show');
            }
        };
        this.disable = function(index) {
            $navigation.find(baseItemSelector + ':eq('+index+')').addClass('disabled');
        };
        this.enable = function(index) {
            $navigation.find(baseItemSelector + ':eq('+index+')').removeClass('disabled');
        };
        this.hide = function(index) {
            $navigation.find(baseItemSelector + ':eq('+index+')').hide();
        };
        this.display = function(index) {
            $navigation.find(baseItemSelector + ':eq('+index+')').show();
        };
        this.remove = function(args) {
            var $index = args[0];
            var $removeTabPane = typeof args[1] != 'undefined' ? args[1] : false;
            var $item = $navigation.find(baseItemSelector + ':eq('+$index+')');
    
            // Remove the tab pane first if needed
            if($removeTabPane) {
                var $href = $item.find('a').attr('href');
                $($href).remove();
            }
    
            // Remove menu item
            $item.remove();
        };
    
        var innerTabClick = function (e) {
            // Get the index of the clicked tab
            var clickedIndex = $navigation.find(baseItemSelector).index($(e.currentTarget).parent(baseItemSelector));
            if($settings.onTabClick && typeof $settings.onTabClick === 'function' && $settings.onTabClick($activeTab, $navigation, obj.currentIndex(), clickedIndex)===false){
                return false;
            }
        };
    
        var innerTabShown = function (e) {  // use shown instead of show to help prevent double firing
            $element = $(e.target).parent();
            var nextTab = $navigation.find(baseItemSelector).index($element);
    
            // If it's disabled then do not change
            if($element.hasClass('disabled')) {
                return false;
            }
    
            if($settings.onTabChange && typeof $settings.onTabChange === 'function' && $settings.onTabChange($activeTab, $navigation, obj.currentIndex(), nextTab)===false){
                    return false;
            }
    
            $activeTab = $element; // activated tab
            obj.fixNavigationButtons();
        };
    
        this.resetWizard = function() {
    
            // remove the existing handlers
            $('a[data-toggle="tab"]', $navigation).off('click', innerTabClick);
            $('a[data-toggle="tab"]', $navigation).off('shown shown.bs.tab', innerTabShown);
    
            // reset elements based on current state of the DOM
            $navigation = element.find('ul:first', element);
            $activeTab = $navigation.find(baseItemSelector + '.active', element);
    
            // re-add handlers
            $('a[data-toggle="tab"]', $navigation).on('click', innerTabClick);
            $('a[data-toggle="tab"]', $navigation).on('shown shown.bs.tab', innerTabShown);
    
            obj.fixNavigationButtons();
        };
    
        $navigation = element.find('ul:first', element);
        $activeTab = $navigation.find(baseItemSelector + '.active', element);
    
        if(!$navigation.hasClass($settings.tabClass)) {
            $navigation.addClass($settings.tabClass);
        }
    
        // Load onInit
        if($settings.onInit && typeof $settings.onInit === 'function'){
            $settings.onInit($activeTab, $navigation, 0);
        }
    
        // Load onShow
        if($settings.onShow && typeof $settings.onShow === 'function'){
            $settings.onShow($activeTab, $navigation, obj.nextIndex());
        }
    
        $('a[data-toggle="tab"]', $navigation).on('click', innerTabClick);
    
        // attach to both shown and shown.bs.tab to support Bootstrap versions 2.3.2 and 3.0.0
        $('a[data-toggle="tab"]', $navigation).on('shown shown.bs.tab', innerTabShown);
    };

        $.fn.bootstrapWizard = function(options) {
        //expose methods
        if (typeof options == 'string') {
            var args = Array.prototype.slice.call(arguments, 1)
            if(args.length === 1) {
                args.toString();
            }
            return this.data('bootstrapWizard')[options](args);
        }
        return this.each(function(index){
            var element = $(this);
            // Return early if this element already has a plugin instance
            if (element.data('bootstrapWizard')) return;
            // pass options to plugin constructor
            var wizard = new bootstrapWizardCreate(element, options);
            // Store plugin object in this element's data
            element.data('bootstrapWizard', wizard);
            // and then trigger initial change
            wizard.fixNavigationButtons();
        });
    };
    // expose options
    $.fn.bootstrapWizard.defaults = {
        tabClass:         'nav nav-pills',
        nextSelector:     '.wizard li.next',
        previousSelector: '.wizard li.previous',
        firstSelector:    '.wizard li.first',
        lastSelector:     '.wizard li.last',
        onShow:           null,
        onInit:           null,
        onNext:           null,
        onPrevious:       null,
        onLast:           null,
        onFirst:          null,
        onTabChange:      null,
        onTabClick:       null,
        onTabShow:        null
    };
    
    })(jQuery);
    
    
    //  Material Design Core Functions
    
     !function(t){function o(t){return"undefined"==typeof t.which?!0:"number"==typeof t.which&&t.which>0?!t.ctrlKey&&!t.metaKey&&!t.altKey&&8!=t.which&&9!=t.which&&13!=t.which&&16!=t.which&&17!=t.which&&20!=t.which&&27!=t.which:!1}function i(o){var i=t(o);i.prop("disabled")||i.closest(".form-group").addClass("is-focused")}function n(o){o.closest("label").hover(function(){var o=t(this).find("input");o.prop("disabled")||i(o)},function(){e(t(this).find("input"))})}function e(o){t(o).closest(".form-group").removeClass("is-focused")}t.expr[":"].notmdproc=function(o){return t(o).data("mdproc")?!1:!0},t.material={options:{validate:!0,input:!0,ripples:!0,checkbox:!0,togglebutton:!0,radio:!0,arrive:!0,autofill:!1,withRipples:[".btn:not(.btn-link)",".card-image",".navbar a:not(.withoutripple)",".footer a:not(.withoutripple)",".dropdown-menu a",".nav-tabs a:not(.withoutripple)",".withripple",".pagination li:not(.active):not(.disabled) a:not(.withoutripple)"].join(","),inputElements:"input.form-control, textarea.form-control, select.form-control",checkboxElements:".checkbox > label > input[type=checkbox]",togglebuttonElements:".togglebutton > label > input[type=checkbox]",radioElements:".radio > label > input[type=radio]"},checkbox:function(o){var i=t(o?o:this.options.checkboxElements).filter(":notmdproc").data("mdproc",!0).after("<span class='checkbox-material'><span class='check'></span></span>");n(i)},togglebutton:function(o){var i=t(o?o:this.options.togglebuttonElements).filter(":notmdproc").data("mdproc",!0).after("<span class='toggle'></span>");n(i)},radio:function(o){var i=t(o?o:this.options.radioElements).filter(":notmdproc").data("mdproc",!0).after("<span class='circle'></span><span class='check'></span>");n(i)},input:function(o){t(o?o:this.options.inputElements).filter(":notmdproc").data("mdproc",!0).each(function(){var o=t(this),i=o.closest(".form-group");0===i.length&&(o.wrap("<div class='form-group'></div>"),i=o.closest(".form-group")),o.attr("data-hint")&&(o.after("<p class='help-block'>"+o.attr("data-hint")+"</p>"),o.removeAttr("data-hint"));var n={"input-lg":"form-group-lg","input-sm":"form-group-sm"};if(t.each(n,function(t,n){o.hasClass(t)&&(o.removeClass(t),i.addClass(n))}),o.hasClass("floating-label")){var e=o.attr("placeholder");o.attr("placeholder",null).removeClass("floating-label");var a=o.attr("id"),r="";a&&(r="for='"+a+"'"),i.addClass("label-floating"),o.after("<label "+r+"class='control-label'>"+e+"</label>")}(null===o.val()||"undefined"==o.val()||""===o.val())&&i.addClass("is-empty"),i.append("<span class='material-input'></span>"),i.find("input[type=file]").length>0&&i.addClass("is-fileinput")})},attachInputEventHandlers:function(){var n=this.options.validate;t(document).on("change",".checkbox input[type=checkbox]",function(){t(this).blur()}).on("keydown paste",".form-control",function(i){o(i)&&t(this).closest(".form-group").removeClass("is-empty")}).on("keyup change",".form-control",function(){var o=t(this),i=o.closest(".form-group"),e="undefined"==typeof o[0].checkValidity||o[0].checkValidity();""===o.val()?i.addClass("is-empty"):i.removeClass("is-empty"),n&&(e?i.removeClass("has-error"):i.addClass("has-error"))}).on("focus",".form-control, .form-group.is-fileinput",function(){i(this)}).on("blur",".form-control, .form-group.is-fileinput",function(){e(this)}).on("change",".form-group input",function(){var o=t(this);if("file"!=o.attr("type")){var i=o.closest(".form-group"),n=o.val();n?i.removeClass("is-empty"):i.addClass("is-empty")}}).on("change",".form-group.is-fileinput input[type='file']",function(){var o=t(this),i=o.closest(".form-group"),n="";t.each(this.files,function(t,o){n+=o.name+", "}),n=n.substring(0,n.length-2),n?i.removeClass("is-empty"):i.addClass("is-empty"),i.find("input.form-control[readonly]").val(n)})},ripples:function(o){t(o?o:this.options.withRipples).ripples()},autofill:function(){var o=setInterval(function(){t("input[type!=checkbox]").each(function(){var o=t(this);o.val()&&o.val()!==o.attr("value")&&o.trigger("change")})},100);setTimeout(function(){clearInterval(o)},1e4)},attachAutofillEventHandlers:function(){var o;t(document).on("focus","input",function(){var i=t(this).parents("form").find("input").not("[type=file]");o=setInterval(function(){i.each(function(){var o=t(this);o.val()!==o.attr("value")&&o.trigger("change")})},100)}).on("blur",".form-group input",function(){clearInterval(o)})},init:function(o){this.options=t.extend({},this.options,o);var i=t(document);t.fn.ripples&&this.options.ripples&&this.ripples(),this.options.input&&(this.input(),this.attachInputEventHandlers()),this.options.checkbox&&this.checkbox(),this.options.togglebutton&&this.togglebutton(),this.options.radio&&this.radio(),this.options.autofill&&(this.autofill(),this.attachAutofillEventHandlers()),document.arrive&&this.options.arrive&&(t.fn.ripples&&this.options.ripples&&i.arrive(this.options.withRipples,function(){t.material.ripples(t(this))}),this.options.input&&i.arrive(this.options.inputElements,function(){t.material.input(t(this))}),this.options.checkbox&&i.arrive(this.options.checkboxElements,function(){t.material.checkbox(t(this))}),this.options.radio&&i.arrive(this.options.radioElements,function(){t.material.radio(t(this))}),this.options.togglebutton&&i.arrive(this.options.togglebuttonElements,function(){t.material.togglebutton(t(this))}))}}}(jQuery),function(t,o,i,n){"use strict";function e(o,i){r=this,this.element=t(o),this.options=t.extend({},s,i),this._defaults=s,this._name=a,this.init()}var a="ripples",r=null,s={};e.prototype.init=function(){var i=this.element;i.on("mousedown touchstart",function(n){if(!r.isTouch()||"mousedown"!==n.type){i.find(".ripple-container").length||i.append('<div class="ripple-container"></div>');var e=i.children(".ripple-container"),a=r.getRelY(e,n),s=r.getRelX(e,n);if(a||s){var l=r.getRipplesColor(i),p=t("<div></div>");p.addClass("ripple").css({left:s,top:a,"background-color":l}),e.append(p),function(){return o.getComputedStyle(p[0]).opacity}(),r.rippleOn(i,p),setTimeout(function(){r.rippleEnd(p)},500),i.on("mouseup mouseleave touchend",function(){p.data("mousedown","off"),"off"===p.data("animating")&&r.rippleOut(p)})}}})},e.prototype.getNewSize=function(t,o){return Math.max(t.outerWidth(),t.outerHeight())/o.outerWidth()*2.5},e.prototype.getRelX=function(t,o){var i=t.offset();return r.isTouch()?(o=o.originalEvent,1===o.touches.length?o.touches[0].pageX-i.left:!1):o.pageX-i.left},e.prototype.getRelY=function(t,o){var i=t.offset();return r.isTouch()?(o=o.originalEvent,1===o.touches.length?o.touches[0].pageY-i.top:!1):o.pageY-i.top},e.prototype.getRipplesColor=function(t){var i=t.data("ripple-color")?t.data("ripple-color"):o.getComputedStyle(t[0]).color;return i},e.prototype.hasTransitionSupport=function(){var t=i.body||i.documentElement,o=t.style,e=o.transition!==n||o.WebkitTransition!==n||o.MozTransition!==n||o.MsTransition!==n||o.OTransition!==n;return e},e.prototype.isTouch=function(){return/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)},e.prototype.rippleEnd=function(t){t.data("animating","off"),"off"===t.data("mousedown")&&r.rippleOut(t)},e.prototype.rippleOut=function(t){t.off(),r.hasTransitionSupport()?t.addClass("ripple-out"):t.animate({opacity:0},100,function(){t.trigger("transitionend")}),t.on("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd",function(){t.remove()})},e.prototype.rippleOn=function(t,o){var i=r.getNewSize(t,o);r.hasTransitionSupport()?o.css({"-ms-transform":"scale("+i+")","-moz-transform":"scale("+i+")","-webkit-transform":"scale("+i+")",transform:"scale("+i+")"}).addClass("ripple-on").data("animating","on").data("mousedown","on"):o.animate({width:2*Math.max(t.outerWidth(),t.outerHeight()),height:2*Math.max(t.outerWidth(),t.outerHeight()),"margin-left":-1*Math.max(t.outerWidth(),t.outerHeight()),"margin-top":-1*Math.max(t.outerWidth(),t.outerHeight()),opacity:.2},500,function(){o.trigger("transitionend")})},t.fn.ripples=function(o){return this.each(function(){t.data(this,"plugin_"+a)||t.data(this,"plugin_"+a,new e(this,o))})}}(jQuery,window,document);
    