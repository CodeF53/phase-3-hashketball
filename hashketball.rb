# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end


# Write code here
$players = game_hash.map {|key,value| value[:players] }.flatten

def get_player player_name
  $players.select { |player| player[:player_name] == player_name }[0]
end
# pp get_player("Alan Anderson")

# hashketball #num_points_scored knows the number of points scored by each player
def num_points_scored player_name
  get_player(player_name)[:points]
end
# pp num_points_scored "Alan Anderson"

# hashketball #shoe_size knows the shoe size of each player
def shoe_size player_name
  get_player(player_name)[:shoe]
end

# hashketball #team_colors knows the Brooklyn Nets colors are Black and White
# hashketball #team_colors knows the Charlotte Hornets colors are Turquoise and Purple
def team_colors team_name
  game_hash.select { |key, value| value[:team_name] == team_name}.flatten[1][:colors]
end

# hashketball #team_names returns the team names
def team_names
  game_hash.map {|key, value| value[:team_name]}
end

# hashketball #player_numbers returns the player jersey numbers
def player_numbers team_name
  game_hash.select { |key, value| value[:team_name] == team_name }.flatten[1][:players].map {|player| player[:number]}
end
# def player_numbers
#   $players.map {|player| player[:number]}
# end

# hashketball #player_stats returns all stats for a given player
def player_stats player_name
  get_player(player_name)
end

# hashketball #big_shoe_rebounds returns the number of rebounds of the player with the biggest shoe size
def big_shoe_rebounds
  pp $players.sort! {|a,b| a[:shoe] <=> b[:shoe]}.last[:rebounds]
end