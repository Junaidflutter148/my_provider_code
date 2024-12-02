import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_managment/Provider/list_provider.dart';
//Using Provider

class SecondProvider extends StatefulWidget {

  const SecondProvider({super.key,});

  @override
  State<SecondProvider> createState() => _SecondProviderState();
}

class _SecondProviderState extends State<SecondProvider> {
  @override
  Widget build(BuildContext context) {
    return  Consumer<NumberListProvider>(
      builder:(context,numberProviderModel,child)=> Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){
          numberProviderModel.add();

        },child: Icon(Icons.add)),
        appBar: AppBar(title: Text("data"),),
        body: Container(
          child: Column(
            children: [
              Text(numberProviderModel.numbers.last.toString(),style: TextStyle(fontSize: 30),),

              Expanded(
                child: ListView.builder(
                    itemCount: numberProviderModel.numbers.length,
                    itemBuilder: (context, index){
                      return Text(numberProviderModel.numbers[index].toString(),style: TextStyle(fontSize: 30),);
                    }

                ),
              )
            ],
          ),

        ),
      ),
    );
  }
}
