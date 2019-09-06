class AppearancesController < ApplicationController

    def index
        @appearances = Appearance.all
    end

    def new

    end
end
