// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require parsley.min
//= require bootbox
//= require_tree .

// this function uses the Bootstrap modals for confirmation and alerts
$(document).ready(function() {
	$.rails.allowAction = function(element) {
	var message = element.data('confirm'),
		answer = false, callback;
	if (!message) { return true; }
 
	if ($.rails.fire(element, 'confirm')) {
		myCustomConfirmBox(message, function() {
			callback = $.rails.fire(element,
				'confirm:complete', [answer]);
				if(callback) {
					var oldAllowAction = $.rails.allowAction;
					$.rails.allowAction = function() { return true; };
					element.trigger('click');
					$.rails.allowAction = oldAllowAction;
				}
			});
		}
		return false;
	}
 
	function myCustomConfirmBox(message, callback) {
		bootbox.confirm(message, function(confirmed) {
		    if(confirmed){
		        callback();
		    }
		});
	}
});