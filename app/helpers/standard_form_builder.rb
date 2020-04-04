class StandardFormBuilder < ActionView::Helpers::FormBuilder

  def text_field(method, options={})
    label_text      = options.fetch(:label, method.to_s.humanize)
    label_options   = options.fetch(:label_options, {})
    input_defaults  = { class: "form-control" }
    input_options   = merge_options(input_defaults, options.fetch(:input_options, {}))

    @template.content_tag :div, class: "form-group" do
      @template.label(@object_name, method, label_text, label_options) +
        super(method, input_options)
    end
  end

  private

  def merge_options(defaults, new_options)
    (defaults.keys + new_options.keys).inject({}) {|h,key|
      h[key] = [defaults[key], new_options[key]].compact.join(" ")
      h
    }
  end
end
