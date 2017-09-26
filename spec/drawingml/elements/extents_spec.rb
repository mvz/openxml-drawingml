require "spec_helper"

describe OpenXml::DrawingML::Elements::Extents do
  include ElementTestMacros

  it_should_use tag: :ext, name: "extents"

  attributes = { extent_length: :cx, extent_width: :cy }

  for_attribute(:extent_length) do
    with_value(1) do
      it_should_assign_successfully
      it_should_output "<a:ext cx=\"1\"/>"
    end

    with_values([-1, 1.1, :not_a_number]) do
      it_should_raise_an_exception
    end
  end

  for_attribute(:extent_width) do
    with_value(1) do
      it_should_assign_successfully
      it_should_output "<a:ext cy=\"1\"/>"
    end

    with_values([-1, 1.1, :not_a_number]) do
      it_should_raise_an_exception
    end

  end

end
