module OpenXml
  module DrawingML
    module Elements
      class Extents < OpenXml::DrawingML::Element
        tag :ext

        attribute :extent_length, expects: :positive_integer, displays_as: :cx
        attribute :extent_width, expects: :positive_integer, displays_as: :cy

      end
    end
  end
end
