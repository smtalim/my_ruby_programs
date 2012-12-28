require 'sinatra'
require 'mongo'

configure do
  db = Mongo::Connection.new('staff.mongohq.com', 10036).db("contacts")
  auth = db.authenticate('IndianGuru', 'sats7602')
  set :mongo_db, db
end

get '/collections/?' do
  settings.mongo_db.collection_names.each { |name| puts name }
end

#conn = Mongo::Connection.new
#db = conn.db("rubylearning")
#db.collection_names.each { |name| puts name }

#coll = db.collection("students")
#doc = {:name => 'Manish', :dob => Time.now, :loves => ['english','marathi'], :weight => 62, :gender => 'm', :country => 'india'}
#coll_id = coll.insert(doc)
#coll.update( { :_id => coll_id }, '$set' => { :weight => 60 } )


#coll = db.collection("students")
#doc = {:name => 'Manish', :dob => Time.now, :loves => ['english','marathi'], :weight => 62, :gender => 'm', :country => 'india'}
#coll_id = coll.insert(doc)



