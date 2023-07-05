import 'package:beautysiaa_app/app_colors.dart';
import 'package:beautysiaa_app/utilities/big_text.dart';
import 'package:flutter/material.dart';

import '../utilities/checkout_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 24,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Row(
          children: [
            SizedBox(
              width: 120,
            ),
            Text(
              "Cart",
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF691883),
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.messenger_outline,
            color: Color(0xFF691883),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15),
            child: RichText(
                text: const TextSpan(
                    text: "Cart",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black),
                    children: [
                  TextSpan(
                      text: " 3 items",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.normal))
                ])),
          ),
          Container(
            height: 400,
            child: ListView.builder(
              itemCount: 3,
                itemBuilder: (_, index) {
              return Container(
                margin: const EdgeInsets.only(left: 15,right: 15),

                height: 90,
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      //image
                      //=====================================
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blueGrey,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.SR6Slu5uhkSAwvxal0KCyAHaFW&pid=Api&P=0&h=180")
                          )
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 90,

                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Super pure",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,),),
                            Text("Niacimade",style:TextStyle(fontSize: 14,color:Colors.grey,),),
                            Text("\$12",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: AppColors.mainColor),),
                          ],
                        ),
                      )
                    ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Icon(Icons.delete_forever_outlined,size: 30,color: Color(0xFF691883),),
                        Row(
                          children: [Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(width: 1,color:const Color(0xFF691883),)
                            ),
                            child:const Center(
                              child: Icon(Icons.remove,color: Color(0xFF691883)),
                            ) ,),
                            Container(
                                padding: const EdgeInsets.all(10),
                                child: const Text("2",style: TextStyle(color: AppColors.mainColor,fontWeight: FontWeight.w600,fontSize: 16),)),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color:const Color(0xFF691883),
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child:const Center(
                                child: Icon(Icons.add,color: Colors.white,),
                              ) ,),],),
                      ],
                    ),
                  ],
                ),
              );
            }),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xFF691883)),
            child: Column(
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15, top: 15, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText(
                            text: "Subtotal ( " + "3" + ")",
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          BigText(
                            text: "Total discount items ",
                            color: Colors.white,
                            size: 14,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          BigText(
                            text: "Price",
                            color: Colors.white,
                            size: 18,
                          ),
                          SizedBox(
                            height: 45,
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: Container()),
                    const Padding(
                      padding: EdgeInsets.only(
                          left: 15, top: 15, bottom: 20, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText(
                            text: "\$ 36",
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          BigText(
                            text: "-\$6",
                            color: Colors.white,
                            size: 14,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          BigText(
                            text: "\$30",
                            color: Colors.white,
                            size: 18,
                          ),
                          SizedBox(
                            height: 45,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //Place order button
                ///=====================================
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckoutPage()));
                  },
                  child: Container(
                    //height: h * 0.07,
                    height: 55,
                    margin:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0)),
                    child: const Center(
                      child: Text(
                        "Place Order",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF691883),
                            letterSpacing: 2),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
