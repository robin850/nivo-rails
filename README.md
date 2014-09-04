# Nivo with Ruby on Rails

NivoSlider is one of the most Javascript slider. There was unfortunately no good integration for Ruby on Rails so I write my own. Feel free to contribute to improve this project if you want.

This gem requires Rails 3.1+ (with the asset pipeline enabled).

## Installation

First, add this to your Gemfile:

~~~ruby
gem 'nivo-rails'
~~~

Then run the `bundle` command to install the gem.

## Usage

This gem provides files required to setup correctly NivoSlider to your site. It requires few lines of code to make a slideshow works. First, edit your `application.css` file and add at the top:

~~~css
*= require nivo
~~~

Just make the same thing in your javascript application file:

~~~coffeescript
# require nivo
~~~

That's it! You can now make slideshows in your web pages easily. The code required by NivoSlider is pretty boring to write. You can simply use the `nivo_slider` helper like that:

~~~erb
<%= nivo_slider id: 'slider' do %>
  <%= image_tag "foo.png", :title => "Caption" %>
  <%= image_tag "bar.png" %>
<% end %>
~~~

If you use turbolinks dont forget add to your JavaScrpt file

~~~javascript
$(document).on('page:change', function () {
    $('#slider').nivoSlider();
});
~~~

Enjoy!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

This project is released under the MIT license. Please see the `LICENSE` file for more information.
