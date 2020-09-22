class Pet {

  String name;
  String location;
  String distance;
  String condition;
  List<String> images;
  bool favorite;

  Pet(this.name, this.location, this.distance, this.condition, this.images, this.favorite);

}

List<Pet> getPetList(){
  return <Pet>[
    Pet(
      "Abyssinian Cats",
      "California",
      "2.5",
      "Adoption",
      [
        "assets/images/cats/cat_0_0.jpg",
        "assets/images/cats/cat_0_1.jpg",
        "assets/images/cats/cat_0_2.jpg",
      ],
      false,
    ),
    Pet(
      "Scottish Fold",
      "New Jersey",
      "1.2",
      "Mating",
      [
        "assets/images/cats/cat_1_0.jpg",
        "assets/images/cats/cat_1_1.jpg",
      ],
      false,
    ),
    Pet(
      "Ragdoll",
      "Miami",
      "1.2",
      "Disappear",
      [
        "assets/images/cats/cat_2_0.jpg",
      ],
      false,
    ),
    Pet(
      "Burmés",
      "Chicago",
      "1.2",
      "Disappear",
      [
        "assets/images/cats/cat_3_0.jpg",
      ],
      false,
    ),
    Pet(
      "American Shorthair",
      "Washintong",
      "1.2",
      "Mating",
      [
        "assets/images/cats/cat_4_0.jpg",
      ],
      false,
    ),
    Pet(
      "British Shorthair",
      "New York",
      "1.9",
      "Adoption",
      [
        "assets/images/cats/cat_5_0.jpg",
      ],
      false,
    ),
    
  ];
}

enum Category { CAT, DOG, BUNNY, HAMSTER }

enum Condition { Adoption, Disappear, Mating }