require './spec/spec_helper'

describe PresenceValidator do
  let!(:true_validator)   { PresenceValidator.new(:name, true) }
  let!(:false_validator)  { PresenceValidator.new(:name, false) }
  let!(:correct_author)   { FactoryBot.build(:author) }
  let!(:incorrect_author) { FactoryBot.build(:author, name: nil) }

  it "true validator works correctly" do
    expect(true_validator.valid?(correct_author)).to be_truthy
  end

  it "true validator works correctly" do
    expect(true_validator.valid?(incorrect_author)).to be_falsey
  end

  it "false validator works correctly" do
    expect(false_validator.valid?(correct_author)).to be_truthy
  end

  it "false validator works correctly" do
    expect(false_validator.valid?(incorrect_author)).to be_truthy
  end
end
