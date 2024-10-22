import 'package:bookly_app/core/widgets/Custom_Botton.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
              child: CustomBotton(
            text: 'Free',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(14),
              topLeft: Radius.circular(14),
            ),
          )),
          Expanded(
              child: CustomBotton(
            onpressed: () async {
              Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri);
              }
            },
            fontsize: 16,
            text: 'preview',
            backgroundColor: const Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(14),
              topRight: Radius.circular(14),
            ),
          )),
        ],
      ),
    );
  }
}
