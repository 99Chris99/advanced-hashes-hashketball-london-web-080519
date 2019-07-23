# Write your code here!
require "pry"

def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    binding.pry
    team_data.each do |attribute, data|
      #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
      binding.pry

      #what is 'data' at each loop throughout .each block? when will the following line of code work and when will it break?
      data.each do |data_item|
          binding.pry
      end
    end
  end
end

def game_hash

game_hash = {
  :home => {
            :team_name => "Brooklyn Nets",
            :colors    => ["Black", "White"],
            :players   => [
    {"Alan Anderson"=>{:number=>0,:shoe=>16,:points=>22,:rebounds=>12,:assists=>12,:steals=>3,:blocks=>1,:slam_dunks=>1}},
    {"Reggie Evans"=>{:number=>30,:shoe=>14,:points=>12,:rebounds=>12,:assists=>12,:steals=>12,:blocks=>12,:slam_dunks=>7}},
    {"Brook Lopez"=>{:number=>11,:shoe=>17,:points=>17,:rebounds=>19,:assists=>10,:steals=>3,:blocks=>1,:slam_dunks=>15}},
    {"Mason Plumlee"=>{:number=>1,:shoe=>19,:points=>26,:rebounds=>11,:assists=>6,:steals=>3,:blocks=>8,:slam_dunks=>5}},
    {"Jason Terry"=>{:number=>31,:shoe=>15,:points=>19,:rebounds=>2,:assists=>2,:steals=>4,:blocks=>11,:slam_dunks=>1}}
                          ]
            },
  :away => {
        :team_name => "Charlotte Hornets",
        :colors    => ["Turquoise", "Purple"],
        :players   => [
    {"Jeff Adrien"=>{:number=>4,:shoe=>18,:points=>10,:rebounds=>1,:assists=>1,:steals=>2,:blocks=>7,:slam_dunks=>2}},
    {"Bismack Biyombo"=>{:number=>0,:shoe=>16,:points=>12,:rebounds=>4,:assists=>7,:steals=>22,:blocks=>15,:slam_dunks=>10}},
    {"DeSagna Diop"=>{:number=>2,:shoe=>14,:points=>24,:rebounds=>12,:assists=>12,:steals=>4,:blocks=>5,:slam_dunks=>5}},
    {"Ben Gordon"=>{:number=>8,:shoe=>15,:points=>33,:rebounds=>3,:assists=>2,:steals=>1,:blocks=>1,:slam_dunks=>0}},
    {"Kemba Walker"=>{:number=>33,:shoe=>15,:points=>6,:rebounds=>12,:assists=>12,:steals=>7,:blocks=>5,:slam_dunks=>12}},
    ]
  }

  }

end



def num_points_scored(player_name)

input_name = player_name
output_result = "Not found"
search = :points

game_hash.each do |hom_awy, vals1|
  vals1[:players].each do |players|
    #puts players
  players.each do |name, attribute|
      #puts name
      #puts attribute
  attribute.each do |attname, result|
    if attname == search && name == input_name
      output_result = result
    end
  end
end
end
end
 #puts "This is the output #{output_result}."
 p output_result
end

def shoe_size(player_name)

input_name = player_name
output_result = "Not found"
search = :shoe

game_hash.each do |hom_awy, vals1|
  vals1[:players].each do |players|
    #puts players
  players.each do |name, attribute|
      #puts name
      #puts attribute
  attribute.each do |attname, result|
    if attname == search && name == input_name
      output_result = result
    end
  end
end
end
end
 #puts "This is the output #{output_result}."
 p output_result
end




def team_colors(team_name)

input_name = team_name
output_result = "Not found"

game_hash.each do |hom_awy, vals1|

  vals1.each do |vals2, vals3|

    if vals3 == input_name
    output_result = game_hash[hom_awy][:colors]
    end
end
end
 return output_result
end




def team_names

  output_result = []

  game_hash.each do |hom_awy, vals1|
    output_result.push (game_hash[hom_awy][:team_name])

end
  return output_result
    end


def player_numbers(team_name)

    input_name = team_name
    output_result = []
    search = :number

    game_hash.each do |hom_awy, vals1|
      if game_hash[hom_awy][:team_name] == input_name

      vals1[:players].each do |players|
      #  puts players
      players.each do |name, attribute|
          #puts name
          #puts attribute
      attribute.each do |attname, result|
        if attname == search
          output_result.push(result)
        end
      end
    end
  end
    end
  end
     #puts "This is the output #{output_result}."
     return output_result
    end

    def player_stats(name)

    input_name = name
    output_result = "Not found"
    search = :points

    game_hash.each do |hom_awy, vals1|
      vals1[:players].each do |players|
        #puts players
      players.each do |name, attribute|
          #puts name
          #puts attribute
      attribute.each do |attname, result|
        if name == input_name
          output_result = attribute
        end
      end
    end
    end
    end
     #puts "This is the output #{output_result}."
     return output_result
    end


def big_shoe_rebounds

shoe_size = 0
big_foot_rebounds = 0

  game_hash.each do |hom_awy, vals1|
    vals1[:players].each do |players|
      players.each do |name, attri|
          current_rebound = players[name][:rebounds]
          current_shoe = players[name][:shoe]

          if players[name][:shoe] > shoe_size
            shoe_size = current_shoe
            big_foot_rebounds = current_rebound
          end

        #attri.each do |attname, result|

        #  puts game_hash[vals1][:players]#[players][attri]]

        #end
      end
    end
  end
return big_foot_rebounds
end



def most_points_scored

points_scored = 0
best_player = ""

  game_hash.each do |hom_awy, vals1|
    vals1[:players].each do |players|
      players.each do |name, attri|
          current_name = name
          current_points = players[name][:points]

          if players[name][:points] > points_scored
            points_scored = current_points
            best_player = current_name
          end

        #attri.each do |attname, result|

        #  puts game_hash[vals1][:players]#[players][attri]]

        #end
      end
    end
  end
return best_player
end

def winning_team

home_points = 0
away_points = 0
winner = ""


game_hash[:home][:players].each do |players|
      players.each do |name, attri|
          current_points = players[name][:points]
          home_points += current_points
      end
end

current_points = 0

game_hash[:away][:players].each do |players|
      players.each do |name, attri|
            current_points = players[name][:points]
            away_points += current_points
      end
    end


if home_points > away_points
  winner = game_hash[:home][:team_name]
else
  winner = game_hash[:away][:team_name]
end



return winner

end

def player_with_longest_name

name_length = 0
longest_name = ""
current_name_length = 0


game_hash.each do |hom_awy, vals1|
  vals1[:players].each do |players|

      players.each do |name, attri|
        current_name_length = name.length
        current_name = name

      if current_name_length > name_length
        longest_name = current_name
        name_length = current_name_length
      end


      end
end
end
#puts name_length
return longest_name

end
#player_with_longest_name
