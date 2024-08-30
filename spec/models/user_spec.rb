require 'rails_helper'

RSpec.describe User, type: :model do

  it  "nameがnullだと登録できない" do
    expect(FactoryBot.build(:user, name: nil)).to_not be_valid
  end

  it "nameが51文字以上だと登録できない" do
    expect(FactoryBot.build(:user, name: "a" * 51)).to_not be_valid
  end

  it "emailがnullだと登録できない" do
    expect(FactoryBot.build(:user, email: nil)).to_not be_valid
  end

  it "emailが51文字以上だと登録できない" do
    # @example.comは11文字
    long_email = "a" * 40 + "@example.com"
    expect(FactoryBot.build(:user, email: long_email)).to_not be_valid
  end

  it "emailが登録済みのデータと重複していると登録できない" do
    user1 = create(:user, email: "test@example.com")
    expect(FactoryBot.build(:user, email: "test@example.com")).to_not be_valid
  end

  # it "emailが@が入っていないと登録できない"
end
