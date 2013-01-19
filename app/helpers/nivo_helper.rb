module NivoHelper
  def slider(files, hash = {})
    options = { :theme => :default }
    options.merge!(hash)

    content_tag(:div, :class => "slider-wrapper theme-#{options[:theme]}") do
      content_tag(:div, :class => "nivoSlider #{options[:class]}", :id => "#{options[:id]}")
        content = ""

        files.each do |file|
          if file.kind_of?(String)
            content += image_tag file, :data => { :thumb => file }
          elsif file.kind_of?(Array)
            content += image_tag file[0], :data => { :thumb => file[0] },
                                          :title => file[1]
          end
        end

        content
      end
    end

  end
end