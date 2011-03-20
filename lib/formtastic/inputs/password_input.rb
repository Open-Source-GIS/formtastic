require 'inputs/new_base'
require 'inputs/new_base/timeish'

module Formtastic
  module Inputs
    
    # Outputs a simple `<label>` with a `<input type="password">` wrapped in the standard
    # `<li>` wrapper. This is the default input choice for all attributes matching `/password/`, but 
    # can be applied to any text-like input with `:as => :password`.
    #
    # @example Full form context and output
    # 
    #   <%= semantic_form_for(@user) do |f| %>
    #     <%= f.inputs do %>
    #       <%= f.input :password, :as => :password %>
    #     <% end %>
    #   <% end %>
    #
    #   <form...>
    #     <fieldset>
    #       <ol>
    #         <li class="password">
    #           <label for="user_password">Password</label>
    #           <input type="password" id="user_password" name="user[password]">
    #         </li>
    #       </ol>
    #     </fieldset>
    #   </form>
    #
    # @see Formtastic::Helpers::InputsHelper#input InputsHelper#input for full documetation of all possible options.
    class PasswordInput 
      include NewBase
      include NewBase::Stringish
      
      def to_html
        input_wrapping do
          builder.label(method, label_text, label_html_options) <<
          builder.password_field(method, input_html_options)
        end
      end
    end
  end
end