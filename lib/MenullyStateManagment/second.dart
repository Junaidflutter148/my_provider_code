import 'package:flutter/material.dart';
//manually setState
class Second extends StatefulWidget {
   final List<int> numbers;
   Second({super.key, required this.numbers});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        int last=widget.numbers.last;
        setState(() {
          widget.numbers.add(last+1);
        });
      },child: Icon(Icons.add)),
      appBar: AppBar(title: Text("data"),),
      body: Container(
        child: Column(
          children: [
            Text(widget.numbers.last.toString(),style: TextStyle(fontSize: 30),),

            Expanded(
              child: ListView.builder(
                  itemCount: widget.numbers.length,
                  itemBuilder: (context, index){
                    return Text(widget.numbers[index].toString(),style: TextStyle(fontSize: 30),);
                  }

              ),
            )
          ],
        ),

      ),
    );
  }
}
