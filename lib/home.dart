import 'package:flutter/material.dart';
import 'package:provider_state_managment/second.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<int> numbers=[1,2,3,4,5,6,];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(onPressed: (){
        int last=numbers.last;
        setState(() {
          numbers.add(last+1);
        });
      },child: Icon(Icons.add)),
      appBar: AppBar(title: Text("data"),),
      body: Container(
        child: Column(
          children: [
            Text(numbers.last.toString(),style: TextStyle(fontSize: 30),),

            Expanded(
              child: ListView.builder(
                  itemCount: numbers.length,
                  itemBuilder: (context, index){
                return Text(numbers[index].toString(),style: TextStyle(fontSize: 30),);
              }

              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Second(numbers: numbers)));
            }, child:Text("Next Screen"))
          ],
        ),

      ),
    );
  }
}
