import 'package:beautysiaa_app/app_colors.dart';
import 'package:flutter/material.dart';

import '../../pages/home_page.dart';
class FaceCare extends StatefulWidget {
  final String categoryName;
  const FaceCare({Key? key, required this.categoryName}) : super(key: key);

  @override
  State<FaceCare> createState() => _FaceCareState();
}

class _FaceCareState extends State<FaceCare> {
  Widget searchBar(){
    return Container(
      //height:size.height*0.06,
      height: 50,

      width:double.infinity,
      decoration: BoxDecoration(
        // color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(width: 2, color: AppColors.mainColor)),
      margin: const EdgeInsets.all(10),
      //width: 200,
      child: Center(
        child: TextField(
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            filled: false,
            //fillColor: AppColors.mainColor,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3),
                borderSide: BorderSide.none),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.black54,
            ),
            hintText: "Search Products",
            hintStyle: const TextStyle(color: Colors.black54),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(icon: const Icon(Icons.arrow_back,color: Colors.white,),onPressed: (){
          Navigator.pop(context);
      },),
        elevation: 0,
        backgroundColor: AppColors.mainColor,
        title: Text(widget.categoryName,style: const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
      ),

     body: SingleChildScrollView(
       child: Column(
         children: [
           searchBar(),
           Container(
             height: 1410,
             margin: const EdgeInsets.all(5),
             //color: Colors.red,
             child: GridView.builder(
                 //physics: const NeverScrollableScrollPhysics(),
                // itemCount: 8,
                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                     crossAxisSpacing: 5,
                     mainAxisSpacing: 10,
                     mainAxisExtent: 350),
                 itemBuilder: (context, index) {
                   return const CardForHome(
                     imgUrl:
                     "https://beautysiaa.com/wp-content/uploads/2023/01/pax-moly-niacinamide-5-hyaluronic-acid-5-ac-serum-300x300.jpg",
                     productName: "Pax Moly Niacinamide 5% Hyaluronic Acid 5% AC Serum 50ml",
                     oldPrice: 1250,
                     currentPrice: 950,
                   );
                 }),
           ),

         ],
       ),
     ),
    );
  }
}
