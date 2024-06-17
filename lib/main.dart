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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var num1 = TextEditingController();
  var num2 = TextEditingController();
  int sum =0;

  void onAdd(){
    setState(() {
      sum = int.parse(num1.text) + int.parse(num2.text);
    });
  }

  void onSub(){
    setState(() {
      sum = int.parse(num1.text) - int.parse(num2.text);
    });
  }

  void onMulti(){
    setState(() {
      sum = int.parse(num1.text) * int.parse(num2.text);
    });
  }

  void onDiv(){
    setState(() {
      sum = int.parse(num1.text) ~/ int.parse(num2.text);
    });
  }

  void onClear(){
    setState(() {
      sum =0;
      num1.text = "0";
      num2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Output : $sum",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold,fontSize: 20.0),),
              SizedBox(height: 11,),
              TextField(
                controller: num1,
                keyboardType: TextInputType.number,
                decoration:InputDecoration(
                  hintText: "Enter number 1",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                  )
                ),
              ),
              SizedBox(height: 11,),
              TextField(
                controller: num2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter number 2",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11)
                  )
                ),
                
              ),
              SizedBox(height: 11,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    onAdd();
                  }, style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11)
                      )
                  ), child: Text("+",style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ElevatedButton(onPressed: (){
                    onSub();
                  }, style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11)
                      )
                  ), child: Text("-",style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ElevatedButton(onPressed: (){
                      onMulti();
                  }, style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11)
                      )
                  ), child: Text("*",style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ElevatedButton(onPressed: (){
                    onDiv();
                  }, style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11)
                      )
                  ), child: Text("/",style: TextStyle(color: Colors.white,fontSize: 20),)),
                ],
              ),
              SizedBox(height: 11,),
              Center(
                child:  ElevatedButton(onPressed: (){
                      onClear();
                }, style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11)
                    )
                ), child: Text("AC",style: TextStyle(color: Colors.white,fontSize: 20),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
