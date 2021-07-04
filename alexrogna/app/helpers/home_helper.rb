module HomeHelper
  def procent(skill)
    # total projects, books, linkedin badges, hacker rank certificate and badges, free code camp certificate work places and education places
     total = @projects.count + Book.all.count + Linkedin.all.count + HackerRank.all.count + FreeCodeCamp.all.count + @works.count + @educations.count
    #37
     found_in_projects=found_in_work_places=found_in_education_places=0 
     # how many times is found the skill by name in projects
     @projects.each do |project| 
       found_in_projects += project.tags.count{ |tag| tag.name.downcase==skill.name.downcase||(tag.skills.count{|s| s.name.downcase==skill.name.downcase}>0) } 
     end 
     #how many times is found the skill by name in work places
     @works.each do |work| 
       found_in_work_places += work.teches.count{ |tech| tech.name.downcase==skill.name.downcase||(tech.skills.count{|s| s.name.downcase==skill.name.downcase}>0) }  
     end 
     #how many times is found the skill by name in education places
     @educations.each do |education| 
       found_in_education_places += education.teches.count{ |tech| tech.name.downcase==skill.name.downcase||(tech.skills.count{|s| s.name.downcase==skill.name.downcase}>0) } 
     end 
     # how many times is found the skill in projects, books, linkedin badges, hacker rank certificate and badges, free code camp certificate work places and education places
     found = found_in_projects + skill.books.count + skill.linkedins.count + skill.hacker_ranks.count + skill.free_code_camps.count + found_in_work_places + found_in_education_places
     #8
     # final calculation 
     100 - (100.00 / total * ( total - found )).to_i
  end 
end
