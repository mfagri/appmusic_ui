import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Music Ui'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 20),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 1,
      //   backgroundColor: Colors.grey[300],
      //   title: Text(widget.title,style: TextStyle(color: Colors.black),),
      // ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey[300],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: MediaQuery.of(context).size.height * 0.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   SizedBox(
                child: Container(
                 height: 50,
                 width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[300],
                  boxShadow:  [
                          BoxShadow(
                            color: Colors.grey.shade500,
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 15.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-5,-5),
                            blurRadius: 15,
                          ), //BoxShadow
                        ],
                ),
                 child: Icon(Icons.arrow_back),
                
          ),

              ),
              Container(
                child:Center(child: Text("M F A G R I",style: TextStyle(color: Colors.black),)),
              ),
               SizedBox(
                child: Container(
                 height: 50,
                 width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[300],
                  boxShadow:  [
                          BoxShadow(
                            color: Colors.grey.shade500,
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 15.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-5,-5),
                            blurRadius: 15,
                          ), //BoxShadow
                        ],
                ),
                 child: Icon(Icons.menu),
                
          ),
              ),
                ],
              ),
            ),
          SizedBox(
            child: Container(
              padding: EdgeInsets.all(10),
               height: MediaQuery.of(context).size.height * 0.4,
               width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[300],
                
                image: DecorationImage(image: NetworkImage('data:image/jpeg;base64,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'),
                fit: BoxFit.cover,
                ),
                boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        offset: Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 15.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-5, -5),
                        blurRadius: 15.0,
                      ), //BoxShadow
                    ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                child: Container(
                  height: 40,
                   width: MediaQuery.of(context).size.height * 0.4,
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[300],
                    boxShadow:  [
                          BoxShadow(
                            color: Colors.grey.shade500,
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 15.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-5,-5),
                            blurRadius: 15,
                          ), //BoxShadow
                        ],
                  ),
                  child: Center(child: Text("violet connor price",style: TextStyle(color: Colors.black,fontSize: 24),)),
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
              child: Container(
               height: 40,
               width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[300],
                boxShadow:  [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 15.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-5,-5),
                          blurRadius: 15,
                        ), //BoxShadow
                      ],
              ),
               child: Icon(Icons.favorite,color: Colors.red,),
              
          ),
            ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.height * 0.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("0:00"),
                Icon(Icons.shuffle),
                Icon(Icons.repeat),
                Text("2:04"),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            SizedBox(
              child: Container(
               height: 50,
               width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[300],
                boxShadow:  [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 15.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-5,-5),
                          blurRadius: 15,
                        ), //BoxShadow
                      ],
              ),
               child: Icon(Icons.skip_previous),
              
          ),
            ),
          SizedBox(
            child: Container(
               height: 50,
               width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[300],
                boxShadow:  [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 15.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-5,-5),
                          blurRadius: 15,
                        ), //BoxShadow
                      ],
              ),
              child: Icon(Icons.play_arrow),
            ),
          ),
          SizedBox(
            child: Container(
               height: 50,
               width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[300],
                boxShadow:  [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 15.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-5,-5),
                          blurRadius: 15,
                        ), //BoxShadow
                      ],
              ),
              child: Icon(Icons.skip_next),
            ),
          ),
          ],),
          SizedBox(
            child: Container(
              // margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              height: 50,
               width: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[300],
               boxShadow:  [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 15.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-5,-5),
                          blurRadius: 15,
                        ), //BoxShadow
                      ],
              ),
             child:  Container(
              height: 5,
               child: LinearProgressIndicator(
                color: Colors.purpleAccent,
                backgroundColor: Colors.grey[300],
                value: controller.value,
            ),
             ),
              
            ),
          ),
        ]),
      ),
    );
  }
}
