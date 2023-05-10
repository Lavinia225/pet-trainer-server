class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/trainers" do
    Trainer.all.to_json(include: {pets: {only: :id}})
  end

  get "/pets" do
    Pet.all.to_json
  end

  post "/trainers" do
    trainer = Trainer.create(params)
    trainer.to_json
  end

  post "/pets" do
    pet = Pet.create(params)
    pet.to_json
  end
end
