class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/hotels' do
    hotel = Hotel.all
    hotel.to_json(include: :reviews)
  end

  # get '/hotels/:id/reviews' do 
  #   hotel = Hotel.find(params[:id])
  #   review = hotel.reviews.all
  #   review.to_json
  # end

  # get '/hotels/:id' do
  #   hotel = Hotel.find(params[:id])
  #   hotel.to_json
  # end

  

end



