import 'package:flutter/material.dart';

class VerticalTile extends StatelessWidget {
  const VerticalTile({super.key, required this.imageAdd, required this.name, required this.rating, required this.location, required this.price});
  final String imageAdd;
  final String name;
  final String rating;
  final String location;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 22),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(12),

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(imageAdd,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8,vertical: 7),
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Text(
                      rating+' ⭐️',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(18),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17
                ),),
                const SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.location_on_sharp,size: 20,color: Colors.black26,),
                    SizedBox(width: 3,),
                    Text(location)
                  ],
                ),
                const SizedBox(height: 8,),
                Text('\$'+price, style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
