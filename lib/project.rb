class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(name)
    Backer.new(name)
    @backers << name
    Backer.backed_projects << name
  end


end
