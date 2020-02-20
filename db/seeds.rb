Employee.destroy_all
Food.destroy_all

Employee.create(name: "Paul", position: "CEO", age: 12)
Employee.create(name: "Wesley", position: "Janitor", age: 48)

Food.create(name: "Fried Rice", description: "I'm yummy")
Food.create(name: "Gravy", description: "I'm saucy")