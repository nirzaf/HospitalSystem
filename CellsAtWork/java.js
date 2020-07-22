
$(document).ready(function () {

	
    $('.carousel').carousel({
        interval: 3000,
        pause: null
    });
	
	$(window).scroll(function(){
			
			if($(this).scrollTop()<=500){
				$("#h").css("backgroundColor","#00001111");
			}else{
				$("#h").css("backgroundColor","#91cde0");	
			}
			
    });
  
	
	new WOW().init();
	
		    
            var containerEl = document.querySelector('[data-ref~="mixitup-container"]');
            var mixer = mixitup(containerEl, {
                selectors: {
                    target: '[data-ref~="mixitup-target"]'
                }
            });
			
			//counter
		
    $('.count').each(function () {
        
            $(this).prop('Counter', 0).animate({
                Counter: $(this).text()
            }, {
                    duration: 2000,
                    easing: 'swing',
                    step: function (now) {
                        $(this).text(Math.ceil(now));
                    }
                });
        
    });
		
			
	
});


$(window).on("load",function(){
	
	$("#loading").fadeOut(3000);
	
	$("#myimg").fadeOut(3000);
	
});
