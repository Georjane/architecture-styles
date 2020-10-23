class SectionArticle < ApplicationRecord
    belongs_to :section
    belongs_to :article
end
