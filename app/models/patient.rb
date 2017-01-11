class Patient < ActiveRecord::Base
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  # devise :invitable, :database_authenticatable, :registerable,
  #        :recoverable, :trackable,
  #        :timeoutable, :rememberable, :lockable
end