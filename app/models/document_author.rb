class DocumentAuthor < ApplicationRecord
  belongs_to :document
  belongs_to :author
end
