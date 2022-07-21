player_score_entity = lambda{
  
    puts "please enter players score";
    @cc=gets.chomp;
     #spliting and sorting players score
   if !(@cc.split(" ").size==@m)
    puts "the lenght of entered element in array is wrong"
  until (@cc.split(" ").size==@m)
    puts "puts players entities";
      @cc=gets.chomp;
  end
  end
     }
  
  leaderboardentity= lambda{
    #assigning leaderboard score
    puts "puts leaderboard entities";
    @c=gets.chomp;
  
     if !(@c.split(" ").size==@n)
     puts "the lenght of entered element in array is wrong"
     until (@c.split(" ").size==@n)
     puts "puts leaderboard entities";
      @c=gets.chomp;
     end  
     end
     }
  
  
  
  
  
  puts "-----------LeaderBoard Climbing: -----------"
  puts "-----------Constraints are: -----------"
  puts "1 <= n <= 2 x 10^5"
  puts "1 <= m <= 2 x 10^5"
  puts "0 <= ranked[i] <= 10^9"
  puts "0 <= player[i] <= 10^9"
  puts "----------------------------------------"
   #declaration of array
  ranked = Array.new;
  player = Array.new;
  @c = "";
  @cc = "";
   @n=0;
   @m=0;
  
  
  puts "plz enter number of players on leaderboard";
  #getting vale for n
   @n=gets.chomp.to_i; 
     # checking contraints
      if !(@n.between? 1,2*10**5)
     puts "wrong no";
    # checking contraints unless condition true
    until (@n.between? 1,2*10**5)
     puts "plz enter valid number for leaderboard";
     @n=gets.chomp.to_i; 
     end 
   
    end
   
  leaderboardentity.call 
    #spliting array and converting them in integer
    #also arranging dec
    ranked=@c.split(" ").map {|x| x.to_i}.sort().reverse();
  
     for i in ranked do
      if (i<0 || i>10**9)
        puts "you enter an invalid rank score"
        puts "please enter again"
       leaderboardentity.call 
      end
      end 
      
    #ranked.reverse();
    #puts c
    #puts "after sortinig"; 
    # puts ranked
   
  puts "the number of game played by a player";
   @m=gets.chomp.to_i;
   if !(@m.between? 1,2*10**5) 
     puts "wrong no";
    # checking contraints unless condition true
    until (@m.between? 1,2*10**5)
     puts "plz enter valid number for player's turns";
    @m=gets.chomp.to_i; 
    end 
   end
  
  
      player_score_entity.call
  
    
  
   player=@cc.split(" ").map{ |x| x.to_i}.sort();
  
    for i in player
      if (i>10**9 || i<0)
        puts "you enter an invalid player score"
        puts "please enter again"
      player_score_entity.call
      end 
    end
    #puts "after sortinig"; 
    #puts player
   
   #puts "player score"
   # puts player;
   #puts "ranked array of player"
   #puts ranked;
   #puts "ranke of player";
   # puts p_rank;
  # climbingLeaderboard method
  #puts ranked
  #puts player
   def climbingLeaderboard (aa,bb)
     p_rank = Array.new;
     
     b=bb;
     b.each do |i|
       a=aa;
  p_rank<<(((((a<<i).sort).uniq.reverse).find_index(i))+1);
   end
     return p_rank;
   end
    # calling method climbingLeaderboard
     player_rank=climbingLeaderboard(ranked,player);
   #loops to print players rank after each score
  ii=1
    for i in player_rank do
     puts "players rank after #{ii} round #{i}"
      ii=ii+1
    end