  require 'spec_helper'

  describe Item do
    it "is valid with title, price, happiness, and happiness index" do
      p = create(:item)
      p.should be_valid
    end
  end