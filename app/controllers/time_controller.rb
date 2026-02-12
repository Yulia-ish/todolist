class TimeController < ApplicationController
   
  def index
    @tz=params[:tz].to_i || 0
    @bg=params[:bg]

    # @t=Time.now.in_time_zone("Central Time (US & Canada)")
    @k=Time.current.in_time_zone("Africa/Cairo")
    @t=Time.now-@tz.hours
  end


  def about
    @name="Yu I Sok"
    @m="hello"    
  end
  
  def hello

  end
end
