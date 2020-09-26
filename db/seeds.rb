Collection.destroy_all

# collection_names = [
#   "Backlog",
#   "The ones I've seen",
#   "My favorites",
#   "The ones I couldn't get through"
# ]

# collection_names.each do |collection_name|
#   collection_request = RestClient.get("https://source.unsplash.com/1200x700/?collection")
#   collection = Collection.new(
#       name: collection_name,
#       banner_url: collection_request.request.url
#     )
#   collection.save!
#   3.times do
#     movie_request = RestClient.get("https://source.unsplash.com/400x300/?movie")
#     movie = Movie.new(
#       name: Faker::FunnyName.name,
#       image_url: movie_request.request.url
#     )
#     movie.collection = collection
#     movie.save!
#     sleep(2)
#   end
# end
