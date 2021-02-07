require './spec/spec_helper'

describe Author do
  let!(:author) { FactoryBot.build(:author) }

  it "must have valid factory" do
    expect(author.valid?).to eq true
  end

  it "validate name presence" do
    a = Author.new(email: "john.show@gmail.com", phone: "0504421571")
    expect(a.valid?).to be_falsey
  end

  it "validate email format" do
    a = Author.new(name: "John Show", email: "john.show@ukr.net", phone: "0504421571")
    expect(a.valid?).to be_falsey
  end

  it "validate phone format" do
    a = Author.new(name: "John Show", email: "john.show@ukr.net", phone: "103")
    expect(a.valid?).to be_falsey
  end
end
