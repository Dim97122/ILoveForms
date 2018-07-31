class User < ApplicationRecord
  validates :username, uniqueness: {:message => "Mais vas-y! T'es déjà inscrit Calay!!!"}
end
