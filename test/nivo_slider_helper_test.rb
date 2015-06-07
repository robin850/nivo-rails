require 'test_helper'

class NivoSliderHelperTest < Minitest::Test
  attr_accessor :output_buffer

  include ActionView::Helpers::TagHelper
  include NivoHelper

  def test_with_content_tag_options
    assert_match 'class="foo', nivo_slider(class: "foo")
    assert_match 'id="bar"', nivo_slider(id: "bar")
  end

  def test_automatically_includes_nivoSlider_class
    assert_match 'class="nivoSlider"', nivo_slider
  end

  def test_automatically_includes_slider_id
    assert_match 'id="slider"', nivo_slider
  end

  def test_with_a_block
    assert_match 'foo', nivo_slider { "foo" }
  end

  def test_with_options_and_block
    expected = '<div id="foo" class="nivoSlider">Bar</div>'
    assert_equal expected, nivo_slider(id: "foo") { "Bar" }
  end
end
