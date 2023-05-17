class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/trainers" do
    Trainer.all.to_json
  end

  post "/trainers" do
    trainer = Trainer.create(params)
    trainer.to_json
  end

  post "/pets" do
    pet = Pet.create(params)
    pet.to_json
  end

  patch "/trainers/:id" do
    trainer = Trainer.find(params[:id])
    trainer.update(params)
    trainer.to_json
  end

  patch "/pets/:id" do
    pet = Pet.find(params[:id])
    pet.update(params)
    pet.to_json
  end

  delete "/trainers/:id" do
    trainer = Trainer.find(params[:id])
    trainer.delete
    trainer.to_json
  end

  delete "/pets/:id" do
    pet = Pet.find(params[:id])
    pet.delete
    pet.to_json
  end
end
