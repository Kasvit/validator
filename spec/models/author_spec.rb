require './spec/spec_helper'

describe Author do
  let!(:factory_author) { FactoryBot.build(:author) }

  it "must have valid factory" do
    expect(factory_author.valid?).to eq true
  end

  it "validate name presence" do
    author = Author.new(email: "john.show@gmail.com", phone: "0504421571")
    expect(author.valid?).to be_falsey
  end

  it "validate email format" do
    author = Author.new(name: "John Show", email: "john.show@ukr.net", phone: "0504421571")
    expect(author.valid?).to be_falsey
  end

  it "validate phone format" do
    author = Author.new(name: "John Show", email: "john.show@ukr.net", phone: "103")
    expect(author.valid?).to be_falsey
  end

  it "validate! works correclty and raise error" do
    author = Author.new(name: "John Show", email: "john.show@ukr.net", phone: "0504421571")
    expect { author.validate! }.to raise_error(ValidationError)
  end

  it "validate! works correclty" do
    expect(factory_author.validate!).to be_truthy
  end
end
