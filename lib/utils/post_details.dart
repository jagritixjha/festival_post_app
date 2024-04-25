import 'package:festival_poster_app/utils/modal.dart';

List<Map<String, dynamic>> posts = [
  {
    'festival': 'Summer Fest',
    'quote':
        'Here’s to good music, great friends, and full hearts at Summer Fest!',
    'category': 'Announcements',
    'datePosted': '2023-04-01T12:00:00Z',
    'imageUrl': 'assets/poster_images/img1.jpg'
  },
  {
    'festival': 'Night Concert Series',
    'quote': '“Let the music set you free.”',
    'category': 'Must See',
    'datePosted': '2023-04-02T15:00:00Z',
    'imageUrl': 'assets/poster_images/img2.jpg'
  },
  {
    'festival': 'Foodie Heaven',
    'quote': '“Eat well, festival better!”',
    'category': 'Favorites',
    'datePosted': '2023-04-03T11:00:00Z',
    'imageUrl': 'assets/poster_images/img3.jpg'
  },
  {
    'festival': 'Art & Sculpture Festival',
    'quote': '“Art is the heart of our festival.”',
    'category': 'Highlights',
    'datePosted': '2023-04-04T14:00:00Z',
    'imageUrl': 'assets/poster_images/img4.jpg'
  },
  {
    'festival': 'Green Fest',
    'quote': '“Sustainability isn’t a phase, it’s our future.”',
    'category': 'Announcements',
    'datePosted': '2023-04-05T16:00:00Z',
    'imageUrl': 'assets/poster_images/img5.jpg'
  },
  {
    'festival': 'Live Art Fest',
    'quote': '“Experience creation in its purest form.”',
    'category': 'Must See',
    'datePosted': '2023-04-06T13:00:00Z',
    'imageUrl': 'assets/poster_images/img6.jpg'
  },
  {
    'festival': 'Workshop Wonderland',
    'quote': '“Learn, create, and play at Workshop Wonderland.”',
    'category': 'Favorites',
    'datePosted': '2023-04-07T10:00:00Z',
    'imageUrl': 'assets/poster_images/img7.jpg'
  },
  {
    'festival': 'Vintage Market Days',
    'quote': '“Every find has a story to tell.”',
    'category': 'Highlights',
    'datePosted': '2023-04-08T12:00:00Z',
    'imageUrl': 'assets/poster_images/img8.jpg'
  },
  {
    'festival': 'Family Fun Zone',
    'quote': '“Family and fun under the sun.”',
    'category': 'Favorites',
    'datePosted': '2023-04-09T14:00:00Z',
    'imageUrl': 'assets/poster_images/img9.jpg'
  },
  {
    'festival': 'Festival of Fireworks',
    'quote': '“Ending with a bang, every year!”',
    'category': 'Must See',
    'datePosted': '2023-04-10T20:00:00Z',
    'imageUrl': 'assets/poster_images/img10.jpg'
  },
  {
    'festival': 'Indie Music Day',
    'quote': '“Feel the indie vibes, discover new sounds.”',
    'category': 'New Arrivals',
    'datePosted': '2023-04-11T12:00:00Z',
    'imageUrl': 'assets/poster_images/img11.jpg'
  },
  {
    'festival': 'Morning Yoga Fest',
    'quote': '“Start your day with serenity.”',
    'category': 'Highlights',
    'datePosted': '2023-04-12T07:00:00Z',
    'imageUrl': 'assets/poster_images/img12.jpg'
  },
  {
    'festival': 'Craft Beer Expo',
    'quote': '“Taste the craft, meet the brewers.”',
    'category': 'Favorites',
    'datePosted': '2023-04-13T16:00:00Z',
    'imageUrl': 'assets/poster_images/img13.jpg'
  },
  {
    'festival': 'Rock Legends Festival',
    'quote': '“Rock through the ages.”',
    'category': 'Must See',
    'datePosted': '2023-04-14T20:00:00Z',
    'imageUrl': 'assets/poster_images/img14.jpg'
  },
  {
    'festival': 'Outdoor Cinema Nights',
    'quote': '“Movies under the stars.”',
    'category': 'Highlights',
    'datePosted': '2023-04-15T19:00:00Z',
    'imageUrl': 'assets/poster_images/img15.jpg'
  },
  {
    'festival': 'Puppet Parade',
    'quote': '“Magic and wonder for all ages.”',
    'category': 'New Arrivals',
    'datePosted': '2023-04-16T10:00:00Z',
    'imageUrl': 'assets/poster_images/img16.jpg'
  },
  {
    'festival': 'Salsa Fiesta',
    'quote': '“Spice up your dance steps at the Salsa Fiesta!”',
    'category': 'Trending',
    'datePosted': '2023-04-17T18:00:00Z',
    'imageUrl': 'assets/poster_images/img17.jpg'
  },
  {
    'festival': 'Comedy Under the Stars',
    'quote': '“Laugh out loud with the stars above.”',
    'category': 'Must See',
    'datePosted': '2023-04-18T21:00:00Z',
    'imageUrl': 'assets/poster_images/img18.jpg'
  },
  {
    'festival': 'Artists Unite',
    'quote': '“A celebration of creativity and community.”',
    'category': 'New Arrivals',
    'datePosted': '2023-04-19T14:00:00Z',
    'imageUrl': 'assets/poster_images/img19.jpg'
  },
  {
    'festival': 'Folk Festival',
    'quote': '“Unwind to the sound of folk.”',
    'category': 'Latest',
    'datePosted': '2023-04-20T17:00:00Z',
    'imageUrl': 'assets/poster_images/img20.jpg'
  },
  // {
  //   'festival': 'Gourmet Bazaar',
  //   'quote': '“Feast on flavors from around the world.”',
  //   'category': 'Highlights',
  //   'datePosted': '2023-04-21T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img21.jpg'
  // },
  // {
  //   'festival': 'Electro Nights',
  //   'quote': '“Feel the pulse of electronic beats.”',
  //   'category': 'Popular',
  //   'datePosted': '2023-04-22T20:00:00Z',
  //   'imageUrl': 'assets/poster_images/img22.jpg'
  // },
  // {
  //   'festival': 'Horror Fest',
  //   'quote': '“Face your fears at Horror Fest.”',
  //   'category': 'Top Rated',
  //   'datePosted': '2023-04-23T23:00:00Z',
  //   'imageUrl': 'assets/poster_images/img23.jpg'
  // },
  // {
  //   'festival': 'Book Lovers Retreat',
  //   'quote': '“Lose yourself in pages under the trees.”',
  //   'category': 'Must See',
  //   'datePosted': '2023-04-24T15:00:00Z',
  //   'imageUrl': 'assets/poster_images/img24.jpg'
  // },
  // {
  //   'festival': 'PhotoCon',
  //   'quote': '“Capture the moment, learn from the best.”',
  //   'category': 'Announcements',
  //   'datePosted': '2023-04-25T11:00:00Z',
  //   'imageUrl': 'assets/poster_images/img25.jpg'
  // },
  // {
  //   'festival': 'Eco Conclave',
  //   'quote': '“Join the green revolution.” ',
  //   'category': 'Announcements',
  //   'datePosted': '2023-04-26T09:00:00Z',
  //   'imageUrl': 'assets/poster_images/img26.jpg'
  // },
  // {
  //   'festival': 'Reggae Beach Fest',
  //   'quote': '“Chill out with the rhythmic waves of Reggae Beach Fest.”',
  //   'category': 'Trending',
  //   'datePosted': '2023-04-27T18:00:00Z',
  //   'imageUrl': 'assets/poster_images/img27.jpg'
  // },
  // {
  //   'festival': 'Jazz & Wine Evening',
  //   'quote': '“Savor jazz and fine wine under the evening sky.”Jazz ',
  //   'category': 'Favorites',
  //   'datePosted': '2023-04-28T20:00:00Z',
  //   'imageUrl': 'assets/poster_images/img28.jpg'
  // },
  // {
  //   'festival': 'Crafters Market',
  //   'quote': '“Craft, connect, and collect at the Crafters Market.”',
  //   'category': 'New Arrivals',
  //   'datePosted': '2023-04-29T10:00:00Z',
  //   'imageUrl': 'assets/poster_images/img29.jpg'
  // },
  // {
  //   'festival': 'Ultimate Sports Day',
  //   'quote': '“Compete in the spirit of fun at the Ultimate Sports Day.”',
  //   'category': 'Trending',
  //   'datePosted': '2023-04-30T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img30.jpg'
  // },
  // {
  //   'festival': 'Tech Innovations Expo',
  //   'quote':
  //       '“Experience tomorrow’s technology today at the Tech Innovations Expo.”',
  //   'category': 'Latest',
  //   'datePosted': '2023-05-01T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img31.jpg'
  // },
  // {
  //   'festival': 'Music Evolution Fest',
  //   'quote': '“Witness the evolution of music at the Music Evolution Fest.”',
  //   'category': 'Latest',
  //   'datePosted': '2023-05-02T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img32.jpg'
  // },
  // {
  //   'festival': 'Style Fest',
  //   'quote': '“Where fashion meets festival - Style Fest.”',
  //   'category': 'Trending',
  //   'datePosted': '2023-05-03T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img33.jpg'
  // },
  // {
  //   'festival': 'Food Fest',
  //   'quote': '“Celebrate taste at the Food Fest!”',
  //   'category': 'Trending',
  //   'datePosted': '2023-05-04T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img34.jpg'
  // },
  // {
  //   'festival': 'Future Fest',
  //   'quote': '“Creating a better tomorrow at Future Fest.”',
  //   'category': 'Top Rated',
  //   'datePosted': '2023-05-05T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img35.jpg'
  // },
  // {
  //   'festival': 'Eco Days',
  //   'quote': '“Every day is Earth Day at Eco Days Festival.”',
  //   'category': 'Top Rated',
  //   'datePosted': '2023-05-06T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img36.jpg'
  // },
  // {
  //   'festival': 'Lights Festival',
  //   'quote': '“Illuminating the night at Lights Festival.”',
  //   'category': 'Highlights',
  //   'datePosted': '2023-05-07T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img37.jpg'
  // },
  // {
  //   'festival': 'Global Dance Festival',
  //   'quote':
  //       '“Celebrate the world’s cultures through dance at the Global Dance Festival.”',
  //   'category': 'Highlights',
  //   'datePosted': '2023-05-08T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img38.jpg'
  // },
  // {
  //   'festival': 'Memory Lane Festival',
  //   'quote': '“Relive your most cherished moments at Memory Lane Festival.”',
  //   'category': 'Favorites',
  //   'datePosted': '2023-05-09T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img39.jpg'
  // },
  // {
  //   'festival': 'Delicacy Delights',
  //   'quote':
  //       '“Taste the delicacies that delight at Delicacy Delights Festival.”',
  //   'category': 'Favorites',
  //   'datePosted': '2023-05-10T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img40.jpg'
  // },
  // {
  //   'festival': 'Performance Arts Fest',
  //   'quote': '“Captivating performances that speak to the soul.”',
  //   'category': 'Must See',
  //   'datePosted': '2023-05-11T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img41.jpg'
  // },
  // {
  //   'festival': 'Artistry Unleashed',
  //   'quote': '“Unleash your creativity at Artistry Unleashed.”',
  //   'category': 'Must See',
  //   'datePosted': '2023-05-12T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img42.jpg'
  // },
  // {
  //   'festival': 'Critics’ Choice Film Festival',
  //   'quote': '“Where the best films meet the harshest critics.”Critics’ ',
  //   'category': 'Top Rated',
  //   'datePosted': '2023-05-13T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img43.jpg'
  // },
  // {
  //   'festival': 'Masterclass Workshops',
  //   'quote': '“Learn from the masters at Masterclass Workshops.”',
  //   'category': 'Top Rated',
  //   'datePosted': '2023-05-14T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img44.jpg'
  // },
  // {
  //   'festival': 'Community Engagement Days',
  //   'quote': '“Bringing communities together for a day of fun and engagement.”',
  //   'category': 'Announcements',
  //   'datePosted': '2023-05-15T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img45.jpg'
  // },
  // {
  //   'festival': 'New Horizons Festival',
  //   'quote':
  //       '“Explore new horizons at our festival of discovery and innovation.”',
  //   'category': 'Announcements',
  //   'datePosted': '2023-05-16T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img46.jpg'
  // },
  // {
  //   'festival': 'Trendsetter’s Gala',
  //   'quote': '“Set the trends with us this season at the Trendsetter’s Gala.”',
  //   'category': 'Popular',
  //   'datePosted': '2023-05-17T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img47.jpg'
  // },
  // {
  //   'festival': 'Iconic Moments Festival',
  //   'quote': '“Be a part of iconic moments that define our time.”',
  //   'category': 'Popular',
  //   'datePosted': '2023-05-18T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img48.jpg'
  // },
  // {
  //   'festival': 'Crafts and Creatives Fair',
  //   'quote':
  //       '“Celebrating creativity and craftsmanship at the Crafts and Creatives Fair.”',
  //   'category': 'New Arrivals',
  //   'datePosted': '2023-05-19T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img49.jpg'
  // },
  // {
  //   'festival': 'Next Gen Tech Fest',
  //   'quote': '“Experience the future of technology at the Next Gen Tech Fest.”',
  //   'category': 'New Arrivals',
  //   'datePosted': '2023-05-20T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img50.jpg'
  // },
  // {
  //   'festival': 'Art Innovators Showcase',
  //   'quote': '“Showcasing tomorrow’s art leaders today.”',
  //   'category': 'New Arrivals',
  //   'datePosted': '2023-05-21T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img51.jpg'
  // },
  // {
  //   'festival': 'Podcast Live',
  //   'quote':
  //       '“Tune in live for engaging discussions and entertaining stories at Podcast Live.”',
  //   'category': 'Popular',
  //   'datePosted': '2023-05-22T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img52.jpg'
  // },
  // {
  //   'festival': 'Merch Mania',
  //   'quote':
  //       '“Get exclusive access to limited edition merchandise at Merch Mania.”',
  //   'category': 'Announcements',
  //   'datePosted': '2023-05-23T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img53.jpg'
  // },
  // {
  //   'festival': 'Visual Arts Gala',
  //   'quote':
  //       '“A feast for the eyes - experience the spectacular at the Visual Arts Gala.”',
  //   'category': 'Top Rated',
  //   'datePosted': '2023-05-24T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img54.jpg'
  // },
  // {
  //   'festival': 'Interactive Art Experience',
  //   'quote':
  //       '“Engage directly with art in new and unexpected ways at our Interactive Art Experience.”',
  //   'category': 'Must See',
  //   'datePosted': '2023-05-25T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img55.jpg'
  // },
  // {
  //   'festival': 'Culinary Stars Festival',
  //   'quote': '“Taste creations from top chefs at the Culinary Stars Festival.”',
  //   'category': 'Favorites',
  //   'datePosted': '2023-05-26T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img56.jpg'
  // },
  // {
  //   'festival': 'Film Festival Premieres',
  //   'quote':
  //       '“Experience premieres of groundbreaking films at our Film Festival Premieres.”',
  //   'category': 'Highlights',
  //   'datePosted': '2023-05-27T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img57.jpg'
  // },
  // {
  //   'festival': 'Green Festival Days',
  //   'quote': '“Join us in celebrating sustainability at Green Festival Days.”',
  //   'category': 'Top Rated',
  //   'datePosted': '2023-05-28T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img58.jpg'
  // },
  // {
  //   'festival': 'Fitness Fiesta',
  //   'quote': '“Get fit and have fun at the Fitness Fiesta!”',
  //   'category': 'Trending',
  //   'datePosted': '2023-05-29T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img59.jpg'
  // },
  // {
  //   'festival': 'Electro Beat Festival',
  //   'quote': '“Dance to the electric beat at the Electro Beat Festival.”',
  //   'category': 'Latest',
  //   'datePosted': '2023-05-30T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img60.jpg'
  // },
  // {
  //   'festival': 'VR Innovations Expo',
  //   'quote': '“Step into new worlds at the VR Innovations Expo.”',
  //   'category': 'Latest',
  //   'datePosted': '2023-05-31T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img61.jpg'
  // },
  // {
  //   'festival': 'Retro Music Night',
  //   'quote': '“Relive the best of the 80s and 90s at our Retro Music Night.”',
  //   'category': 'Trending',
  //   'datePosted': '2023-06-01T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img62.jpg'
  // },
  // {
  //   'festival': 'Volunteer Heroes Fest',
  //   'quote': '“Celebrate the spirit of giving at the Volunteer Heroes Fest.”',
  //   'category': 'Top Rated',
  //   'datePosted': '2023-06-02T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img63.jpg'
  // },
  // {
  //   'festival': 'Cinema Under the Stars',
  //   'quote':
  //       '“Enjoy classic films under the open sky at Cinema Under the Stars.”',
  //   'category': 'Highlights',
  //   'datePosted': '2023-06-03T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img64.jpg'
  // },
  // {
  //   'festival': 'Lovers Lane Craft Market',
  //   'quote': '“Find unique handmade treasures at Lovers Lane Craft Market.”',
  //   'category': 'Favorites',
  //   'datePosted': '2023-06-04T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img65.jpg'
  // },
  // {
  //   'festival': 'Showcase Spectacular',
  //   'quote':
  //       '“Experience the thrill of live performances at Showcase Spectacular.”',
  //   'category': 'Must See',
  //   'datePosted': '2023-06-05T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img66.jpg'
  // },
  // {
  //   'festival': 'Film Critics Gala',
  //   'quote':
  //       '“Join the debate with top film critics at the Film Critics Gala.”',
  //   'category': 'Top Rated',
  //   'datePosted': '2023-06-06T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img67.jpg'
  // },
  // {
  //   'festival': 'Accessible Arts Festival',
  //   'quote':
  //       '“Art for all - celebrating accessibility at the Accessible Arts Festival.”',
  //   'category': 'Announcements',
  //   'datePosted': '2023-06-07T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img68.jpg'
  // },
  // {
  //   'festival': 'Brew Masters Festival',
  //   'quote': '“Sample the finest brews at the Brew Masters Festival.”',
  //   'category': 'New Arrivals',
  //   'datePosted': '2023-06-08T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img69.jpg'
  // },
  // {
  //   'festival': 'Innovation Pop-Up',
  //   'quote': '“Explore cutting-edge creations at Innovation Pop-Up.”',
  //   'category': 'Popular',
  //   'datePosted': '2023-06-09T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img70.jpg'
  // },
  // {
  //   'festival': 'Eco Art Fair',
  //   'quote': '“Art meets ecology at the Eco Art Fair.”',
  //   'category': 'Highlights',
  //   'datePosted': '2023-06-10T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img71.jpg'
  // },
  // {
  //   'festival': 'Family Fun Fair',
  //   'quote': '“Create lasting memories at the Family Fun Fair.”',
  //   'category': 'Favorites',
  //   'datePosted': '2023-06-11T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img72.jpg'
  // },
  // {
  //   'festival': 'Indie Beats Festival',
  //   'quote':
  //       '“Get lost in the sound of indie beats at the Indie Beats Festival.”',
  //   'category': 'Must See',
  //   'datePosted': '2023-06-12T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img73.jpg'
  // },
  // {
  //   'festival': 'Directors Roundtable',
  //   'quote':
  //       '“Sit in on discussions with top film directors at the Directors Roundtable.”',
  //   'category': 'Top Rated',
  //   'datePosted': '2023-06-13T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img74.jpg'
  // },
  // {
  //   'festival': 'Festival Launch Party',
  //   'quote': '“Kick off the season in style at our Festival Launch Party.”',
  //   'category': 'Announcements',
  //   'datePosted': '2023-06-14T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img75.jpg'
  // },
  // {
  //   'festival': 'Foodie Fest',
  //   'quote': '“Indulge your taste buds at the Foodie Fest.”',
  //   'category': 'Highlights',
  //   'datePosted': '2023-06-15T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img76.jpg'
  // },
  // {
  //   'festival': 'Night of Comedy',
  //   'quote': '“Laugh the night away at our Night of Comedy.”',
  //   'category': 'Popular',
  //   'datePosted': '2023-06-16T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img77.jpg'
  // },
  // {
  //   'festival': 'Photography Expo',
  //   'quote': '“Capture the moment at the Photography Expo.”',
  //   'category': 'Popular',
  //   'datePosted': '2023-06-17T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img78.jpg'
  // },
  // {
  //   'festival': 'Eco Summit',
  //   'quote':
  //       '“Join global leaders at the Eco Summit to discuss sustainable futures.”',
  //   'category': 'Announcements',
  //   'datePosted': '2023-06-18T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img79.jpg'
  // },
  // {
  //   'festival': 'Jazz Nights',
  //   'quote': '“Soothe your soul with smooth jazz at Jazz Nights.”',
  //   'category': 'Popular',
  //   'datePosted': '2023-06-19T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img80.jpg'
  // },
  // {
  //   'festival': 'Tech Discovery',
  //   'quote': '“Discover the latest in technology at Tech Discovery.”',
  //   'category': 'New Arrivals',
  //   'datePosted': '2023-06-20T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img81.jpg'
  // },
  // {
  //   'festival': 'World Dance Day',
  //   'quote':
  //       '“Celebrate the art of dance from around the globe on World Dance Day.”',
  //   'category': 'Highlights',
  //   'datePosted': '2023-06-21T12:00:00Z',
  //   'imageUrl': 'assets/poster_images/img82.jpg'
  // }
];

// List<String> categories = [
//   "Latest",
//   "Trending",
//   "Top Rated",
//   "Highlights",
//   "Favorites",
//   "Must See",
//   "Top Rated",
//   "Announcements",
//   "Popular",
//   "New Arrivals"
// ];

List<FestivalPost> postObj =
    posts.map((element) => FestivalPost.fromMap(element)).toList();

List<String> categories = postObj.map((e) => e.category).toSet().toList();
