import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'books_action.dart';
import 'featured_list_view_item.dart';
import 'rating_seller.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
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
          child: CustomBookImage(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        Text(
          book.volumeInfo.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(book.volumeInfo.authors?[0] ?? 'UnKnown',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              )),
        ),
        const SizedBox(
          height: 3,
        ),
        RatingSeller(
          language: book.volumeInfo.language ?? '',
          count: book.volumeInfo.pageCount ?? 000,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
       BooksAction(bookModel: book,),
      ],
    );
  }
}
