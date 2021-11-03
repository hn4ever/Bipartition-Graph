
def possible_bipartition(dislikes)


    # color = Array.new(dislikes.size, nil) # each dog will have a specific color

    # dislikes.each_with_index do |dog, i|
    #     if color[i].nil?
    #         color[i] = 0
    #         if !dog.empty?
    #             dog.each do |enemies|
    #                 stack = [] # first dog is dog 0
    #                 stack << 0
    #                 until stack.empty?
    #                     current = stack.pop
    #                     dislikes[current].each do |enemy|
    #                         if color[enemy].nil?
    #                             color[enemy] = -color[i]
    #                             stack << dislikes[enemy]
    #                         elsif color[enemy] == color[i]
    #                             false
    #                         end
    #                     end
    #                 end
    #             end
    #         end
    #     end
    # end
    # true

    # color the dog green = 1
    # dfs if it's not colored
    #   color the different color color[enemy] = - color[dog]
    # if it's colord and the color is the opposite and colored, continue
    # if color the same then return false

    color = Array.new(dislikes.size, nil)

    dislikes.each_with_index do |enemies, i|
        if !color[i].nil?
            stack = [i]
            color[i] = 1
            until stack.empty?
                if !enemies.empty?
                    enemies.each do |enemy|
                        if color[ememy].nil? #color first then add to stack?
                            color[enemy] = -color[i]
                            stack << enemy
                        else
                            return false if color[enemy] ==  color[i]
                        end
                    end
                end
            end
        end
    end
    true
end


dislikes = [ [3, 6],
[2, 5],
[1, 3],
[0, 2],
[5],
[1, 4],
[0]
]

puts possible_bipartition(dislikes)
