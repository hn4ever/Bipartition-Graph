
def possible_bipartition(dislikes)
    color = Array.new(dislikes.size, 0)
    stack =[]

    dislikes.each_index do |i|
        if color[i] == 0
            stack << i
            color[i] = 1
            until stack.empty?
                dog = stack.pop
                if !dislikes[dog].empty?
                    dislikes[dog].each do |enemy|
                        if color[enemy] ==  0
                            color[enemy] = -1 * (color[dog])
                            stack << enemy
                        elsif color[enemy] == color[dog]
                            return false
                        end
                    end
                end
            end
        end
    end
    return true
end