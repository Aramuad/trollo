require 'rails_helper'

RSpec.describe BoardsController, type: :controller do

  let(:valid_attributes){
    {work: 'barista'}
  }


  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to be_successful
    end
  end




  describe "GET #show" do
    it "returns a success response" do
      boards = Board.all.create!
      get :show, params: {id: boards.id}
      expect(response).to be_successful
    end
  end

end