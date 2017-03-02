require 'rails_helper'

RSpec.describe Wiki, type: :model do
  let(:user) { User.create!(name: "Doom Hammer", email: "dhammer@blocipedia.com") }
  let(:wiki) { Wiki.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph) }

  
  describe "attributes" do
    it "has title and body attributes" do
      expect(wiki).to have_attributes(title: wiki.title, body: wiki.body)
    end
  end
  
  
end
