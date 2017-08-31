require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorPresetColor do
  include ValuePropertyTestMacros

  it_should_use tag: :prstClr, name: "color_preset_color", value: :dodgerBlue

  it_should_have_value_properties :tint_transform, :shade_transform, :complement,
                                  :inverse, :grayscale, :alpha_transform, :alpha_offset,
                                  :alpha_modulation, :hue_transform, :hue_offset, :hue_modulation,
                                  :saturation_transform, :saturation_offset, :saturation_modulation,
                                  :luminance_transform, :luminance_offset, :luminance_modulation,
                                  :red_transform, :red_offset, :red_modulation, :green_transform,
                                  :green_offset, :green_modulation, :blue_transform, :blue_offset,
                                  :blue_modulation, :gamma, :inverse_gamma, value: :dodgerBlue

  with_value(:dodgerBlue) do # Not exhaustive
    it_should_work
    it_should_output "<a:prstClr val=\"dodgerBlue\"/>"
  end

  with_value(:invalid) do
    it_should_not_work
  end
end
