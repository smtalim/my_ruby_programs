require 'mongo'

#conn = Mongo::Connection.new
#db = conn.db("rubylearning")
#db.collection_names.each { |name| puts name }

#coll = db.collection("students")
#doc = {:name => 'Manish', :dob => Time.now, :loves => ['english','marathi'], :weight => 62, :gender => 'm', :country => 'india'}
#coll_id = coll.insert(doc)
#coll.update( { :_id => coll_id }, '$set' => { :weight => 60 } )

db = Mongo::Connection.new('staff.mongohq.com', 10066).db("rubylearning")
auth = db.authenticate('IndianGuru', 'sats7602')

#coll = db.collection("students")
#doc = {:name => 'Manish', :dob => Time.now, :loves => ['english','marathi'], :weight => 62, :gender => 'm', :country => 'india'}
#coll_id = coll.insert(doc)



