require_relative('../models/food')
food1 = Food.new({
  "name" => "Pizza",
  "country" => "Italy",
  "Spicy" => "None",
  "Ingredients" => "sfh;lfvhd;v",
  "Recipe" => "sejvhsdf;lvdjhfvdlsf;jvh"
  })

food2 = Food.new({
  "name" => "Chicken Chow-Mein",
  "country" => "Chinese",
  "Spicy" => "None",
  "Ingredients" => "sfh;lfvhd;v",
  "Recipe" => "sejvhsdf;lvdjhfvdlsf;jvh"
  })

food3 = Food.new({
  "name" => "Beef Chow-mein",
  "country" => "Chinese",
  "Spicy" => "None",
  "Ingredients" => "sfh;lfvhd;v",
  "Recipe" => "sejvhsdf;lvdjhfvdlsf;jvh"
  })

food4 = Food.new({
  "name" => "Katsu Curry",
  "country" => "Japanese",
  "Spicy" => "None",
  "Ingredients" => "sfh;lfvhd;v",
  "Recipe" => "sejvhsdf;lvdjhfvdlsf;jvh"
  })

food5 = Food.new({
  "name" => "Kebab",
  "country" => "Indian",
  "Spicy" => "None",
  "Ingredients" => "sfh;lfvhd;v",
  "Recipe" => "sejvhsdf;lvdjhfvdlsf;jvh"
  })

food1.save()
food2.save()
food3.save()
food4.save()
food5.save()