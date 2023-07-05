import 'package:flutter/material.dart';
import '../pages/offer_page.dart';
class OfferCategory extends StatelessWidget {
  const OfferCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const SafeArea(child: OfferPage(),
    );
  }
}


