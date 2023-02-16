import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hotels"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20,top: 20),
                    child: Text("Destination"),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Icon(Icons.location_on),
                      SizedBox(width: 20,),
                      Expanded(
                        child: DropdownButton(
                          isExpanded: true,
                            items: [
                              DropdownMenuItem(child: Text("Madrid")),],
                            onChanged: (changed){}),
                      ),
                      SizedBox(width: 20,)
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Icon(Icons.date_range),
                      SizedBox(width: 20,),
                      Expanded(
                        child: DropdownButton(
                          isExpanded: true,
                            items: [
                              DropdownMenuItem(child: Text("Thu, Jan 26")),],
                            onChanged: (changed){}),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: DropdownButton(
                          isExpanded: true,
                            items: [
                              DropdownMenuItem(child: Text("Thu, Jan 27")),],
                            onChanged: (changed){}),
                      ),
                      SizedBox(width: 20,)
                    ],
                  ),
                  Row(
                    children: [
                      Spacer(),
                      OutlinedButton(onPressed: (){}, child: Text("ADVANCED SEARCH")),
                      SizedBox(width: 10,),
                      FilledButton(onPressed: (){}, child: Text("SEARCH")),
                      SizedBox(width: 20,)
                    ],
                  ),
                  SizedBox(height: 10,)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20,),
                Text("Suggested Hotels", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
              ],
            ),
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          child: Image.network("https://picsum.photos/200",fit: BoxFit.fill,),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Design Hotel Madrid",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              RatingBarIndicator(
                                rating: 3,
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
                                  Text(r"$99",style: TextStyle(fontSize: 17, color: Colors.orange, fontWeight: FontWeight.bold),)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          child: Image.network("https://picsum.photos/200",fit: BoxFit.fill,),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Design Hotel Madrid",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              RatingBarIndicator(
                                rating: 3,
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
                                  Text(r"$99",style: TextStyle(fontSize: 17, color: Colors.orange, fontWeight: FontWeight.bold),)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
