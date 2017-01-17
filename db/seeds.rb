# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new(:username => 'admin',
                :email => 'admin@admin.com',
                :password => '123456', #Devise.friendly_token[0,20]
                :password_confirmation => '123456')
user.save(:validate => false)

Reference.create(:name => 'category_request') #01
Reference.create(:name => 'status_request') #02
Reference.create(:name => 'currency') #03

ReferenceList.create(:name => 'cancelled', :reference_id => ReferenceConstant::STATUS_REQUEST) #01
ReferenceList.create(:name => 'waiting for evaluation', :reference_id => ReferenceConstant::STATUS_REQUEST) #02
ReferenceList.create(:name => 'queued', :reference_id => ReferenceConstant::STATUS_REQUEST) #03
ReferenceList.create(:name => 'done', :reference_id => ReferenceConstant::STATUS_REQUEST) #04