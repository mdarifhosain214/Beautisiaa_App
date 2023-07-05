import 'package:beautysiaa_app/category_pages/sub_category_of_skin_care/face_care.dart';
import 'package:beautysiaa_app/utilities/data.dart';
import 'package:flutter/material.dart';

class MakeupCategory extends StatelessWidget {
  const MakeupCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // const Padding(padding: EdgeInsets.all(30),
          // child: Text("Skin Care Products",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          // ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.68,
            child: GridView.builder(
              itemCount: makeup.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
                //mainAxisExtent: 180,
              ),
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () {
                   // Navigator.push(context, MaterialPageRoute(builder: (context) => const FaceCare()));
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => ProductDetails(
                    //               img: items[index].img,
                    //               name: items[index].name,
                    //               oldPrice: items[index].oldPrice,
                    //               currentPrice: items[index].currentPrice,
                    //             )));
                  },
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 1.5, color: Colors.grey.shade100),
                        ),
                        child: Column(
                          children: [
                            Image.network(
                              "https://beautysiaa.com/wp-content/uploads/2022/12/face-care-300x300.webp",
                              height: 125,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              makeup[index],
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
