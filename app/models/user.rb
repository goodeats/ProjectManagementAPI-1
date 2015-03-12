class User < ActiveRecord::Base
  has_many :projects
  has_many :tasks

  has_attached_file :avatar,
                    styles: { :medium => "300x300>", :thumb => "100x100>" },
                    default_url: 'missing_avatar.jpg'
  #default image is stored in app/assets/images/medium/missing_avatar.jpg
end
