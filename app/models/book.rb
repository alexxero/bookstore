class Book < ApplicationRecord

  def self.search(parameter)
    if parameter
      where(["name LIKE ?", "%#{parameter}%"])
    else
      all
    end
  end

end
