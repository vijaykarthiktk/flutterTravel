import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SuggestedCardView extends StatelessWidget {
  String id;
  double initRating;
  String name;
  double price;

  SuggestedCardView({
    required this.id,
    required this.name,
    required this.initRating,
    required this.price,
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Image.network("https://picsum.photos/$id",fit: BoxFit.fill,),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$name",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                RatingBarIndicator(
                  rating: initRating,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Colors.grey,
                  ),
                  itemCount: 5,
                  itemSize: 15,
                  direction: Axis.horizontal,
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("From "),
                    Text('$price',style: TextStyle(fontSize: 17, color: Colors.orange, fontWeight: FontWeight.bold),)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
