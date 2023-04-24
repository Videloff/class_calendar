require 'time'

class Event
  attr_accessor :start_date, :duration, :title, :mails
  @@all_events = []

  def initialize(date_to_save, duration_to_save, title_to_save, *attendees)
    @start_date = Time.parse(date_to_save)
    @duration = duration_to_save * 60
    @title = title_to_save
    @mails = attendees
    @current_hour = Time.now
  end

  def change_start_hour(change_hour)
    @start_date += change_hour
  end

  def postpone_24h
    @start_date += 86400 #ajoute 24 heures a l'heure initiale
  end

  def end_date
    return @start_date + duration
  end

  def is_past?
    @start_date + @duration < @current_hour ? true : false
  end

  def is_future?
    @start_date + @duration >= @current_hour ? true : false
  end

  def is_soon?
    @start_date > @current_hour && @start_date <= @current_hour + 1800 ? true : false
  end
  
  def to_str
    puts ">Titre : #{@title}"
    puts ">Date de début : #{@start_date.strftime("%Y-%m-%d %H:%M")}"
    #puts ">Date de début : #{@start_date.strftime("%A %d %B %Y à %H:%M")}"
    puts ">Durée : #{@duration/60} minutes"
    puts ">Invité(e)s : #{mails.join(", ")}"
  end

end