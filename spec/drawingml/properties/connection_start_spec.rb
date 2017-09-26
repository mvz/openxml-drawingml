require "spec_helper"

describe OpenXml::DrawingML::Properties::ConnectionStart do
  include PropertyTestMacros

  it_should_use tag: :stCxn, name: "connection_start"

  %i{ id index }.each do |positive_integer_attr|
    for_attribute(positive_integer_attr) do
      with_value(100) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end

      [-100, :invalid].each do |bad_value|
        with_value(bad_value) do
          it_should_raise_an_exception
        end
      end
    end
  end
end
