require 'rspec'
require_relative 'movies_controller_spec'
# require_relative 'movies_controller'
# require_relative 'app/controller/movies_controller'
# require 'movies_controller'
# require '../spec/movies_controller_rspec'
# require '../app/controllers/movies_controller.rb'

# context 'index' do 
#   it 'Should display index of movies' do
#     expect(index(@movies)).to include(Movie.all)
#   end
# end
context 'MoviesController' do
  context '#index' do 
    it 'Should display index of movies' do
      expect(index(@movies)).to include(Movie.all)
    end
  end
end 

# describe "#index" do
#   it "Should display index of movies" do
#     actual = "Index"
#     expected "Movies"
#     expect(actual).to eq(expected)
#   end
# end

# describe 'index' do 
#   it 'Should display index of movies' do
#     expect(index(movies)).to include(Movie.all)
#   end
# end

# describe MoviesController do 
#   describe '#index' do
#     it 'returns the index of Movies"' do
#       movie = Movie.new
#       expect(movie.index).to eql(Movie.all)
#     end
#   end
# end