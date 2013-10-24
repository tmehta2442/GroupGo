ActionMailer::Base.smtp_settings = {
	:address	=> "smtp.gmail.com",
	:port => 587,
	:domain => "guitardistrict.com",
	:user_name => "tejasrailstest",
	:password => "General2013",
	:authentication => "plain",
	:enable_starttls_auto => true

}