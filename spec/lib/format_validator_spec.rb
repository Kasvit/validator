require './spec/spec_helper'

describe FormatValidator do
  let!(:validator)         { FormatValidator.new(:phone, /^(\+\d{1,2}\s?)?1?\-?\.?\s?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$/) }
  let!(:correct_author)    { FactoryBot.build(:author) }
  let!(:incorrect_author)  { FactoryBot.build(:author, phone: nil) }
  let!(:incorrect_author2) { FactoryBot.build(:author, phone: "911") }

  it "validator works correctly" do
    expect(validator.valid?(correct_author)).to be_truthy
  end

  it "validator works correctly" do
    expect(validator.valid?(incorrect_author)).to be_falsey
  end

  it "validator works correctly" do
    expect(validator.valid?(incorrect_author2)).to be_falsey
  end
end
