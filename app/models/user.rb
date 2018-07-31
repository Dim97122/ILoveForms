class User < ApplicationRecord
  validates :username, uniqueness: {:message => "Mais vas-y! T'es déjà inscrit Calay!!!"}
  validates :username, format:     {:without => /\s/,
    :message => "Only allows letters" }
end
