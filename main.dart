import 'package:flutter/material.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var Num1 = TextEditingController();
  var Num2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text("Calculator",style: TextStyle(fontSize: 20,color: Colors.black87),),
          backgroundColor: Colors.orange,

        ),

        body:Column(
          children: [
            Container(
              child: TextField(controller: Num1,decoration: InputDecoration(hintText: "Enter num1:- ",prefixIcon: Icon(Icons.numbers),),
              ),
            ),

            Container(
              child: TextField(controller: Num2,decoration: InputDecoration(hintText: "Enter num2:- ",prefixIcon: Icon(Icons.numbers),),
              ),
            ),
            Container(
              child: ElevatedButton.icon(onPressed: (){
                int n1 = int.parse(Num1.text);
                int n2 = int.parse(Num2.text);
                // var n3=n1+n2;
                print(n1+n2);
              }, icon: Icon(Icons.add),label: Text("Add"),),

            )
          ],
        ),

      ),
    );
  }
}
