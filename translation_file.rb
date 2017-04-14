table "building" do
	column "id", :key, :as => :integer
	column "name", :string
	column "rooms", :integer
	column "coordinates", :text
end

table "class" do
	column "id", :key, :as => :integer
	column "name", :string
	column "credits", :integer
end

table "class_enrolment" do
	column "id", :key, :as => :integer
	column "term_enrolment_id", :integer, :references => "term_enrolments"
	column "person_id", :integer, :references => "people"
	column "class_id", :integer, :references => "classes"
	column "grade", :integer
end

table "class_x_term" do
	column "id", :key, :as => :integer
	column "term_id", :integer, :references => "terms"
	column "class_id", :integer, :references => "classes"
	column "building_id", :integer, :references => "buildings"
	column "weekday", :integer
	column "offering", :integer
	column "room", :integer
end

table "person" do
	column "id", :key, :as => :integer
	column "name", :string
	column "email", :string
	column "age", :integer
	column "gender", :string
	column "time_create", :datetime
	column "time_update", :datetime
end

table "term" do
	column "id", :key, :as => :integer
	column "year", :integer
	column "period", :string
end

table "term_enrolment" do
	column "id", :key, :as => :integer
	column "person_id", :integer, :references => "people"
	column "term_id", :integer, :references => "terms"
	column "grade", :integer
	column "time_create", :datetime
	column "time_update", :datetime
end

table "building" do
	column "id", :key, :as => :integer
	column "name", :string
	column "rooms", :integer
	column "coordinates", :text
end

table "class" do
	column "id", :key, :as => :integer
	column "name", :string
	column "credits", :integer
end

table "class_enrolment" do
	column "id", :key, :as => :integer
	column "term_enrolment_id", :integer, :references => "term_enrolments"
	column "person_id", :integer, :references => "people"
	column "class_id", :integer, :references => "classes"
	column "grade", :integer
end

table "class_x_term" do
	column "id", :key, :as => :integer
	column "term_id", :integer, :references => "terms"
	column "class_id", :integer, :references => "classes"
	column "building_id", :integer, :references => "buildings"
	column "weekday", :integer
	column "offering", :integer
	column "room", :integer
end

table "person" do
	column "id", :key, :as => :integer
	column "name", :string
	column "email", :string
	column "age", :integer
	column "gender", :string
	column "time_create", :datetime
	column "time_update", :datetime
end

table "term" do
	column "id", :key, :as => :integer
	column "year", :integer
	column "period", :string
end

table "term_enrolment" do
	column "id", :key, :as => :integer
	column "person_id", :integer, :references => "people"
	column "term_id", :integer, :references => "terms"
	column "grade", :integer
	column "time_create", :datetime
	column "time_update", :datetime
end

table "building" do
	column "id", :key, :as => :integer
	column "name", :string
	column "rooms", :integer
	column "coordinates", :text
end

table "class" do
	column "id", :key, :as => :integer
	column "name", :string
	column "credits", :integer
end

table "class_enrolment" do
	column "id", :key, :as => :integer
	column "term_enrolment_id", :integer, :references => "term_enrolments"
	column "person_id", :integer, :references => "people"
	column "class_id", :integer, :references => "classes"
	column "grade", :integer
end

table "class_x_term" do
	column "id", :key, :as => :integer
	column "term_id", :integer, :references => "terms"
	column "class_id", :integer, :references => "classes"
	column "building_id", :integer, :references => "buildings"
	column "weekday", :integer
	column "offering", :integer
	column "room", :integer
end

table "person" do
	column "id", :key, :as => :integer
	column "name", :string
	column "email", :string
	column "age", :integer
	column "gender", :string
	column "time_create", :datetime
	column "time_update", :datetime
end

table "term" do
	column "id", :key, :as => :integer
	column "year", :integer
	column "period", :string
end

table "term_enrolment" do
	column "id", :key, :as => :integer
	column "person_id", :integer, :references => "people"
	column "term_id", :integer, :references => "terms"
	column "grade", :integer
	column "time_create", :datetime
	column "time_update", :datetime
end

