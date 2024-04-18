# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  @candidates.each do |candidate|
    return candidate if candidate[:id] == id
  end
  nil
end
  
def experienced?(candidate)
  if candidate[:years_of_experience] >= 2
    return true
  else
    return false
  end
end

def qualified_candidates(candidates)
  @candidates.select do |candidate|
    experienced?(candidate) &&
      candidate[:github_points] >= 100 &&
      (candidate[:languages].find("Ruby") || candidate[:languages].find("Python")) &&
      (Date.today - candidate[:date_applied]).to_i <= 15 &&
      candidate[:age] > 17
    end
end

# More methods will go below

def ordered_by_qualifications(candidates)
  @candidates.sort_by { |candidate| [-candidate[:years_of_experience], -candidate[:github_points]] }
end