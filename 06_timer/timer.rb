class Timer
  #write your code here
  @seconds
  @time_string
  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def time_string
    @time_string
  end

  def seconds=(seconds)
    @seconds = seconds
    hash = {"hours" => 0, "minutes" => 0, "seconds" => 0}
    hash_string={}

    hash["hours"] = seconds/3600
    seconds -= hash["hours"]*3600
    hash["minutes"] = seconds/60
    hash["seconds"] = seconds - 60*hash["minutes"]

    hash.each do|key,value| 
      if( 10 > value )
        hash_string[key] = "0" + value.to_s
      else
        hash_string[key] = value.to_s
      end
    end
    
    @time_string = hash_string["hours"] + ":" + hash_string["minutes"] + ":" + hash_string["seconds"]
  end

end
