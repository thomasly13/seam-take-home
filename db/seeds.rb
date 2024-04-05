# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Destroying tables..."

Post.destroy_all
Comment.destroy_all

puts "Resetting primary keys..."
# So that aftter seeding, the first 'Post' has 'id' of 1
ApplicationRecord.connection.reset_pk_sequence!('posts')
ApplicationRecord.connection.reset_pk_sequence!('comments')

puts "Creating posts..."
Post.create!(
    title: '10 Creative DIY Projects for Your Home',
    author: 'CraftyCreator',
    content: 'Discover innovative DIY ideas to spruce up your living space with style!'    
)

Post.create!(
    title: 'The Art of Writing: Tips for Aspiring Authors',
    author: 'WriterWhiz',
    content: 'Unlock your writing potential with practical advice and insightful tips for writers.'    
)

  
Post.create!(
    title: 'Exploring the World of Watercolor Painting',
    author: 'PaintingPassion',
    content: 'Dive into the mesmerizing world of watercolors and unleash your inner artist.'    
)

  
Post.create!(
    title: '10 Inspiring Quotes to Brighten Your Day',
    author: 'QuoteLover',
    content: 'Get motivated and uplifted with these inspiring quotes for a brighter day.'    
)

Post.create!(
    title: 'Photography Composition Techniques for Beginners',
    author: 'CompositionGuru',
    content: 'Learn essential composition techniques to capture stunning photographs like a pro.'    
)

  
Post.create!(
    title: 'The Joy of Gardening: Growing Your Own Produce',
    author: 'GreenThumb',
    content: 'Experience the joy of gardening and harvest your own delicious produce.'    
)

  
Post.create!(
    title: 'Creative Writing Prompts to Spark Your Imagination',
    author: 'CreativeScribe',
    content: 'Ignite your creativity with these thought-provoking writing prompts.'    
)

Post.create!(
    title: 'Discovering Your Artistic Style: A Guide for Beginners',
    author: 'ArtisticExplorer',
    content: 'Explore various artistic styles and find your unique creative expression.'    
)

  
Post.create!(
    title: '10 Simple Home Decor Hacks to Refresh Your Space',
    author: 'HomeDecorWhiz',
    content: 'Transform your living space with these easy and budget-friendly home decor hacks.'    
)
  

Post.create!(
    title: 'The Magic of Mixed Media Art',
    author: 'MixedMediaMaster',
    content: 'Experience the enchanting world of mixed media art and unleash your creativity.'    
)


Comment.create!(
    author: "ArtisticSoul",
    content: "Absolutely stunning work!",
    post_id: 1
)

Comment.create!(
    author: "CraftyCreator",
    content: "Love your creativity, keep it up!",
    post_id: 2
    
)

Comment.create!(
    author: "PhotographyFanatic",
    content: "Incredible composition and lighting!",
    post_id: 3
)

Comment.create!(
    author: "NatureLover",
    content: "These landscapes are breathtaking!",
    post_id: 4
)

Comment.create!(
    author: "Bookworm",
    content: "Your writing style is captivating.",
    post_id: 5
)

Comment.create!(
    author: "TechGeek",
    content: "Amazing use of technology in your projects!",
    post_id: 6
)

Comment.create!(
    author: "Foodie",
    content: "Those recipes look delicious!",
    post_id: 7
)

Comment.create!(
    author: "Fashionista",
    content: "Your sense of style is impeccable!",
    post_id: 8
)

Comment.create!(
    author: "TravelEnthusiast",
    content: "Adding these destinations to my bucket list!",
    post_id: 9
)

Comment.create!(
    author: "DIYExpert",
    content: "You make crafting look so easy!",
    post_id: 10
)

Comment.create!(
    author: "MusicLover",
    content: "Your musical talent shines through every piece!",
    post_id: 1
)

Comment.create!(
    author: "FitnessFanatic",
    content: "Inspiring progress, keep pushing!",
    post_id: 2
)

Comment.create!(
    author: "HomeDecorWhiz",
    content: "Your home decor ideas are so inspiring!",
    post_id: 3
)

Comment.create!(
    author: "FilmBuff",
    content: "Captivating storytelling in your films!",
    post_id: 4
)

Comment.create!(
    author: "HealthNut",
    content: "Your healthy living tips are motivating!",
    post_id: 5
)

Comment.create!(
    author: "GardeningGuru",
    content: "Your garden is a work of art!",
    post_id: 6
)

Comment.create!(
    author: "FashionForward",
    content: "Love your fashion sense, so chic!",
    post_id: 7
)

Comment.create!(
    author: "AdventureSeeker",
    content: "Living vicariously through your adventures!",
    post_id: 8
)

Comment.create!(
    author: "MotivationMaster",
    content: "Your words are truly motivating!",
    post_id: 9
)

Comment.create!(
    author: "TechSavvy",
    content: "Impressive tech knowledge, keep sharing!",
    post_id: 10
)

Comment.create!(
    author: "ArtAppreciator",
    content: "Your artwork speaks volumes!",
    post_id: 1
)
  
Comment.create!(
    author: "WritingEnthusiast",
    content: "Your writing advice is invaluable!",
    post_id: 2
)

Comment.create!(
    author: "DIYDiva",
    content: "Your DIY projects inspire me to get creative!",
    post_id: 3
)

Comment.create!(
    author: "FitnessFreak",
    content: "Your fitness journey is inspiring me to start my own!",
    post_id: 4
)

Comment.create!(
    author: "HomeImprovementPro",
    content: "Your home improvement tips are so helpful!",
    post_id: 5
)

Comment.create!(
    author: "PetLover",
    content: "Your pet photos always brighten my day!",
    post_id: 6
)

Comment.create!(
    author: "TravelBug",
    content: "Your travel stories are so adventurous!",
    post_id: 7
)

Comment.create!(
    author: "ArtEnthusiast",
    content: "Your artwork is mesmerizing, truly captivating!",
    post_id: 8
)

Comment.create!(
    author: "FashionFanatic",
    content: "You have such an eye for fashion, I'm always inspired by your outfits!",
    post_id: 9
)

Comment.create!(
    author: "TechWizard",
    content: "Your technical expertise is impressive, I learn so much from your posts!",
    post_id: 10
)







puts "Done!"