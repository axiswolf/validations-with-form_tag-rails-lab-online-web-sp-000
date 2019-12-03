class CategoryValidator < ActiveModel::Validator
  def validate(category)
    unless category.match?("Fiction" || "Non-Fiction")
      record.errors[:category] << "Fiction or Non-Fiction Only!"
    end
  end
end