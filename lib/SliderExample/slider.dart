import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_managment/SliderExample/slider_provider.dart';


class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
 // double value=0.5;
  @override
  Widget build(BuildContext context) {
    print("is there print ");
  //  final provider=Provider.of<SliderProvider>(context,listen: false);
    return Consumer<SliderProvider>(
      builder: (context,provider,child)=>
       Scaffold(
        appBar: AppBar(title: Text("data"),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
                max: 1,
                min: 0,
                value: provider.value, onChanged: (val){

                  provider.setValue(val);

            }),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(provider.value)
                    ),
                    child: Center(
                      child: Text("Contaner1"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(provider.value)
                    ),
                    child: Center(
                      child: Text("Contaner1"),
                    ),
                  ),
                ),
              ],
            )
          ],
        )


      ),
    );
  }
}
