# Nivo Slider with Ruby on Rails

Nivo Slider is one of the most popular JavaScript slider. This gem provides
integration with Ruby on Rails.

## Installation

First, add this to your Gemfile:

~~~ruby
gem 'nivo-rails'
~~~

Then run the `bundle` command to install the gem.

## Usage

This gem provides files required to setup correctly NivoSlider on your site.
It requires a few lines of code to setup a slideshow. First, make sure to
import the CSS file:

~~~css
/* Inside a normal application.css file
 *= require nivo
 */
~~~

~~~sass
// Inside an application.scss or application.sass
@import "nivo";
~~~

And then import the JavaScript file as well:

~~~javascript
//= require nivo
~~~

You can now easily add slideshows in your web pages. To avoid writing all the
boilerplate needed by Nivo Slider, you can rely on the `nivo_slider` tag:

~~~erb
<%= nivo_slider id: "slider" do %>
  <%= image_tag "foo.png", title: "A very nice photo!" %>
  <%= image_tag "bar.png" %>
<% end %>
~~~

This helper behaves like Action View's `content_tag` helper apart from the fact that
it **doesn't** escape the provided content by default. It also sets the div's id
to `"slider"` by default and adds a `nivoSlider` class as well.

If you want to set a theme, you should wrap the `nivo_slider` call with a `div` element
with the proper class:

~~~erb
<div class="theme-dark">
  <%= nivo_slider id: "slider" do %>
    <!-- ... ->
  <% end %>
</div>
~~~

Make sure then to initialize Nivo Slider on the given element:

~~~javascript
$(window).load(function() {
  $('#slider').nivoSlider();
});

// Or if you are using Turbolinks
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

This project is released under the MIT license. Please see the `LICENSE` file for
more information.
