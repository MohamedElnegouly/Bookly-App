import 'package:bookly_app/core/widgets/Custom_error_Widget.dart';
import 'package:bookly_app/core/widgets/Custom_loading_indecator.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'featured_list_view_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            //to be resposive
            //the height of the item / the screen
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: CustomBookImage(
                      imageUrl:
                          'https://www.google.com/imgres?q=photo%20no%20photo%20pic&imgurl=https%3A%2F%2Ft3.ftcdn.net%2Fjpg%2F04%2F62%2F93%2F66%2F360_F_462936689_BpEEcxfgMuYPfTaIAOC1tCDurmsno7Sp.jpg&imgrefurl=https%3A%2F%2Fstock.adobe.com%2Fimages%2Fno-image-available-picture-coming-soon-missing-photo-image-sign-illustration-vector%2F462936689&docid=gqeJkfz-Tja4_M&tbnid=UL28KUUJ9gNenM&vet=12ahUKEwic9M2W-52JAxWicKQEHexHH2AQM3oECGQQAA..i&w=360&h=360&hcb=2&ved=2ahUKEwic9M2W-52JAxWicKQEHexHH2AQM3oECGQQAA',
                    ),
                  );
                }),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
