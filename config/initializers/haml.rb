ActiveSupport.on_load :action_view do
  Haml::Template.options[:format] = :xhtml
end