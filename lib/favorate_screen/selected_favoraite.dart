import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_managment/favorate_screen/favorite_provider.dart';

class SelectedFavoraite extends StatefulWidget {
  const SelectedFavoraite({super.key});

  @override
  State<SelectedFavoraite> createState() => _SelectedFavoraiteState();
}

class _SelectedFavoraiteState extends State<SelectedFavoraite> {
  @override
  Widget build(BuildContext context) {

    print("item");
    return Consumer<FavoriteProvider>(
      builder: (context,favoriteProvider,child)=>
          Scaffold(
            appBar: AppBar(title: Text("data"),
              actions: [
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectedFavoraite()));
                    },
                    child: Icon(Icons.favorite)),
                SizedBox(width: 25,)
              ],
            ),

            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: favoriteProvider.selectedItem.length,
                      itemBuilder: (context, index){
                        return ListTile(
                          onTap: (){

                            if(favoriteProvider.selectedItem.contains(index)){
                              favoriteProvider.removeItem(index);
                            }else{
                              favoriteProvider.addItem(index);
                            }


                          },
                          title: Text("Items"+index.toString()),
                          trailing: Icon(favoriteProvider.selectedItem.contains(index)? Icons.favorite: Icons.favorite_border_outlined),
                        );
                      }
                  ),
                )
              ],
            ),
          ),
    );
  }
}
