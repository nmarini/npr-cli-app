

class NPRCLIApp::Story
  attr_accessor :title, :category, :link

  @@stories = []

  def self.all_stories
    @@stories
  end

  def self.scrape_top
    doc = Nokogiri::HTML(open("https://www.npr.org"))
    top_story = NPRCLIApp::Story.new
    top_story.title = doc.search('h3.title').first.text
    top_story.category = doc.search('h2.slug a').first.text.strip
    top_story.link = doc.search('div.story-text a')[1].attr('href')
  binding.pry
  end

  def self.scrape_featured
    doc = Nokogiri::HTML(open("https://www.npr.org"))



  end

end
