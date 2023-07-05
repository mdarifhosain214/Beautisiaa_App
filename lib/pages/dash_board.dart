import 'package:beautysiaa_app/app_colors.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color(0xff808080).withOpacity(0.2),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            decoration:  BoxDecoration(
              color: const Color(0xFFFFFACD),
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: 200,
            width: double.infinity,
            child: const Column(
              children: [
                SizedBox(height: 10,),
                CircleAvatar(radius: 60,
                  backgroundColor: Colors.lightBlue,),
                Text("Beautysiaa",style: TextStyle(fontSize: 24,fontFamily: "Montserrat",fontWeight: FontWeight.w700,letterSpacing: 1.5),)
              ],
            ),

          ),
          Container(
            height: 80,
          width: MediaQuery.of(context).size.width*0.9,
          decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(50)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width*0.2,
                decoration: BoxDecoration(
                  color: const Color(0xff808080).withOpacity(0.5),
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30))
                ),
                child: const Center(child: Text("Cart",style: TextStyle(fontSize: 24,color: AppColors.mainColor,fontWeight: FontWeight.w600,letterSpacing: 1.5),)),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width*0.25,
                color: AppColors.mainColor,
                child: const Center(child: Text("Orders",style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: 1.5),)),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width*0.2,
                decoration: BoxDecoration(
                  color: const Color(0xff808080).withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),bottomRight: Radius.circular(30))
                ),
                child: const Center(child: Text("Cart",style: TextStyle(fontSize: 24,color: AppColors.mainColor,fontWeight: FontWeight.w600,letterSpacing: 1.5),)),
              ),
            ],),
          ),
          const SizedBox(height: 50,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Expanded(
                child: SizedBox( width: 100,
                    child: Divider(color: Colors.grey,thickness: 2,)),
              ),
              Text(" Accounts Info ",style: TextStyle(fontSize: 20,color: AppColors.mainColor,fontWeight: FontWeight.bold,letterSpacing: 1.5),),
                Expanded(
                  child: SizedBox( width: 100,
                      child: Divider(color: Colors.grey,thickness: 2,)),
                ),
            ],),
          )
          
        ],
      ),
    ));
  }
}
