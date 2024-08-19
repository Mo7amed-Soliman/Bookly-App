import 'package:bookly_app/core/functions/launch_url.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.03,
      ),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              text: 'Free €',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                //? go to preview
                String? url = bookModel.volumeInfo!.previewLink;

                await customLaunchUrl(context, url);
              },
              text: getText(),
              backgroundColor: const Color(0xffEF8262),
              fontSize: 16,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getText() {
    if (bookModel.volumeInfo?.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }
}
