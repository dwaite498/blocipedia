require 'rails_helper'

RSpec.describe WikisController, type: :controller do
  let (:wikis) { Wiki.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    
    it "assigns [wiki] to @wikis" do
       get :index
       expect(assigns(:wikis)).to eq([wikis])
     end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
    
   it "renders the #new view" do
      get :new
      expect(response).to render_template :new
    end


    it "instantiates @wiki" do
      get :new
      expect(assigns(:wiki)).not_to be_nil
    end
  end

  describe "POST create" do
    it "increases the number of Wikis by 1" do
      expect{wikis :create, wikis: {title: RandomData.random_sentence, body: RandomData.random_paragraph}}.to change(Wiki,:count).by(1)
    end

    it "assigns the new post to @wiki" do
      wikis :create, wikis: {title: RandomData.random_sentence, body: RandomData.random_paragraph}
      expect(assigns(:wiki)).to eq Wiki.last
    end

    it "redirects to the new post" do
      wikis :create, wikis: {title: RandomData.random_sentence, body: RandomData.random_paragraph}
      expect(response).to redirect_to Wiki.last
    end
  end
end

  # describe "GET #create" do
  #   it "returns http success" do
  #     get :create
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #update" do
  #   it "returns http success" do
  #     get :update
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #edit" do
  #   it "returns http success" do
  #     get :edit
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #destroy" do
  #   it "returns http success" do
  #     get :destroy
  #     expect(response).to have_http_status(:success)
  #   end
  # end



  # describe "GET #show" do
  #   it "returns http success" do
  #     get :show
  #     expect(response).to have_http_status(:success)
  #   end
  # end


