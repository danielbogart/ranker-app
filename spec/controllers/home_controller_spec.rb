require 'spec_helper'

describe HomeController do

  describe "GET 'index'" do
	 it "delivers the latest 5 listings" do
        p1 = create(:item,:created_at => 6.days.ago)
        p2 = create(:item,:created_at => 5.days.ago)
        p3 = create(:item,:created_at => 4.days.ago)
        p4 = create(:item,:created_at => 3.days.ago)
        p5 = create(:item,:created_at => 2.days.ago)
        p6 = create(:item,:created_at => 1.day.ago)
        get 'index'
        expect(assigns(:items)).to match_array [p2,p3,p4,p5,p6]
      end
  end

end
