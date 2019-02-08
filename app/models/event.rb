class Event < ApplicationRecord

  scope :nome, -> nome{where("name LIKE ?", "%#{nome}%")}

end
