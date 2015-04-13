require 'rails_helper'

describe Qa::TermsController do
  routes { Qa::Engine.routes }

  describe "license vocabulary" do
    it "returns terms" do
      get :search, vocab: 'local', sub_authority: 'license', q: 'ND'
      expect(response).to be_success
    end
  end

  describe "sub_location vocabulary" do
    it "returns terms" do
      get :search, vocab: 'local', sub_authority: 'sub_location', q: 'ND'
      expect(response).to be_success
    end
  end

  describe "local names" do
    before do
      Agent.create(id: 'fr0d0', foaf_name: 'Frodo Baggins')
    end

    it "returns terms" do
      get :search, vocab: 'local', sub_authority: 'names', q: 'Baggins'
      expect(response).to be_success
      expect(response.body).to eq "[{\"id\":\"http://localhost:8983/fedora/rest/test/fr0d0\",\"label\":\"Frodo Baggins\"}]"
    end
  end
end