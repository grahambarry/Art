class AspectValidator < ActiveModel::EachValidator


  def get_the_aspect_frame()
          dimensions = Paperclip::Geometry.from_file(image.queued_for_write[:original].path)

      if
      (dimensions.width / dimensions.height >= 0.9) && (dimensions.width / dimensions.height <= 1.2)

        self.update_column(:aspect, 3)

elsif
        dimensions.vertical?

        self.update_column(:aspect, 2)

      else
                 dimensions.horizontal?

        self.update_column(:aspect, 1)


      end
    end

