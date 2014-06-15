require 'rails_helper'

describe Application::TagHelper do
  describe '#html_tag' do
    let(:conditional_html_tags) {
      <<-markup
<!--[if IE 7]> <html class="ie7 ie no-js" lang="de"> <![endif]-->
<!--[if IE 8]> <html class="ie8 ie no-js" lang="de"> <![endif]-->
<!--[if IE 9]> <html class="ie9 ie no-js" lang="de"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html class='no-js' lang='de'> <!--<![endif]-->
      markup
    }

    it 'requires a block' do
      expect { helper.html_tag }.to raise_error
    end
  end
end