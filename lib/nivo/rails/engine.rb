module Nivo
  module Rails
    class Engine < ::Rails::Engine
      initializer 'nivo-rails.assets.precompile' do |app|
        app.config.assets.precompile += %w(default/arrows.png default/bullets.png default/loading.gif)
        app.config.assets.precompile += %w(dark/arrows.png dark/bullets.png dark/loading.gif)
        app.config.assets.precompile += %w(bar/arrows.png bar/bullets.png bar/loading.gif)
        app.config.assets.precompile += %w(light/arrows.png light/bullets.png light/loading.gif)
      end
    end
  end
end