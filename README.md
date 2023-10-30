Phase-3 Project README
# Restaurant/Review database


Welcome to my phase-3/Ruby project.  Compiled here utilizing the Faker Gem is a database of Restaurants, each of which have a name, location and a price range.  In addition to the aformentioned attributes, each instance of a restaurant has many reviews.  The reviews include a comment about the restuarant instance.  
The back end of the Restaurant/Review application is built using Sinatra and utilizes Active Record.  

## Functionality

With this application, a user is able to add or delete a restaurant to the database using a form. In addition to that, there is also a form to update the restaurant's information.  There is full CRUD capability on the Restaurant Class. 
In regard to reviews, for each restaurant, a user can read all of the reviews, as well as add or delete a review.



## Installation

You can access this project on your browser at 
http://localhost:9292/   followed by either "/reviews" or "/restaurants" to view any and all of the restuarants or reviews in the database that was created.

## Usage

Active record
from your terminal

returns 'restaurants'
restaurants.all

returns 'reviews'
reviews.all

returns 'reviews/id'
Review.find(insert review ID here)

returns 'restaurants/id'
Restaurant.find(insert restaurant ID here)

```

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

## Languages used
Ruby 

## Contributing
Faker Gem - fake data to populate reviews.
Active Record
Sinatra