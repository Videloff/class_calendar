# require 'pry'

class User
  attr_accessor :name, :mail, :age
  @@number_of_user = 0
  @@all_users = []

  def initialize(user_name, mail_to_save, age_to_save)
    @name = user_name
    @mail = mail_to_save
    @age = age_to_save.to_i
    @@all_users << self
  end

  def self.all
    return @@all_users
  end

  def self.find_by_email(compared_mail)
    bol = 0
    for i in 0..(@@all_users.count-1) do
      if @@all_users[i].mail == compared_mail
        bol = 1
        puts "L'user dont les mail est '#{compared_mail}' est '#{@@all_users[i].name}'."
      end
    end
    if bol == 0
      puts "Ce mail n'est lié à aucun user."
    end
  end

end

# binding.pry
# puts "end of line"