require "rails_helper"

describe ApplicationHelper do
  describe "#page_title" do
    it "returns the default title" do
      expect(helper.page_title).to eq("RSpec is your friend")
    end
  end
end