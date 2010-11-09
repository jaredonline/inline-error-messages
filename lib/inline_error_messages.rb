# InlineErrorMessages

module ActionView
  
  module Helpers
    class InstanceTag
      
      def error_wrapping(html_tag, has_error)
        if has_error
          if html_tag =~ /^<label/ || html_tag =~ /type="hidden"/
                "<span class=\"errorLabel\">#{html_tag}</span>"
          else
            if has_error.respond_to?("join")
              has_error = has_error.join('<br />')
            end
           "<div class=\"formError\">#{html_tag} <span class=\"errorMessages\">#{has_error}</span></div>"
          end
        else
          html_tag
        end
      end
      
    end
  end
end