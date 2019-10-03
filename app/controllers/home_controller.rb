class HomeController < ApplicationController

    def index
        today = Date.today
        @comingsoon = Movie.all.where("release_date > ?", today)
        @outnow = Movie.all.where("release_date <= ?", today)
    end

    
end
