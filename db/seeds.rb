# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Hero.create([
    {
        name: "Barry Allen",
        super_name: "Flash"
    },
    {
        name: "Melissa Benoist",
        super_name: "Supergirl"
    },
    {
        name: "Diana",
        super_name: "Wonder woman"
    }
])

Power.create([
    {
        name:"Superspeed",
        description:" ability to run, move, and think extremely fast, use superhuman reflexes"
    },
    {
        name:"Superhuman strength",
        description:"Very physically strong"
    },
    {
        name:" Immortality",
        description:"The amazons age slow"
    }
])

HeroPower.create([
    {
        strength:"Strong",
        power_id:1,
        hero_id:1
    },
    {
        strength:"Weak",
        power_id:2,
        hero_id:2
    },
    {
        strength:"Average",
        power_id:3,
        hero_id:3
    }
])