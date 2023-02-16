import 'package:flutter/material.dart';
import 'package:fluttertravel/widget/suggest_hotel_cardview.dart';

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
                      SizedBox(width: 20),
                      Icon(Icons.location_on),
                      SizedBox(width: 20),
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
                      SizedBox(width: 20),
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
                  SuggestedCardView(name: "Design Hotel Madrid",id: "200", initRating: 4, price: 89),
                  SuggestedCardView(name: "Trump Hotel",id: "201", initRating: 2, price: 99.9),
                  SuggestedCardView(name: "Paris Hotel",id: "301", initRating: 4, price: 99.9),
                ],
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text("Vijaykarthik "),
              accountEmail: Text("vijaykarthiktk@gmail.com"),
              currentAccountPicture: CircleAvatar(child: Text("V",style: TextStyle(fontSize: 40),),),
            )
          ],
        ),
      ),
    );
  }
}

