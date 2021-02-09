require './spec/spec_helper'

describe Author do
  let!(:factroy_author) { FactoryBot.build(:author) }
  let!(:factory_book) { FactoryBot.build(:book) }
  let!(:invalid_book) { FactoryBot.build(:book, owner: Model) }

  it "must have valid factory" do
    expect(factory_book.valid?).to be_truthy
  end

  it "validate title presence" do
    book = Book.new(owner: factroy_author)
    expect(book.valid?).to be_falsey
  end

  it "validate owner type" do
    book = Book.new(title: "Inferno")
    expect(book.valid?).to be_falsey
  end

  it "validate! works correclty" do
    expect(factory_book.validate!).to be_truthy
  end

  it "validate! works correclty" do
    expect { invalid_book.validate! }.to raise_error(ValidationError)
  end
end
