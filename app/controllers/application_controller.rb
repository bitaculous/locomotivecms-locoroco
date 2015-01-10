class ApplicationController < ActionController::Base
  # A feature in Rails that protects against Cross-site Request Forgery (CSRF) attacks. This feature makes all generated
  # forms have a hidden `id` field. This field must match the stored id or the form submission is not accepted. This
  # prevents malicious forms on other sites or forms inserted with XSS from submitting to the Rails application.
  protect_from_forgery
end