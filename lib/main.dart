import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}


class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  int likess = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButton: FloatingActionButton(
         onPressed: (){
           setState(() {
              likess++;
           });
         },
         child: Icon(Icons.favorite,
         color: Colors.red),
       ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: 
                 Image( fit: BoxFit.fitWidth,image: AssetImage("assets/a_img.jpg"))
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Saif-ul-malok",
                 style: TextStyle(
                   fontSize: 30.0,
                   fontWeight:  FontWeight.bold,
                 ),
                ),                
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Saiful Muluk is a mountainous lake located at the northern end of the Kaghan Valley, near the town of Naran in the Saiful Muluk National Park. The lake is a source of the Kunhar river. At an elevation of 3,224 m above sea level, the lake is located above the tree line, ne of the highest lakes in Pakistan."),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                  mainAxisAlignment:  MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Likes :",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Text("$likess",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),),
                  ],  
              ),
            ],
          ),
        ),
      ),
    );
  }
}