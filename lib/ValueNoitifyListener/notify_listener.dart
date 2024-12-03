import 'package:flutter/material.dart';

//make stateless class to perform like stateful.

class NotifyListenerScreen extends StatelessWidget {
   NotifyListenerScreen({super.key});

  ValueNotifier<int>_counter=ValueNotifier<int>(0);
  ValueNotifier<bool>toggle=ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("data"),),
      body: Container(
        child: Column(
          children: [
                Text("Notifire"),
            ValueListenableBuilder(
                valueListenable: toggle,
                builder: (context,value,child){
                  return TextFormField(
                    obscureText: toggle.value,
                    decoration: InputDecoration(
                      hintText: "password",
                      suffix: InkWell(
                          onTap: (){
                            toggle.value=!toggle.value;
                          },
                          child: Icon(toggle.value?Icons.visibility_off_outlined: Icons.visibility)),
                    ),
                  );

                }),
            ValueListenableBuilder(
                valueListenable: _counter,
                builder: (context,value,child){
                  return   Text(_counter.value.toString());

                })

          ],
          
        ),
        
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        _counter.value++;
        print(_counter.value.toString());

      },child: Icon(Icons.add),),
    );
  }
}
