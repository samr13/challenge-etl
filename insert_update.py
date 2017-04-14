from pymongo import MongoClient
import pprint
client = MongoClient('mongodb://localhost:27017/')
db = client.toptal

#Inserting new records
new_record_term_enrolment = [
	{ 'person_id': 0000000000, 'term_id': 0000000022, 'grade': 0, 'time_create': '2017-04-14 01:34:51', 'time_update': '2017-04-14 01:34:51'},
	{ 'person_id': 0000000000, 'term_id': 0000000023, 'grade': 0, 'time_create': '2017-04-13 17:34:51', 'time_update': '2017-04-13 17:34:51' }
	]
result = db.term_enrolment.insert_many(new_record_term_enrolment)
print "inserted" , result.inserted_ids 
for id in result.inserted_ids:
	pprint.pprint(db.term_enrolment.find_one({"_id": id}))


#Updating a record
db.person.update_one({ "name" : "Horacio Mcdaniel" },{'$set': {'age': '40'}})
pprint.pprint(db.person.find_one({ "name" : "Horacio Mcdaniel"}))
