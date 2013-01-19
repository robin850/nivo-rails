module NivoHelper
  def nivo_slider(hash = {}, &block)
    options = { :theme => :default, :id => "" }
    options.merge!(hash)
    klass = "slide-wrapper theme-#{options[:theme]}"
    id = options[:id]

    content_tag(:div, :class => klass) do
      content_tag(:div, :id => id, :class => "nivoSlider #{options[:class]}") do
        yield
      end
    end

  end
end