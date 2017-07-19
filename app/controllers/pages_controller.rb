class PagesController < ApplicationController


def welcome
  @header = "this is the welcome page"

end

def about
  @header = "this is the about page"

end

def contest
  flash[:notice] = "Sorry, the contest has ended"
  redirect_to "/welcome"
end

def kitten
  set_kitten_url
end

def kittens
  set_kitten_url
end

def set_kitten_url
  requested_size = params[:size]
  @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
end

def secrets
    if params[:magic_word] == 'magic'
    else
      flash[:alert] = "Sorry, you're not authorized to see that page!"
      redirect_to '/welcome'
    end
end




end
