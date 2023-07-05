import 'package:beautysiaa_app/utilities/big_text.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';
import 'home_page.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({Key? key}) : super(key: key);

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            //================banner========================
            Container(
              margin: const EdgeInsets.all(8.0),
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.red,
                borderRadius: BorderRadius.circular(8.0)
              ),
              

            ),
            const SizedBox(height: 8,),

            //==================Hot deals
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
              margin: const EdgeInsets.all(8),
              //color: Colors.grey,
              height: MediaQuery.of(context).size.width,
              width: double.infinity,
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      // color: Colors.brown,
                        borderRadius: BorderRadius.circular(8),
                        border:
                        Border.all(width: 2, color: Colors.grey.shade600)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      // color: Colors.brown,
                        borderRadius: BorderRadius.circular(8),
                        border:
                        Border.all(width: 2, color: Colors.grey.shade600)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      // color: Colors.brown,
                        borderRadius: BorderRadius.circular(8),
                        border:
                        Border.all(width: 2, color: Colors.grey.shade600)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      // color: Colors.brown,
                        borderRadius: BorderRadius.circular(8),
                        border:
                        Border.all(width: 2, color: Colors.grey.shade600)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8,),

            //=================Flash sale====================
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
                              (index) => const CardForHome(
                            imgUrl:
                            "https://beautysiaa.com/wp-content/uploads/2023/01/pax-moly-niacinamide-5-hyaluronic-acid-5-ac-serum-300x300.jpg",
                            productName: "Pax Moly Niacinamide 5% Hyaluronic Acid 5% AC Serum 50ml",
                            oldPrice: 1250,
                            currentPrice: 950,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8,),
            //==================Discount Offer================
            Container(
              height: 420,
              margin: const EdgeInsets.only(left: 8, top: 8),
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              decoration: const BoxDecoration(
                  color: Color(0xffffe6e6),
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
                        const Text("Discount Offer", style: style,
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
                              (index) => const CardForHome(
                            imgUrl:
                            "https://beautysiaa.com/wp-content/uploads/2023/01/pax-moly-niacinamide-5-hyaluronic-acid-5-ac-serum-300x300.jpg",
                            productName: "Pax Moly Niacinamide 5% Hyaluronic Acid 5% AC Serum 50ml",
                            oldPrice: 1250,
                            currentPrice: 950,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8,),
            //======================Buy one get one===========
            Container(
              height: 420,
              margin: const EdgeInsets.only(left: 8, top: 8),
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              decoration: const BoxDecoration(
                  color: Color(0xffF0FFFF),
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
                        const Text("Buy One Get One", style: style,
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
                              (index) => const CardForHome(
                            imgUrl:
                            "https://beautysiaa.com/wp-content/uploads/2023/01/pax-moly-niacinamide-5-hyaluronic-acid-5-ac-serum-300x300.jpg",
                            productName: "Pax Moly Niacinamide 5% Hyaluronic Acid 5% AC Serum 50ml",
                            oldPrice: 1250,
                            currentPrice: 950,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8,),
            //======================Combo Offer================
            Container(
              height: 420,
              margin: const EdgeInsets.only(left: 8, top: 8),
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              decoration: const BoxDecoration(
                  color: Color(0xffffe6e6),
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
                        const Text("Combo Offer", style: style,
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
                              (index) => const CardForHome(
                            imgUrl:
                            "https://beautysiaa.com/wp-content/uploads/2023/01/pax-moly-niacinamide-5-hyaluronic-acid-5-ac-serum-300x300.jpg",
                            productName: "Pax Moly Niacinamide 5% Hyaluronic Acid 5% AC Serum 50ml",
                            oldPrice: 1250,
                            currentPrice: 950,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
