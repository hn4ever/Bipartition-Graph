
def possible_bipartition(dislikes)
  return true if dislikes.empty?

  group1 = Hash.new(0)
  group2 = Hash.new(0)
  dogs_checked = []

  i = 0

  while i < dislikes.length
    if dislikes[i].empty?
      group1[i] += 1
      dogs_checked << dislikes[i]
    else
      dislikes[i].each do |hated_dog|
        if group1.key?(hated_dog)
          group2[i] += 1
          dogs_checked << dislikes[i]
        elsif group2.key?(hated_dog)
          group1[i] += 1
          dogs_checked << dislikes[i]
        elsif group1.key?(hated_dog) && group1.key?(i)
          return false
        elsif group2.key?(hated_dog) && group2.key?(i)
          return false
        else
          if group1.key?(i)
            group2[hated_dog] += 1
          elsif group2.key?(i)
            group1[hated_dog] += 1
          else
            group1[i] += 1
            group2[hated_dog] += 1
          end
        end
      end
    end
    i += 1
  end


  if (group1.length + group2.length) == dislikes.length
    return true
  else
    return false
  end
  
  if group1.any?{|k,v| v > 1}
    return false
  end

  if group2.any?{|k,v| v > 1}
    return false
  end

  return true

  # another approach

  # check if dog is hated or not
  # check if the hated dogs are already in two groups
  # if they are

end
