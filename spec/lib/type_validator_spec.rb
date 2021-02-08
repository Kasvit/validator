require './spec/spec_helper'

describe TypeValidator do
  let!(:author)         { FactoryBot.build(:author) }
  let!(:validator)      { TypeValidator.new(:owner, Author) }
  let!(:correct_book)   { FactoryBot.build(:book) }
  let!(:incorrect_book) { FactoryBot.build(:book, owner: Model) }

  it "validator works correctly" do
    expect(validator.valid?(correct_book)).to be_truthy
  end

  it "validator works correctly" do
    expect(validator.valid?(incorrect_book)).to be_falsey
  end
end
