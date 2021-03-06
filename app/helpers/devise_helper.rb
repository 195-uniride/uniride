module DeviseHelper
  def devise_error_messages!
    return '' if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    html = <<-HTML
    <div class="alert alert-error alert-danger"> <button type="button"
    class="close" data-dismiss="alert"> × </button>
      #{messages}
    </div>
    <script>      
      $(".close").click(function(){
        $(".alert-error").hide();
      });
    </script>
    HTML

    html.html_safe
  end
end