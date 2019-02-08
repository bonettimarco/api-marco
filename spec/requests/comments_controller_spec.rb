require 'rails_helper'

RSpec.describe "Comments", type: :request do
  describe "GET / comments" do

    it 'checa status de retorno 200' do
      create(:comment)
      get '/comments.json'
      expect(response).to have_http_status(200)
    end

    it 'JSON 3 Comentários' do
      create(:comment, text: "Primeiro")
      create(:comment, text: "Segundo")
      create(:comment, text: "Terceiro")
      get '/comments.json'
      expect(response.body).to include_json([
                       id: /\d/,
                       text: "Primeiro"],
                       [
                       id: /\d/,
                       text: "Segundo"],
                        [
                      id: /\d/,
                      text: "Terceiro"])
    end

    it 'JSON retorna somente um comentário denunciado' do
      comentario1 = create(:comment, text: "Primeiro")
      create(:report, comment: comentario1)
      create(:comment, text: "Segundo")
      create(:comment, text: "Terceiro")
      get '/comments?report=true'
      expect(response).to have_http_status(200)
      expect(response.body).to include_json([
                                                id: /\d/,
                                                text: "Primeiro"])
      expect(response.body).not_to include_json([
                                                text: "Segundo"],
                                            [
                                                text: "Terceiro"])
    end
  end
end