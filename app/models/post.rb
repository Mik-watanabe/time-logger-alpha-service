class Post < ApplicationRecord
    enum status: { draft: 0, published: 10, unpublished: 20 }
end
