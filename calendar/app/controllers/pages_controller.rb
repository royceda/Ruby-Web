class PagesController < ApplicationController
  def home

  end


  def index
  end

  def data
   events = Event.all

   render :json => events.map {|event| {
              :id => event.id,
              :start_date => event.start_date.to_formatted_s(:db),
              :end_date => event.end_date.to_formatted_s(:db),
              :text => event.text
          }}
 end

end
