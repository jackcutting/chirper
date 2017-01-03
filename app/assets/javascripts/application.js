// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets

jQuery(document).ready(function($){

	var maxChars = 150,
		bodyEle = $('.chirp-body'),
		countEle = $('.chirp-body-count');

	bodyEle.on('keydown keyup change blur focus', function(){
		var charCount = $(this).val().length,
			charRemaining = maxChars - charCount,
			countEleClass = 'success';

		if ( charRemaining > 10 ) {
			countEleClass = 'success';
		} else if ( charRemaining <= 10 && charRemaining >= 0 ) {
			countEleClass = 'warning';
		} else if ( charRemaining < 0 ) {
			countEleClass = 'danger';
		}

		var countEleHtml = '<span class="tag tag-' + countEleClass + '">' + charRemaining + '</span>';

		countEle.html( countEleHtml );
	});

});