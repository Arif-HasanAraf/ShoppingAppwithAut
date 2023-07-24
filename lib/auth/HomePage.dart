import 'package:flutter/material.dart';

import 'app_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      AppIcon(icon: Icons.menu),
                      SizedBox(width: 15,),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/icons/search.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  AppIcon(icon: Icons.shopping_cart)
                ],
              ),
              SizedBox(height: 7,),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white54
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        AppIcon(icon: Icons.search_sharp),
                        SizedBox(width: 5,),
                        Text("Search on demo"),
                      ],
                    ),
                    Row(
                      children: [
                        AppIcon(icon: Icons.keyboard_voice_outlined),
                        SizedBox(width: 5,),
                        AppIcon(icon: Icons.camera_alt_outlined),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black)
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 7,),
                            Icon(Icons.sell_outlined),
                            SizedBox(width: 7,),
                            Text("Selling")
                          ],
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black)
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 7,),
                            Icon(Icons.flash_on_rounded),
                            SizedBox(width: 7,),
                            Text("Deals")
                          ],
                        ),


                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black)
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 7,),
                            Icon(Icons.category_outlined),
                            SizedBox(width: 7,),
                            Text("List")
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black)
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 7,),
                            Icon(Icons.save_rounded,),
                            SizedBox(width: 7,),
                            Text("Selling")
                          ],
                        ),


                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Container(
                height: 150,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                ),
                child: Container(
                  padding:EdgeInsets.only(left: 10),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5,),
                      Text("What's Tranding on It?", style: TextStyle(fontSize: 20), ),
                      SizedBox(height: 10,),
                      Text("Save on deals really want "),
                      SizedBox(height: 30,),
                      ElevatedButton(onPressed: (){

                      }, child: Text("Buy now",),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Daily deals", style: TextStyle(fontSize: 20),),
                  Text("see all", style: TextStyle(fontSize: 15, ), ),
                ],
              ),
              SizedBox(height: 15,),
              Container(
                height: 200,
                child: PageView.builder(
                    itemCount: 5,
                    itemBuilder: (context, position){
                  return _buildPageItem(position);
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPageItem(int position) {
    return Container(
      height: 200,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.lightBlueAccent,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/icons/img.png")
        )
      ),
    );
  }
}
