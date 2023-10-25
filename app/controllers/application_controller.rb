class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/restaurants' do
    hotel = Restaurant.all
    hotel.to_json(include: :reviews)
  end

  post '/reviews' do
    review = Review.create(
    comment: params[:comment],
    restaurant_id: params[:restaurant_id],
  )
  review.to_json
  end

  delete '/reviews/:id' do
      review = Review.find(params[:id])
      review.destroy
      review.to_json
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



