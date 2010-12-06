// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function(){
	
	/*
	 * temp toggle for presentation purposes
	 */
	if($('body').hasClass('home')){
		$('body').prepend('<button id="toggle">toggle main categories</button>')
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
		/*
		$('body').prepend('<button id="toggle2">toggle feature</button>')
		$('#toggle2').css({
			'position': 'absolute',
			'top': '140px',
			'left': '10px'
		}).click(function(){
			var boats_section = $('#boats'),
				feature_section = $('#crossfade');
			$('body').toggleClass('version_2_feature');
			if($('#main section').attr('id')=='boats'){
				$('#boats').insertAfter('#crossfade');
			}else{
				$('#crossfade').insertAfter('#boats');
			}
		});
		*/
	}
	
	
});