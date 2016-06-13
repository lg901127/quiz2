class Support < ActiveRecord::Base
  def self.search(content)
    where("name LIKE :word OR email LIKE :word OR department LIKE :word OR message LIKE :word", {word: "%#{content}%"} )
  end
end
