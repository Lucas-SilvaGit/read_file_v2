class Person < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.   # Fala ao rails para usar esse uploader para esse modell
  validates :name, presence: true # Make sure the owner's name is present.   # Verifica se o nome da pessoa existe

end
