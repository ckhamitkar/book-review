require 'httparty'

response = HTTParty.get('https://gutendex.com/books/')
books = response.parsed_response['results']

books.each do |book|


  Book.create(
    title: book['title'],
    subjects: book['subjects'],
    languages: book['languages'],
    author: book['authors'].present? ? book['authors'][0]["name"] : "unknown",
    image: book['formats']["image/jpeg"]
  )
end


review = Review.create([
    {
        title: 'Great book!',
        description: 'One of the greatest. Please read it in your free time.',
        score: 5,
        book: Book.first
    },
    {
        title: 'Masterpiece!',
        description: 'Give it a read. Fantastic',
        score: 5,
        book: Book.first
    },
    {
        title: 'Pathetic!',
        description: 'Spreading hate speech. Do not read.',
        score: 1,
        book: Book.second        
    },
    {
        title: 'Riveting Plot',
        description: 'Hooked me from the first chapter. Couldn\'t stop reading.',
        score: 4,
        book: Book.first
    },
    {
        title: 'Beautifully Written',
        description: 'Language that flows like poetry. A literary gem.',
        score: 5,
        book: Book.first
    },
    {
        title: 'Disappointing Sequel',
        description: 'Didn\'t live up to the original. Lacks the magic.',
        score: 3,
        book: Book.first
    },
    {
        title: 'Unexpected Gem',
        description: 'Picked this up randomly and was pleasantly surprised.',
        score: 4,
        book: Book.first
    },
    {
        title: 'Masterful Characterization',
        description: 'Characters so real, I felt like I knew them personally.',
        score: 5,
        book: Book.first
    },
    {
        title: 'A Bit Overrated',
        description: 'Hyped up too much. Decent, but not exceptional.',
        score: 3,
        book: Book.first
    },
    {
        title: 'Thoughtful and Profound',
        description: 'Made me ponder life\'s big questions. Deeply philosophical.',
        score: 4,
        book: Book.first
    },
    {
        title: 'Page-Turner',
        description: 'Every chapter ends with a cliffhanger. Kept me engaged.',
        score: 4,
        book: Book.first
    },
    {
        title: 'Magical Adventure',
        description: 'Took me on an enchanting journey. A whimsical delight.',
        score: 5,
        book: Book.first
    },
    {
        title: 'Not My Cup of Tea',
        description: 'Didn\'t connect with the writing style. Personal preference.',
        score: 2,
        book: Book.first
    },
    {
        title: 'A Classic!',
        description: 'Timeless masterpiece. Should be on everyone\'s reading list.',
        score: 5,
        book: Book.first
    },
    {
        title: 'Entertaining Read',
        description: 'Engaging storyline. Enjoyed every bit of it.',
        score: 4,
        book: Book.first
    },
    {
        title: 'Thought-Provoking',
        description: 'Made me reflect on society. Highly recommended.',
        score: 5,
        book: Book.last        
    },
    {
        title: 'Captivating Mystery',
        description: 'Kept me guessing till the end. Intriguing plot twists.',
        score: 4,
        book: Book.second
    },
    {
        title: 'Heartwarming Tale',
        description: 'Touched my soul. Emotionally rich characters.',
        score: 5,
        book: Book.second
    },
    {
        title: 'Mind-Blowing Sci-Fi',
        description: 'Took me to another dimension. Imaginative and brilliant.',
        score: 5,
        book: Book.second
    },
    {
        title: 'Disappointing',
        description: 'High expectations but fell short. Not recommended.',
        score: 2,
        book: Book.second
    },
    {
        title: 'Enlightening Non-Fiction',
        description: 'Eye-opening insights. Expanded my knowledge.',
        score: 4,
        book: Book.second
    },
    {
        title: 'Satisfying Read',
        description: 'Enjoyable from start to finish. A great weekend read.',
        score: 4,
        book: Book.second
    },
    {
        title: 'Unforgettable Characters',
        description: 'Characters that will stay with me forever. A must-read.',
        score: 5,
        book: Book.second
    },
    {
        title: 'Mediocre',
        description: 'Didn\'t live up to the hype. Expected more.',
        score: 3,
        book: Book.second
    },
    {
        title: 'Epic Fantasy',
        description: 'A journey into a magical realm. Epic battles and quests.',
        score: 5,
        book: Book.second
    },
    {
        title: 'Simply Beautiful',
        description: 'Elegant prose. Each sentence is a work of art.',
        score: 5,
        book: Book.second
    },
    {
        title: 'Chilling Thriller',
        description: 'Had me on the edge of my seat. Heart-pounding suspense.',
        score: 4,
        book: Book.second
    },
    {
        title: 'Unputdownable',
        description: 'Couldn\'t stop reading. Gripping and intense.',
        score: 5,
        book: Book.second
    }
])
