1000.times do
  Support.create name: Faker::Name.name ,
              email: Faker::Internet.email,
              message: Faker::Lorem.sentence,
              department: ["Sales", "Marketing", "Technical"][rand(3)]
end
