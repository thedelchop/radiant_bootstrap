jQuery(document).ready(function(){
	jQuery('#tab_toolbar').remove();
	jQuery('img[title^=Remove]').remove();
	jQuery('.set').remove();
	jQuery('.part').children('p').hide();
	jQuery('.drawer').hide();
});

jQuery(window).load(function(){
	jQuery('.wym_tools_html').hide();
});
