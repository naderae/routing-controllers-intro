class PagesController < ApplicationController

def welcome
  @header = "this is the welcome page"

end

def about
  @header = "this is the about page"

end

def contest
  @header = "this is the contest page"
end

end
