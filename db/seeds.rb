# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

q1 = Question.create(question: 'A database(db) has tables in it. Each table represents a real life object and the relevant attributes about that object. For example, a table in the DB might be called Users and have these fields: first_name, last_name, address, city, state, zip, phone_number. <br>\r\nNotice that each of the fields is one piece of information about that object and only that object. Below are some examples of tables. Only one has all relevant attributes. Which one?')
q2 = Question.create(question: "In the exciting world of programming, databases are the most common way to store data for future use. You interact with them on just about every website you go to and you probably didn't even know it! It's important to understand how databases work. <br>\r\nThey have relationships between pieces of data. You may need to research database relationships to answer this one! Here is your chance to learn about that! Go to imdb.com and find the 1995 version of Toy Story in order to answer the following question: Toy Story ___________ actors' voices and ___________ director.")
q3 = Question.create(question: 'Following are some code snippets. You will need to do a Google search for \"jQuery: opacity change on hover not working\" and find which of the following code snippets is a valid answer to that question as accepted on stackoverflow.com.')
q4 = Question.create(question: "Which of the following uses a hamburger menu icon?")
q5 = Question.create(question: "UI/UX is a big deal in building websites that people will want to come back to. The whole goal is you want a simple to use website, that is clear on how you interact with it, and it's coloring, text, and layout are attractive. <br>\r\nFollowing are four sites with varying degrees of UI/UX. Find the one that meets the criteria above. The other 3 don't.")
q6 = Question.create(question: "There are lots of principles and guidelines to follow to make sure that your User Experience (UX) is converting your users. Following are four principles, one of them is <strong><i>NOT</i></strong> a priciple of good UX. You'll have to do some research to understand the principles of UI/UX and find out which of these doesn't represent principles of UI/UX.")
q7 = Question.create(question: "Which one of the following four sites is <strong><i>NOT</i></strong> using parallax scrolling?")
q8 = Question.create(question: "What makes a good CTA in web design?")
q9 = Question.create(question: "Carousels are very common on many sites. Which of the following images shows a typical carousel?")

q1.answers.create(answer: "<ul>Computers   <li>mac_number</li>   <li>model</li>   <li>brand</li>   <li>year_made</li>   <li>color</li> </ul>", correct: true)
q1.answers.create(answer: "<ul>Boats   <li>name</li>   <li>ocean_color</li>   <li>owners_name</li>   <li>anchors_manufacturers_name</li> </ul>")
q1.answers.create(answer: "<ul>PhoneNumbers   <li>number</li>   <li>who_called</li>   <li>who_you_have_called</li>   <li>area_code</li> </ul>")
q1.answers.create(answer: "<ul>Houses   <li>bedrooms</li>   <li>bathrooms</li>   <li>sq_feet</li>   <li>owners_name</li>   <li>owners_address</li>   <li>owners_phone_number</li> </ul>")

q2.answers.create(answer: "has many, belongs to", correct: true)
q2.answers.create(answer: "belongs to many, has one")
q2.answers.create(answer: "is not equal to, has one")
q2.answers.create(answer: "has one, has many")

q3.answers.create(answer: "Image 1", correct: true, image: File.new("#{Rails.root}/app/assets/images/opacity-not-working/Image1.png"))
q3.answers.create(answer: "Image 2", image: File.new("#{Rails.root}/app/assets/images/opacity-not-working/Image2.png"))
q3.answers.create(answer: "Image 3", image: File.new("#{Rails.root}/app/assets/images/opacity-not-working/Image3.png"))
q3.answers.create(answer: "Image 4", image: File.new("#{Rails.root}/app/assets/images/opacity-not-working/Image4.png"))

q4.answers.create(answer: "Image 1", correct: true, image: File.new("#{Rails.root}/app/assets/images/hamburger-menu/Image1.png"))
q4.answers.create(answer: "Image 2", image: File.new("#{Rails.root}/app/assets/images/hamburger-menu/Image2.png"))
q4.answers.create(answer: "Image 3", image: File.new("#{Rails.root}/app/assets/images/hamburger-menu/Image3.png"))
q4.answers.create(answer: "Image 4", image: File.new("#{Rails.root}/app/assets/images/hamburger-menu/Image4.png"))

q5.answers.create(answer: "https://codefights.com/", correct: true)
q5.answers.create(answer: "http://superior-web-solutions.com/")
q5.answers.create(answer: "http://www.petersbuss.se/")
q5.answers.create(answer: "http://paradisewithaview.com/")

q6.answers.create(answer: "Surfaces and edges that provide visual cues that are grounded in reality", correct: true)
q6.answers.create(answer: "Users discover how to accomplish their tasks the first time they look at a product")
q6.answers.create(answer: "Your product instills an emotional connection so they will champion your product and share its virtues")
q6.answers.create(answer: "The trust and credibility of your site hinges on small things like spelling errors, but also on things like alignment between buttons/links and where they lead")

q7.answers.create(answer: "http://www.foxmovies.com/", correct: true)
q7.answers.create(answer: "http://www.teapot-creation.com/#/page/contact")
q7.answers.create(answer: "http://nasaprospect.com/")
q7.answers.create(answer: "http://islreview.com/")

q8.answers.create(answer: "Visually striking with copy that compels you to click the offer", correct: true)
q8.answers.create(answer: "Avoid embellishments such as bevels, embossing, drop shadows, gradients or artificial textures")
q8.answers.create(answer: "Designed to imitate objects in the physical world")
q8.answers.create(answer: "Dynamic compositions that have larger amounts of intersecting diagonal lines")

q9.answers.create(answer: "", correct: true, image: File.new("#{Rails.root}/app/assets/images/carousel/Image1.png"))
q9.answers.create(answer: "", image: File.new("#{Rails.root}/app/assets/images/carousel/Image2.png"))
q9.answers.create(answer: "", image: File.new("#{Rails.root}/app/assets/images/carousel/Image3.png"))
q9.answers.create(answer: "", image: File.new("#{Rails.root}/app/assets/images/carousel/Image4.png"))