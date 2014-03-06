class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :trackable, :validatable, :registerable,   
         :recoverable, :rememberable

  
  #accepts_nested_attributes_for :question_groups, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
