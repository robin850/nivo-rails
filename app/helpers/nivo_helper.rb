module NivoHelper
  # Convenient helper to create a div for your slider. The method's
  # definition is similar to Action View's `content_tag` helper.
  # It doesn't escape the given content by default though.
  def nivo_slider(content_or_options = nil, options = {}, escape = false, &block)
    # We are just keeping the two arguments to match Action View's
    # definition of `content_tag` but the first argument isn't
    # considered as the content if it's a Hash object.
    if content_or_options.kind_of?(Hash)
      options.merge!(content_or_options)
    end

    options[:class] ? options[:class] << " nivoSlider" : options[:class] = "nivoSlider"
    options[:id] ||= "slider"

    if content_or_options.kind_of?(Hash) && !block_given?
      content_tag_string(:div, "", options, escape)
    elsif block_given?
      content_tag_string(:div, capture(&block), options, escape)
    else
      content_tag_string(:div, content_or_options, options, escape)
    end
  end
end
