(function($) {

	"use strict";
  
	// Form
	var contactForm = function() {
	  if ($('#contactForm').length > 0) {
		$("#contactForm").validate({
		  rules: {
			name: "required",
			subject: "required",
			email: {
			  required: true,
			  email: true
			},
			phone: {
			  required: true,
			  phoneUS: true
			},
			message: {
			  required: true,
			  minlength: 5
			}
		  },
		  messages: {
			name: "Please enter your name",
			subject: "Please enter your subject",
			email: "Please enter a valid email address",
			phone: "Please enter a valid phone number with country code",
			message: "Please enter a message"
		  },
		  /* submit via ajax */
  
		  submitHandler: function(form) {
			var $submit = $('.submitting'),
			  waitText = 'Submitting...';
  
			// Disable submit button to prevent multiple submissions
			$(form).find(':submit').prop('disabled', true).text(waitText);
  
			$.ajax({
			  type: "POST",
			  url: "sendEmail.php", // Update the URL to the correct PHP file path
			  data: $(form).serialize(),
  
			  beforeSend: function() {
				$submit.css('display', 'block').text(waitText);
			  },
			  success: function(response) {
				if (response === 'OK') {
				  $('#form-message-warning').hide();
				  setTimeout(function() {
					$('#contactForm').fadeIn();
				  }, 1000);
				  setTimeout(function() {
					$('#form-message-success').fadeIn();
				  }, 1400);
  
				  setTimeout(function() {
					 $submit.css('display', 'none').text(waitText);
				  }, 1400);
  
				  setTimeout(function() {
					$('#contactForm')[0].reset();
					$(form).find(':submit').prop('disabled', false).text('Submit'); // Enable the submit button
				  }, 1400);
  
				  setTimeout(function() {
					$('#form-message-success').fadeOut();
				  }, 8000);
				} else {
				  $('#form-message-warning').html(response);
				  $('#form-message-warning').fadeIn();
				  $submit.css('display', 'none');
				  $(form).find(':submit').prop('disabled', false).text('Submit'); // Enable the submit button
				}
			  },
			  error: function(xhr, status, error) {
				console.log(xhr.responseText);
				$('#form-message-warning').html("An error occurred. Please try again later.");
				$('#form-message-warning').fadeIn();
				$submit.css('display', 'none');
				$(form).find(':submit').prop('disabled', false).text('Submit'); // Enable the submit button
			  }
			});
		  } // end submitHandler
  
		});
	  }
	};
	contactForm();
  
})(jQuery);
