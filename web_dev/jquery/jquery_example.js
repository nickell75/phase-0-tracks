$(document).ready(function(){
	$('#button1').click(function(){	
    	animateDiv();
  		animateDivTwo();
  	}); 
  	$('#button2').click(function(){
  		$('.b').fadeIn(300);
  		$('div.b').attr('class', 'a');  
  		animateDiv();
  		animateDivTwo();	
  	});
});
function makeNewPosition(){    
	var h = $(window).height() - 50;
    var w = $(window).width() - 50;
    var nh = Math.floor(Math.random() * h);
    var nw = Math.floor(Math.random() * w);    
    return [nh,nw];        
}
function animateDiv(element){
    var newq = makeNewPosition();
    var oldq = $('.a').offset();
    var speed = calcSpeed([oldq.top, oldq.left], newq);
    
    $(element).animate({ top: newq[0], left: newq[1] }, speed, function(){
      animateDiv(element);        
    });    
};
function animateDivTwo(){
    var newq = makeNewPosition();
    var oldq = $('.a').offset();
    var speed = calcSpeed([oldq.top, oldq.left], newq);
    
    $('.a').animate({ top: newq[0], left: newq[1] }, speed, function(){
      animateDiv(this);        
    });    
};
function calcSpeed(prev, next) {    
    var x = Math.abs(prev[1] - next[1]);
    var y = Math.abs(prev[0] - next[0]);
    
    var greatest = x > y ? x : y;    
    var speedModifier = .1;
    var speed = Math.ceil(greatest/speedModifier);

    return speed;
}