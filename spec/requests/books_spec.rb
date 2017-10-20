require 'rails_helper'

RSpec.describe "Books", type: :request do
  describe 'GET /books' do
    context 'ログインしていない場合' do
      it 'ログイン画面へリダイレクトする事' do
        get books_path
        expect(response).to redirect_to(:new_user_session)
      end
    end
  end
end