# require '../spec/movies_controller_rspec'
require_relative 'movies_controller_rspec'
# require '../app/controllers/movies_controller.rb'

context 'index' do 
  it 'Should display index of movies' do
    expect(index(@movies)).to include(Movie.all)
  end
end

# describe "#index" do
#   it "Should display index of movies" do
#     actual = "Index"
#     expected "Movies"
#     expect(actual).to eq(expected)
#   end
# end

# context 'index' do 
#   it 'Should display index of movies' do
#     expect(index(movies)).to include(Movies.all)
#   end
# end