class TeamsController < ApplicationController
    get "/teams" do
        teams = Team.all
        teams.to_json(include:{tasks:{include: :employee}})
        # teams.to_json(include: :tasks)
    end
end