# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "leann", email: "leann@leann.com", password: "leannleann")
Job.create(user_id: 5, position: "Associate", city: "New York", state: "NY", industry: "Marketing/Advertising/Sales", description: "The Associate, Digital Media Operations main responsibility is to assist in the preparation, implementation and management of digital media campaigns, including project timelines, gathering of assets, traffic instructions and creation of ad serving tags. This position is essential in the day-to-day running of the Digital Media Operations department and designated accounts. This position requires an individual that works well in a team-based, fast paced, detail-oriented environment.   While advanced Digital Operations thinking is not expected, the successful Associate, Digital Media Operations is resourceful and demonstrates the initiative to participate in advanced projects. The Associate, Digital Media Operations position is training-intensive and an aptitude for learning new skills (both technical and organic) and procedures is essential. At the end of the tenure, the Associate, Digital Media Operations will have a strong understanding of the systems and tasks involved in campaign implementation and execution, have a strong understanding of the digital media planning and buying process, and help identify new emerging tools and/or technologies that will enable the Carat to work effectively and efficiently as an organization.", my_position: "Associate", company: "Carat")

Job.create(user_id: 4, position: "Senior Frontend Engineer", city: "New York", state: "New York", industry: "Program Development", description: "What You Need for this Position
* React js,
* HTML,
* CSS,
* ECMAScript/ES6/ES2015 features,
* Webpack, Babel, Node js,
* Unit Testing such as Jasmine
What's In It for You
* High salary
* Equity, because we want you to have a share in the sum of your efforts
* Medical, dental, & vision benefits
* 401K plan
* Weekly catered team lunches
* Flexible work environment
* Unlimited paid vacation", my_position: "Senior Developer", company: "CyberCoders")

Job.create(user_id: 4, position: "Senior Technical Advertising Operations Specialist", city: "New York", state: "New York", industry: "Program Development", description: "We are looking for an advanced technical advertising operations team member who will beresponsible for complex and everyday tasks including campaign setup, reporting, optimization, troubleshooting, and workflow automation. This role is part of a semi-distributed team and will work side-by-side with an existing advertising operations manager in the same office. This is a senior role with a requirement for advanced knowledge of digital advertising concepts and platforms. This is not only a pointy-clicky job; we expect self-described “power users” of tools like Excel (do you use keyboard shortcuts for everything? good!), command line (comfort with cURL and wget), and web stack debugging (do you know how verify tracking pixels are properly firing using Charles Proxy? awesome!). This role is responsible for a number of daily repetitive tasks, some of which could be partially automated and thus basic programming/scripting/hacking skills are a huge plus, although not strictly required.", my_position: "Senior Developer", company: "CyberCoders")

Profile.create(user_id: 5, linkedin: "www.linkedin.com/in/leann-m-kim-0995748b
", city: "New York", state: "NY", willing_to_relocate: "false", industry: "Marketing/Advertising/Sales", personal_statement: "Full Stack Web Developer with deep experience in digital advertising, media planning and analytics. With understanding of digital investment, analytics tools for user experience and activities, I bring these skills to my day-to-day building of code that optimizes delivery to the end user. On-site labs broadened my perspective from mindset of a user to the constructive vision of a developer and also gave opportunities to think and build more efficiently.")
