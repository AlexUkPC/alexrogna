module HomeHelper
  def procent(skill)
    # total projects, work places and education places
    total = @projects.count + @works.count + @educations.count
    #start from 0
    found_in_projects=found_in_work_places=found_in_education_places=0 
    # how many times is found the skill by name tag in projects
    @projects.each do |project| 
      found_in_projects += project.tags.count{ |tag| tag.name.downcase==skill.name.downcase||(tag.skills.count{|s| s.name.downcase==skill.name.downcase}>0) } 
    end 
    #how many times is found the skill by name tech in work places
    @works.each do |work| 
      found_in_work_places += work.teches.count{ |tech| tech.name.downcase==skill.name.downcase||(tech.skills.count{|s| s.name.downcase==skill.name.downcase}>0) }  
    end 
    #how many times is found the skill by name tech in education places
    @educations.each do |education| 
      found_in_education_places += education.teches.count{ |tech| tech.name.downcase==skill.name.downcase||(tech.skills.count{|s| s.name.downcase==skill.name.downcase}>0) } 
    end 
    # how many times is found the skill in projects, work places and half of the education places, books, linkedin badges, hacker rank certificate and badges, free code camp certificate (this is count as half because is more important to use the skill in real projects/work than to read about it) 
    found_skill = found_in_projects + found_in_work_places + (found_in_education_places + skill.books.count + skill.linkedins.count + skill.hacker_ranks.count + skill.free_code_camps.count)/2
    # final calculation: how many time is found the skill from total 
    (found_skill * 100 / total).to_i
  end 
end
