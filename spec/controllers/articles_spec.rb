require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe 'GET #index' do
    subject { get :index }

    it { should have_http_status(:success) }
  end
  describe 'GET #create' do
    it 'returns http success' do
    end
  end
end
