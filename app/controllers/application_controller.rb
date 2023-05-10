class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/trainers" do
    Trainer.all.to_json(include: {pets: {only: :id}})
  end

  get "/pets" do
    Pet.all.to_json
  end

end
