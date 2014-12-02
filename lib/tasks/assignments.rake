namespace :orphans do

  desc "find orphans"
  task find: :environment do
    p Assignment.where.not(person_id: Person.all).count
    end

  desc "delete orphans"
  task delete: :environment do
    Assignment.where.not(person_id: Person.all).delete_all
  end

end
