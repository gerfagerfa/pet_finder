import 'package:flutter/material.dart';
import 'package:pet_finder/data.dart';

Widget buildPet(Pet pet, int index){
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      border: Border.all(
        color: Colors.grey[200],
        width: 1,
      ),
    ),
    margin: EdgeInsets.only(right: index != null ? 16 : 0, left: index == 0 ? 16 : 0),
    width: 220,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[

        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(pet.images[0]),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                decoration: BoxDecoration(
                  color: pet.condition == "Adoption" ? Colors.orange[100] : pet.condition == "Disappear" ? Colors.red[100] : Colors.blue[100],
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text(
                  pet.condition,
                  style: TextStyle(
                    color: pet.condition == "Adoption" ? Colors.orange : pet.condition == "Disappear" ? Colors.red : Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),

              SizedBox(
                height: 8,
              ),

              Text(
                pet.name,
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                height: 8,
              ),

              Row(
                children: [

                  Icon(
                    Icons.location_on,
                    color: Colors.grey[600],
                    size: 18,
                  ),

                  SizedBox(
                    width: 4,
                  ),

                  Text(
                    pet.location,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),

                  SizedBox(
                    width: 4,
                  ),

                  Text(
                    "(" + pet.distance + "km)",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),

            ],
          ),
        ),

      ],
    ),
  );
}