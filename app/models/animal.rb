class Animal < ApplicationRecord

def self.search(animal)
  if animal
    where('Species LIKE ? OR Breed LIKE ? OR Status LIKE ? OR Price LIKE ?', "%#{animal}%","%#{animal}%","%#{animal}%","%#{animal}%").order('id DESC')
    #where('Breed LIKE ?', "%#{animal}%").order('id DESC')
    #where('Status LIKE ?', "%#{animal}%").order('id DESC')
    #where('Price LIKE ?', "%#{animal}%").order('id DESC')
  else
    order('id DESC') 
  end
end
end
