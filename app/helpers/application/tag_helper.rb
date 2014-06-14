module Application
  module TagHelper
    # Generates html tag with conditional classes for IE. We're just conditionally adding an extra class onto the html tag.
    # This allows us to keep our browser-specific css in the same file. For more information see Paul Irish's blog post
    # [Conditional stylesheets vs CSS hacks? Answer: Neither!] (http://paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither).
    #
    # @param attributes [Hash] Optional attributes used to refine the html tag.
    # @return [String] The generate HTML.
    def html_tag(attributes = {}, &block)
      if block_given?
        attributes.symbolize_keys!

        conditional_tags = <<-HTML.gsub(/^\s+/, '').strip
          <!--[if IE 7]> #{tag(:html, merge_attributes('ie7 ie', attributes), true)} <![endif]-->
          <!--[if IE 8]> #{tag(:html, merge_attributes('ie8 ie', attributes), true)} <![endif]-->
          <!--[if IE 9]> #{tag(:html, merge_attributes('ie9 ie', attributes), true)} <![endif]-->
          <!--[if (gt IE 9)|!(IE)]><!-->
        HTML

        if defined? Haml && block_is_haml?(block)
          haml_concat conditional_tags.html_safe

          haml_tag :html, attributes do
            haml_concat '<!--<![endif]-->'.html_safe

            yield
          end
        else
          html = conditional_tags.html_safe
          html << tag(:html, attributes, true)
          html << '<!--<![endif]-->'.html_safe

          html
        end
      else
        raise '“html_tag” requires a block.'
      end
    end

    private

    # Merges attributes.
    #
    # @param css_classes [String] CSS classes separated by space.
    # @param attributes [Hash] Optional attributes.
    # @return [Hash] The merged attributes.
    # @see ApplicationHelper#html_tag
    def merge_attributes(css_classes, attributes = {})
      classes = attributes[:class] || ''
      classes.strip!
      classes = " #{classes}" if classes.present?
      classes = css_classes + classes
      attributes.merge(class: classes)
    end
  end
end