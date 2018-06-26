module UsersHelper
  def datepicker_input form, field
    content_tag :td, :data => {:provide => 'datepicker', 'date-format' => 'dd-mm-yyyy', 'date-autoclose' => 'true'} do
      form.text_field field, class: 'form-control', placeholder: 'DD-MM-YYYY'
    end
  end
end
