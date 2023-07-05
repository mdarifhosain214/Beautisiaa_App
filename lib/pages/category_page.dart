import 'package:flutter/material.dart';
import '../app_colors.dart';
import '../category_pages/brands.dart';
import '../category_pages/hair_category.dart';
import '../category_pages/makeup_category.dart';
import '../category_pages/men_category.dart';
import '../category_pages/mom_and_baby_category.dart';
import '../category_pages/offer_category.dart';
import '../category_pages/skin_category.dart';
List<ItemsData>items=[
  ItemsData(label: "Skin Care"),
  ItemsData(label: "Makeup"),
  ItemsData(label: "Hair"),
  ItemsData(label: "Men"),
  ItemsData(label: "Mom & Baby"),
  ItemsData(label: "Offers"),
  ItemsData(label: "Brands"),
];
class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final PageController _pageController =PageController();
  @override
  void initState() {
    for(var element in items){
      element.isSelected=false;
    }
    setState((){
      items[0].isSelected=true;
    });
    super.initState();
  }
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
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text("Beautysiaa"),
              accountEmail: Text("beautysiaa@gmail.com"),decoration: BoxDecoration(
                color: AppColors.mainColor
            ),
              currentAccountPicture: CircleAvatar(backgroundColor: Colors.white,
                  child: Text("B",style: TextStyle(color: AppColors.mainColor,fontSize: 30),)),
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
            Icons.notification_important_sharp,
            size: 30,
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //==================search bar============================
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: searchBar (),
          ),
          //================left side navigation main category=====
          Positioned(
            top:size.height*0.09,
              left: 0,
              bottom: 0,
              child: sideNavigator(size)),
          //=================right side sub category===============
          Positioned(
              top:size.height*0.09,
              bottom: 0,
              right: 0,
              child: categoryView(size),),
        ],
      ),
    );
  }
  Widget sideNavigator(Size size) {
    return Container(
      margin: const EdgeInsets.only(left: 5,right: 5),
     // color: const Color(0xffC6C3C3),
      height: size.height * 0.8,
      width: size.width * 0.22,
      child: ListView.builder(
        itemCount: items.length,
          itemBuilder: (context, index) {
        return  GestureDetector(
          onTap: (){
            _pageController.animateToPage(index, duration: const Duration(milliseconds: 100), curve: Curves.bounceInOut);
          },
          child: SizedBox(
            height:size.width * 0.22,
            width: size.width * 0.22,
            child:
            Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: items[index].isSelected==true?const Color(0xff4e118c ):Colors.black54,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.add_a_photo_outlined,size: 30,color: Colors.white,),
                  Text(items[index].label,style: const TextStyle(color: Colors.white),),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget categoryView(Size size) {
    return Container(
      //color: Colors.blue,
      margin: const EdgeInsets.only(right: 8, top: 5,),
      height: size.height * 0.8,
      width: size.width * 0.72,
      child:PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        onPageChanged: (value){
          for(var element in items){
            element.isSelected=false;
          }
          setState((){
            items[value].isSelected=true;
          });

        },
        children: const [
          SkinCategory(),
           MakeupCategory(),
          HairCategory(),
          MenCategory(),
          MomAndBabyCategory(),
          OfferCategory(),
          BrandsCategory(),
        ],
      )
    );
  }

}
class ItemsData{
  String label;
  bool isSelected;
  ItemsData({ this.isSelected=false,required this.label});
}