import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/features/library/controller/library_pod.dart';
import 'package:college_buddy_admin/shared/riverpod_ext/asynvalue_easy_when.dart';
import 'package:college_buddy_admin/shared/widget/cache_image_network_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class PopularBooksList extends StatelessWidget {
  const PopularBooksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final imageList = [
      'https://m.media-amazon.com/images/I/51HTcBz4oUL._AC_UF1000,1000_QL80_DpWeblab_.jpg',
      'https://m.media-amazon.com/images/I/81QuEGw8VPL._AC_UF1000,1000_QL80_DpWeblab_.jpg',
      'https://images.cdn.kukufm.com/f:webp/https://s3.ap-south-1.amazonaws.com/kukufm/channel_icons/72ef2d4f999c44729a55ab46fba425d2.png',
      'https://m.media-amazon.com/images/I/61ZYxrQEpCL._AC_UF1000,1000_QL80_.jpg',
      'https://st.adda247.com/https://www.careerpower.in/blog/wp-content/uploads/sites/2/2023/07/21160517/Computer-Network.png',
      'https://rukminim2.flixcart.com/image/850/1000/k70spzk0/book/2/7/0/operating-system-concepts-international-student-version-original-imafpchnqbhpcuhg.jpeg?q=20&crop=false',
      'https://m.media-amazon.com/images/I/81lVfGtNwnL._AC_UF1000,1000_QL80_DpWeblab_.jpg',
      'https://m.media-amazon.com/images/I/81MhbO9IMDS._AC_UF1000,1000_QL80_DpWeblab_.jpg',
    ];
    return Consumer(
      builder: (context, ref, child) {
        final libraryAsync = ref.watch(libraryProvider);
        return libraryAsync.easyWhen(
          data: (libraryModel) {
            final libraryList = libraryModel.data;
            return Expanded(
              child: ListView.builder(
                  itemCount: libraryList!.length,
                  primary: false,
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final libraryData = libraryList[index];
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: AppColors.green100.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: AppColors.green100, width: 1),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.grey100.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: CacheNetworkImageWidget(
                                imageUrl: imageList[index],
                                fit: BoxFit.cover,
                              ),
                            ).h(180).w(180),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              AppSmallText(
                                text: libraryData.bookName ?? 'Book Name: ',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.left,
                              ),
                              AppSmallText(
                                text: libraryData.author ?? 'Author Name: ',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                              ),
                              AppSmallText(
                                text: libraryData.edition ?? 'Edition: ',
                                overflow: TextOverflow.clip,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                textAlign: TextAlign.left,
                              ),
                              AppSmallText(
                                text: libraryData.publication ?? 'Global ratings: ',
                                overflow: TextOverflow.clip,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ],
                      ).p12(),
                    ).w(220);
                  }).p12(),
            );
          },
          loadingWidget: () => const CircularProgressIndicator().centered(),
        );
      },
    );
  }
}
