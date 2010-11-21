// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function(){
	
	/*
	 * temp toggle for presentation purposes
	 */
	if($('body').hasClass('home')){
		$('body').prepend('<button id="toggle">toggle</button>')
		$('#toggle').css({
			'position': 'absolute',
			'top': '100px',
			'left': '10px'
		}).click(function(){
			var tuggy = $('section#boats #tug_icon.boat_icon h1');
			$('body').toggleClass('version_2');
			if(tuggy.text() === 'TugFendering' || tuggy.text() === 'Tugfendering'){
				tuggy.replaceWith('<h1>Tug & Utility<span>fendering</span></h1>');
			}else{
				tuggy.replaceWith('<h1>Tug<span>fendering</span></h1>');
			}
		});
	}
	
	
});