import 'package:beautysiaa_app/category_pages/sub_category_of_skin_care/body_care.dart';
import 'package:beautysiaa_app/category_pages/sub_category_of_skin_care/eye_care.dart';
import 'package:beautysiaa_app/category_pages/sub_category_of_skin_care/face_care.dart';
import 'package:beautysiaa_app/category_pages/sub_category_of_skin_care/skin_concern.dart';
import 'package:beautysiaa_app/category_pages/sub_category_of_skin_care/skincare_ingredients.dart';
import 'package:beautysiaa_app/utilities/data.dart';
import 'package:flutter/material.dart';

class SkinCategory extends StatelessWidget {
  const SkinCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.68,
      child: GridView.builder(
        itemCount: skinCare.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount
          (crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          mainAxisExtent: 175
        ),
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                if (index == 0) {
                  return const FaceCare(categoryName: "Face Care",);
                }
                else if (index == 1) {
                  return const EyeCare(categoryName:"Eye Care");
                }
                    else if (index == 2) {
                  return const BodyCare(categoryName: "Body Care");
                } else if (index == 3) {
                  return const SkinCareIngredients(categoryName: "Skin Care Ingredients");
                } else {
                  return const SkinConcern(categoryName: "Skin Concern",);
                }
              },),);

            },
            child: Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
               //border: Border.all(width: 1, color: Colors.grey),

              ),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.network("https://beautysiaa.com/wp-content/uploads/2022/12/face-care-300x300.webp",
                    height: 140,width:140,fit:BoxFit.cover,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10,top: 10),
                    child: Text(
                      skinCare[index],
                      style:
                      const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Montserrat",
                          letterSpacing: 1),maxLines: 2,overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
