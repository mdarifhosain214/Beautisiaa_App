import 'package:beautysiaa_app/category_pages/main_page_sub_category/category_of_brands.dart';
import 'package:beautysiaa_app/category_pages/main_page_sub_category/category_of_makeup.dart';
import 'package:beautysiaa_app/category_pages/main_page_sub_category/category_of_mom_and_baby.dart';
import 'package:beautysiaa_app/utilities/data.dart';
import 'package:flutter/material.dart';
import '../app_colors.dart';
import '../category_pages/main_page_sub_category/category_of_hair.dart';
import '../category_pages/main_page_sub_category/category_of_men.dart';
import '../category_pages/main_page_sub_category/category_of_skin_care.dart';
import '../utilities/app_banner_view.dart';
import '../utilities/big_text.dart';
import '../utilities/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget searchBar() {
    return Container(
      //height:size.height*0.06,
      height: 50,

      width: double.infinity - 50,
      decoration: BoxDecoration(
          // color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(width: 2, color: AppColors.mainColor)),
      margin: const EdgeInsets.all(15),
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
    // var size = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text("Beautysiaa"),
              accountEmail: Text("beautysiaa@gmail.com"),
              decoration: BoxDecoration(color: AppColors.mainColor),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "B",
                    style: TextStyle(color: AppColors.mainColor, fontSize: 30),
                  )),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("My Account"),
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text("Category"),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart_outlined),
              title: Text("Cart"),
            ),
            ListTile(
              leading: Icon(Icons.local_offer_outlined),
              title: Text("Offer"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Person"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.abc_outlined),
              title: Text("About"),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.mainColor,
        // leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        title: const Text(
          "BEAUATYSIAA",
          style: TextStyle(fontSize: 24, letterSpacing: 2),
        ),

        actions: const [
          Icon(
            Icons.notifications_active_outlined,
            size: 30,
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //=============================search bar=======================================
            searchBar(),
            // ============================app banner=======================================
            const AppBannerView(),
            const SizedBox(
              height: 10,
            ),
            //==============================Hot deals=======================================
            Container(
              margin: const EdgeInsets.only(left: 10, right: 15),
              child:  Row(
                children: [
                  Expanded(child: Container()),
                   Text("Hot Deals".toUpperCase(),
                    style: style,),
                  Expanded(child: Container()),
                ],
              ),
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.only(left: 5, right: 10),
              child: Row(
                  children: List.generate(4, (index) {
                return Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        //color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 2,
                          color: const Color(0xFFEBF0FF),
                        )),
                    height: 100,
                    width: 100,
                  ),
                );
              })),
            ),

            //===============================Category ======================================
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: Container()),
                  Text(
                    "Categories".toUpperCase(),
                      style: style,
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                margin: const EdgeInsets.only(
                    left: 10, right: 10, bottom: 5, top: 5),
                // color: Colors.grey.shade100,
                height: 250,
                width: double.infinity,
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: mainCategory.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            mainAxisExtent: 120),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          if(index==0){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const CategoryOfSkinCare(mainCategoryName: "Skin Care",)));
                          }
                          else if(index==1){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const CategoryOfMakeup(mainCategoryName:"Makeup")));
                          }
                          else if(index==2){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const CategoryOfHair(mainCategoryName:"Hair")));
                          }
                          else if(index==3){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const CategoryOfMen(mainCategoryName:"Men")));
                          }
                          else if(index==4){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const CategoryOfMomAndBaby(mainCategoryName:"Mom and Baby")));
                          }
                          else if(index==6){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const CategoryOfBrands(mainCategoryName:"Brands")));
                          }
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              //padding: const EdgeInsets.all(5.0),
                              //margin: const EdgeInsets.all(2.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(55),
                                  border:
                                      Border.all(color: Colors.black, width: 1)),

                              child: const Center(
                                  child: Icon(
                                Icons.add_a_photo,
                                size: 40,
                              )),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              mainCategory[index],
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600, letterSpacing: 1),
                            )
                          ],
                        ),
                      );
                    })
                // GridView.count(
                //   crossAxisCount: 4,
                //     crossAxisSpacing: 10,
                //     mainAxisSpacing: 10,
                //   children: List.generate(mainCategory.length, (index) {
                //     return Column(
                //       children: [
                //         Container(
                //           height: 90,
                //           width: 90,
                //           //padding: const EdgeInsets.all(5.0),
                //           //margin: const EdgeInsets.all(2.0),
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(55),
                //               border: Border.all(color: Colors.black,width: 1)
                //           ),
                //
                //           child:Center(child: Icon(Icons.add_a_photo,size: 40,)) ,
                //         ),
                //         Text("makeup")
                //       ],
                //     );
                //   })
                // //   [
                // //   Container(
                // //   height: 100,
                // //   width: 100,
                // //   //padding: const EdgeInsets.all(5.0),
                // //   margin: const EdgeInsets.all(2.0),
                // //   decoration: BoxDecoration(
                // //       borderRadius: BorderRadius.circular(8.0),
                // //       border: Border.all(color: Colors.grey.shade900,width: 1)
                // //   ),
                // //
                // //   child:Column(
                // //     children: [
                // //       Image.network("https://tse4.mm.bing.net/th?id=OIP.99Em7gmkDCqyqmTAwWEw0wHaGl&pid=Api&P=0&h=180",
                // //         fit: BoxFit.cover,
                // //         width: double.infinity,
                // //         height: 70,
                // //       ),
                // //      const Text("Makeup")
                // //
                // //     ],
                // //   ) ,
                // // ),
                // //     Expanded(
                // //       child: Container(
                // //         margin: const EdgeInsets.all(5),
                // //         decoration: BoxDecoration(
                // //           //color: Colors.greenAccent,
                // //             borderRadius: BorderRadius.circular(8),
                // //             border: Border.all(width: 3,color: Colors.black,)
                // //         ),
                // //         height: 100,
                // //         width: 100,
                // //          child:Stack(
                // //       children: [
                // //       Positioned(
                // //         top: 0,
                // //         left: 0,
                // //         right: 0,
                // //         child: Image.network("https://tse4.mm.bing.net/th?id=OIP.99Em7gmkDCqyqmTAwWEw0wHaGl&pid=Api&P=0&h=180",
                // //           fit: BoxFit.cover,
                // //           width: 80,
                // //           height: 70,
                // //         ),
                // //       ),
                // //        const Positioned(
                // //         left: 20,
                // //           right: 0,
                // //           bottom: 2,
                // //           child: Text("Makeup",style: TextStyle(fontWeight: FontWeight.w400),))
                // //
                // //       ],
                // //     ),
                // //       ),
                // //     ),
                // //   Container(
                // //   height: 100,
                // //   width: 100,
                // //   //padding: const EdgeInsets.all(5.0),
                // //   margin: const EdgeInsets.all(2.0),
                // //   decoration: BoxDecoration(
                // //       borderRadius: BorderRadius.circular(5.0),
                // //       border: Border.all(color: AppColors.mainColor,width: 4)
                // //   ),
                // //
                // //   child:Column(
                // //     children: [
                // //       Image.network("https://tse4.mm.bing.net/th?id=OIP.99Em7gmkDCqyqmTAwWEw0wHaGl&pid=Api&P=0&h=180",
                // //         fit: BoxFit.cover,
                // //         width: 80,
                // //         height: 70,
                // //       ),
                // //      const Text("Makeup")
                // //
                // //     ],
                // //   ) ,
                // // ),
                // //   Container(
                // //   height: 110,
                // //   width: 100,
                // //   //padding: const EdgeInsets.all(5.0),
                // //   margin: const EdgeInsets.all(2.0),
                // //   decoration: BoxDecoration(
                // //       borderRadius: BorderRadius.circular(8.0),
                // //       border: Border.all(color: Colors.grey.shade900,width: 2.5)
                // //   ),
                // //
                // //   child:Column(
                // //     children: [
                // //       Image.network("https://tse4.mm.bing.net/th?id=OIP.99Em7gmkDCqyqmTAwWEw0wHaGl&pid=Api&P=0&h=180",
                // //         fit: BoxFit.cover,
                // //         width: double.infinity,
                // //         height: 70,
                // //       ),
                // //      const Text("Makeup")
                // //
                // //     ],
                // //   ) ,
                // // ),
                // //   Container(
                // //   height: 110,
                // //   width: 100,
                // //   //padding: const EdgeInsets.all(5.0),
                // //   margin: const EdgeInsets.all(2.0),
                // //   decoration: BoxDecoration(
                // //       borderRadius: BorderRadius.circular(5.0),
                // //       border: Border.all(color: Colors.purple,width: 2.5)
                // //   ),
                // //
                // //   child:Column(
                // //     children: [
                // //       Image.network("https://tse4.mm.bing.net/th?id=OIP.99Em7gmkDCqyqmTAwWEw0wHaGl&pid=Api&P=0&h=180",
                // //         fit: BoxFit.cover,
                // //         width: double.infinity,
                // //         height: 70,
                // //       ),
                // //      const Text("Makeup")
                // //
                // //     ],
                // //   ) ,
                // // ),
                // //     Container(
                // //       height: 110,
                // //       width: 100,
                // //       //padding: const EdgeInsets.all(5.0),
                // //       margin: const EdgeInsets.all(2.0),
                // //       decoration: BoxDecoration(
                // //           borderRadius: BorderRadius.circular(50.0),
                // //           border: Border.all(color: Colors.grey.shade900,width: 3)
                // //       ),
                // //
                // //       child:Column(
                // //         children: [
                // //           SizedBox(height: 8,),
                // //           ClipRRect(
                // //             borderRadius: BorderRadius.circular(50),
                // //             child: Image.network("https://tse4.mm.bing.net/th?id=OIP.99Em7gmkDCqyqmTAwWEw0wHaGl&pid=Api&P=0&h=180",
                // //               fit: BoxFit.cover,
                // //               width: double.infinity,
                // //               height: 60,
                // //             ),
                // //           ),
                // //           const Text("Makeup")
                // //
                // //         ],
                // //       ) ,
                // //     ),
                // //     Container(
                // //       height: 110,
                // //       width: 100,
                // //       //padding: const EdgeInsets.all(5.0),
                // //       margin: const EdgeInsets.all(2.0),
                // //       decoration: BoxDecoration(
                // //           borderRadius: BorderRadius.circular(8.0),
                // //           border: Border.all(color: Colors.grey.shade900,width: 1)
                // //       ),
                // //
                // //       child:Column(
                // //         children: [
                // //           Image.network("https://tse4.mm.bing.net/th?id=OIP.99Em7gmkDCqyqmTAwWEw0wHaGl&pid=Api&P=0&h=180",
                // //             fit: BoxFit.cover,
                // //             width: double.infinity,
                // //             height: 70,
                // //           ),
                // //           const Text("Makeup")
                // //
                // //         ],
                // //       ) ,
                // //     ),
                // //     Container(
                // //       height: 110,
                // //       width: 100,
                // //       //padding: const EdgeInsets.all(5.0),
                // //       margin: const EdgeInsets.all(2.0),
                // //       decoration: BoxDecoration(
                // //           borderRadius: BorderRadius.circular(8.0),
                // //           border: Border.all(color: Colors.grey.shade900,width: 1)
                // //       ),
                // //
                // //       child:Column(
                // //         children: [
                // //           Image.network("https://tse4.mm.bing.net/th?id=OIP.99Em7gmkDCqyqmTAwWEw0wHaGl&pid=Api&P=0&h=180",
                // //             fit: BoxFit.cover,
                // //             width: double.infinity,
                // //             height: 70,
                // //           ),
                // //           const Text("Makeup")
                // //
                // //         ],
                // //       ) ,
                // //     ),
                // //   ],
                // ),

                ),

            //===============================flash sale========================================
            Container(
              height: 420,
              margin: const EdgeInsets.only(left: 8, top: 8),
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              decoration: const BoxDecoration(
                  color: Color(0xfff9f9f9),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 7, right: 15, top: 15, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Flash sale", style: style,
                        ),
                        GestureDetector(
                            onTap: () {
                              //print("Tapped");
                            },
                            child: const BigText(
                              text: "See More",
                              color: AppColors.mainColor,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 350,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                          5,
                              (index) => Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: const CardForHome(
                            imgUrl:
                            "https://beautysiaa.com/wp-content/uploads/2023/01/pax-moly-niacinamide-5-hyaluronic-acid-5-ac-serum-300x300.jpg",
                            productName: "Pax Moly Niacinamide 5% Hyaluronic Acid 5% AC Serum 50ml",
                            oldPrice: 1250,
                            currentPrice: 950,
                          ),
                              )),
                    ),
                  ),
                ],
              ),
            ),


            //===============================super offer=====================================
            Container(
              margin: const EdgeInsets.only(
                  left: 10, right: 15, bottom: 10, top: 10),
              child: Row(
                children: [
                  Expanded(child: Container()),
                  Text(
                    "Super offer".toUpperCase(),
                    style: style,
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              height: 420,
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    );
                  }),
            ),

            //============================== Mega Sale========================================
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Mega Sale",style: style,),
                  GestureDetector(
                      onTap: () {
                        //print("Tapped");
                      },
                      child: const BigText(
                        text: "See More",
                        color: AppColors.mainColor,
                      )),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 5),
              height: 350,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                    5,
                    (index) => Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: const CardForHome(
                            imgUrl:
                                "https://beautysiaa.com/wp-content/uploads/2023/01/pax-moly-niacinamide-5-hyaluronic-acid-5-ac-serum-300x300.jpg",
                            productName: "Pax Moly Niacinamide 5% Hyaluronic Acid 5% AC Serum 50ml",
                            oldPrice: 1250,
                            currentPrice: 950,
                          ),
                    )),
              ),
            ),
            //==============================best sale========================================

            Container(
              height: 420,
              margin: const EdgeInsets.only(left: 8, top: 8),
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              decoration: const BoxDecoration(
                  color: Color(0xfff9f9f9),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 7, right: 15, top: 15, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Best sale", style: style,
                        ),
                        GestureDetector(
                            onTap: () {
                              //print("Tapped");
                            },
                            child: const BigText(
                              text: "See More",
                              color: AppColors.mainColor,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 350,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                          5,
                              (index) => Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: const CardForHome(
                              imgUrl:
                              "https://beautysiaa.com/wp-content/uploads/2023/01/pax-moly-niacinamide-5-hyaluronic-acid-5-ac-serum-300x300.jpg",
                              productName: "Pax Moly Niacinamide 5% Hyaluronic Acid 5% AC Serum 50ml",
                              oldPrice: 1250,
                              currentPrice: 950,
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            //=============================recommended product banner=========================
            Container(
              height: 210,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(8)),
            ),
            //============================shop by concern===================================
            Container  (
              margin: const EdgeInsets.only(
                  left: 10, right: 15, bottom: 10, top: 10),
              child: Row(
                children: [
                  Expanded(child: Container()),
                  Text(
                    "Shop By concern".toUpperCase(),
                    style: style,
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              height: 800,
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    );
                  }),
            ),

            //=============================recommended products==============================
            Container(
              height: 1410,
              margin: const EdgeInsets.all(5),
              //color: Colors.red,
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 8,
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
class CardDemo extends StatefulWidget {
  const CardDemo({Key? key}) : super(key: key);

  @override
  State<CardDemo> createState() => _CardDemoState();
}
class _CardDemoState extends State<CardDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.only(left: 8,right: 8),
      height: 340,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          //color: Colors.deepOrange,
          borderRadius: BorderRadius.circular(8),
         border: Border.all(width: 1, color: const Color(0xFFD9D9D9),),
        boxShadow: const[
          BoxShadow(color: Color(0xffe8e8e8),
              blurRadius: 5,
          offset: Offset(0,5),),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-5,0),),
          BoxShadow(
            color: Colors.white,
            offset: Offset(5,0),),
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 180,
            width: 180,
            margin: const EdgeInsets.all(5),
           // padding: EdgeInsets.all(10),
            decoration: const BoxDecoration(
               // border: Border.all(color: Colors.grey,width: 1),
            image: DecorationImage(fit: BoxFit.cover,
              image: NetworkImage("https://beautysiaa.com/wp-content/uploads/2023/01/pax-moly-niacinamide-5-hyaluronic-acid-5-ac-serum-300x300.jpg",)

            ),
            ),

          ),
          Container(
            height: 150,
            padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
            // decoration: BoxDecoration(
            //   border: Border.all(color: Colors.red,width: 1)
            // ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Pax Moly Niacinamide 5% Hyaluronic Acid 5% AC Serum 50ml",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Montserrat",
                        letterSpacing: 1),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Wrap(
                    children: List.generate(5, (index) {
                      return Icon(
                        Icons.star,
                        color: Colors.yellow.shade600,
                        size: 24,
                      );
                    }),
                  ),
                  const Text(
                    "\$8998",
                    style: TextStyle(
                        fontSize: 14, decoration: TextDecoration.lineThrough),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "\$8998",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Montserrat",
                            color: AppColors.mainColor,
                            letterSpacing: 1
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        // padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: const Color(0xFF691883),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Center(
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
class RecommendedProduct extends StatelessWidget {
  const RecommendedProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List<ProductData>item=[
    //   ProductData(
    //       img: "https://punicamakeup.com/wp-content/uploads/2017/02/Tata-Harper-Cosmetics.jpg",
    //       name: "Product Name",
    //       //oldPrice: 234, currentPrice: 220
    //       )
    // ];
    return GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            mainAxisExtent: 310),
        itemBuilder: (BuildContext context, int index) {
          return const ProductCard(
            img: "",
            name: "product name", oldPrice: 00, currentPrice: 00,
            //oldPrice: item[index].oldPrice,
            //currentPrice: item[index].currentPrice,
          );
        });
  }
}

class CardForHome extends StatelessWidget {
  final String imgUrl;
  final String productName;
  final double oldPrice;
  final double currentPrice;

  const CardForHome(
      {Key? key,
      required this.imgUrl,
      required this.productName,
      required this.oldPrice,
      required this.currentPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          //color: Colors.deepOrange,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: const Color(0xFFD9D9D9),),
          // boxShadow: const[
          //   BoxShadow(color: Color(0xffe8e8e8),
          //     blurRadius: 5,
          //     offset: Offset(0,5),),
          //   BoxShadow(
          //     color: Colors.white,
          //     offset: Offset(-5,0),),
          //   BoxShadow(
          //     color: Colors.white,
          //     offset: Offset(5,0),),
          // ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 180,
            width: 180,
            margin: const EdgeInsets.all(5),
            // padding: EdgeInsets.all(10),
            decoration:  BoxDecoration(
              // border: Border.all(color: Colors.grey,width: 1),
              image: DecorationImage(fit: BoxFit.cover,
                  image: NetworkImage(imgUrl)

              ),
            ),

          ),
          Container(
            height: 150,
            padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
            // decoration: BoxDecoration(
            //   border: Border.all(color: Colors.red,width: 1)
            // ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    productName,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Montserrat",
                        letterSpacing: 1),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Wrap(
                    children: List.generate(5, (index) {
                      return Icon(
                        Icons.star,
                        color: Colors.yellow.shade600,
                        size: 24,
                      );
                    }),
                  ),
                   Text(
                    "\$$oldPrice",
                    style: const TextStyle(
                        fontSize: 14, decoration: TextDecoration.lineThrough),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(
                        "\$$currentPrice",
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Montserrat",
                            color: AppColors.mainColor,
                            letterSpacing: 1
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        // padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: const Color(0xFF691883),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Center(
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imgUrl;
  final String title;

  const Category({Key? key, required this.imgUrl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.grey.shade900, width: 1)),
      child: Column(
        children: [
          Image.network(
            imgUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 70,
          ),
        ],
      ),
    );
  }

}
const style =TextStyle(fontSize:20,fontFamily: "Montserrat",fontWeight: FontWeight.w700,letterSpacing: 1.5 );
// ListTile(
// title: ClipRRect(
// // borderRadius: BorderRadius.circular(8.0),
// child: Image.network(
// imgUrl,
// fit: BoxFit.cover,
// width: double.infinity,
// height: 70,
// ),
// ),
// subtitle:
// Container(alignment: Alignment.topCenter, child: Text(title)),
// )
