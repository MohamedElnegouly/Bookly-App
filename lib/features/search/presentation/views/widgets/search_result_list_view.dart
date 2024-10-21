import 'package:flutter/material.dart';

import '../../../../home/presentation/view/widgets/best_seller_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // take all the height of the children and view them one time
        //shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            //child: BestSellerListViewItem(),
            child: Text('data'),
          );
        });
  }
}
