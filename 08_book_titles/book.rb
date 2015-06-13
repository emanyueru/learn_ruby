class Book

  def title=(title)

    str = title.split

    str.each do |x|

      unless %w(the a and an in on of).include? (x)

        x.capitalize!

      end
    end

    str[0].capitalize!

    @title = str.join(" ")

  end

  def title

    @title

  end

end