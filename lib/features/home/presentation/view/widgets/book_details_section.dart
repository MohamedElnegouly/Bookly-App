import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'books_action.dart';
import 'featured_list_view_item.dart';
import 'rating_seller.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .19),
          child: const CustomBookImage(
            imageUrl:
                'https://www.google.com/imgres?q=photo%20no%20photo%20pic&imgurl=https%3A%2F%2Ft3.ftcdn.net%2Fjpg%2F04%2F62%2F93%2F66%2F360_F_462936689_BpEEcxfgMuYPfTaIAOC1tCDurmsno7Sp.jpg&imgrefurl=https%3A%2F%2Fstock.adobe.com%2Fimages%2Fno-image-available-picture-coming-soon-missing-photo-image-sign-illustration-vector%2F462936689&docid=gqeJkfz-Tja4_M&tbnid=UL28KUUJ9gNenM&vet=12ahUKEwic9M2W-52JAxWicKQEHexHH2AQM3oECGQQAA..i&w=360&h=360&hcb=2&ved=2ahUKEwic9M2W-52JAxWicKQEHexHH2AQM3oECGQQAA',
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        const Text('The Jungle Book', style: Styles.textStyle30),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text('Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              )),
        ),
        const SizedBox(
          height: 3,
        ),
        const RatingSeller(
          language: 'unknown',
          count: 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
