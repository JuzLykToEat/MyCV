class LandingController < ApplicationController
require 'json'

  def index
    cv = File.read('app/assets/javascripts/MyCV.json')
    data_hash = JSON.parse(cv)
    @name = data_hash['name']
    @address = data_hash['address']
    @mobile = data_hash['mobile']
    @email = data_hash['email']
    @profile = data_hash['profile']
    @achievements = data_hash['achievements']
    @employments = data_hash['employments']
    @education = data_hash['education']
    @core_skills = data_hash['core-skills']
    @interests = data_hash['interests']
    binding.pry
  end

end
