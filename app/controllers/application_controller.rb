class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/restaurants' do
    restaurant = Restaurant.all
    restaurant.to_json(include: :reviews)
  end

  get '/restaurants/:id' do
    restaurant= Restaurant.find(params[:id])
    restaurant.to_json(include: :reviews)
  end

  post '/restaurants' do
    restaurant = Restaurant.create(
      name: params[:name],
      location: params[:location],
      price: params[:price]
    )
    restaurant.to_json
  end

  delete 'restaurants/:id' do
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy
    restaurant.to_json
  end

  patch 'restaurants/:id' do
    restaurant= Restaurant.find(params[:id])
    restaurant.update(
      name: params[:name],
      location: parama[:location],
      price: params[:price]
    )
    review.to_json
  end

  get '/reviews' do
    review = Review.all
    review.to_json
  end

  get '/reviews/:id' do
    review = Review.find(params[:id])
    review.to_json
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



