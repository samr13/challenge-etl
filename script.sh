#importing csv data
mongoimport -d toptal -c check_in --type csv --file check-in.csv --headerline

#importing sql data
mysql --user=root --password=root  hackathon < database-ddl.sql 
mysql --user=root --password=root  hackathon < 01-person.sql 
mysql --user=root --password=root  hackathon < 02-term.sql 
mysql --user=root --password=root  hackathon < 03-class.sql
mysql --user=root --password=root  hackathon < 04-building.sql 
mysql --user=root --password=root  hackathon < 05-class_term.sql
mysql --user=root --password=root  hackathon < 06-term_enrolment.sql
mysql --user=root --password=root  hackathon < 07-class_enrolment.sql


#Mongify. It takes care of all the foreign key and referential integrity constraints which exist in SQL while migrating the data in MongoDB.
#Mongify helps you move your data without worrying about the IDs or foreign IDs. It allows you to embed data into documents, including polymorphic associations.
#sudo apt-get install -y ruby ruby-dev libmysqlclient-dev
#sudo gem install -y activerecord -v 3.1.3
#sudo gem install -y mongify

#database.config
echo 'sql_connection do
  adapter     "mysql"
  host        "localhost"
  username    "root"
  password    "root"
  database    "hackathon"
  batch_size  10000           
end

mongodb_connection do
  host        "localhost"
  database    "toptal"
end' > database.config

#converting sql data to mongodb
mongify check database.config
mongify translation database.config >> translation_file.rb
#mongify process database.config translation_file.rb

#gettting mongo data to json files if needed
#mongoexport --db toptal --collection person --out person.json
#mongoexport --db toptal --collection term --out term.json
#mongoexport --db toptal --collection class --out class.json
#mongoexport --db toptal --collection building --out building.json
#mongoexport --db toptal --collection class_term --out class_term.json
#mongoexport --db toptal --collection term_enrolment --out term_enrolment.json
#mongoexport --db toptal --collection class_enrolment --out class_enrolment.json
#mongoexport --db toptal --collection check_in --out check_in.json

