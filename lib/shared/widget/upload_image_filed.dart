import 'dart:io';

import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/shared/widget/buttons/app_secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:image_picker/image_picker.dart';
import 'package:velocity_x/velocity_x.dart';

class UploadImageField extends StatefulWidget {
  final String name;
  final double height;
  final Color containerColor;
  final Color dottedColor;
  final double strokeWidth;
  final double gapSize;
  final String? imageUrl;
  final String? imageText;
  final bool isCompress;
  final int quality;
  final int minHeight;
  final int minWidth;
  const UploadImageField({
    super.key,
    required this.name,
    required this.height,
    this.containerColor = Colors.transparent,
    this.dottedColor = AppColors.kChipBgColor,
    this.strokeWidth = 3.0,
    this.gapSize = 5.0,
    this.imageUrl,
    this.imageText,
    this.isCompress = false,
    this.quality = 90,
    this.minHeight = 500,
    this.minWidth = 500,
  });

  @override
  State<UploadImageField> createState() => _UploadImageFieldState();
}

class _UploadImageFieldState extends State<UploadImageField> {
  Future pickImage(
      {required ImageSource source,
      required FormFieldState<File> field,
      required BuildContext mcontext}) async {
    final picImage = await ImagePicker().pickImage(source: source);

    if (picImage != null) {
      File? image = File(picImage.path);
      field.didChange(image);
    } else {
      if (mcontext.mounted) {
        mcontext.showToast(msg: 'No image selected, Please select.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return FormBuilderField<File>(
          name: widget.name,
          validator: FormBuilderValidators.required(),
          builder: (field) {
            // SchedulerBinding.instance.addPostFrameCallback((timeStamp) async {
            //   if (widget.imageUrl != null) {
            //     // final imageFile = await ref.watch(urlToFileProvider(widget.imageUrl!).future);
            //     field.didChange('imageFile');
            //   }
            // });
            return Column(
              children: [
                CustomPaint(
                  painter: _DottedOutlinePainter(
                    color: widget.dottedColor,
                    strokeWidth: widget.strokeWidth,
                    gapSize: widget.gapSize,
                  ),
                  child: GestureDetector(
                    onTap: () async {
                      pickImage(source: ImageSource.gallery, field: field, mcontext: context);
                    },
                    child: Container(
                      height: widget.height,
                      decoration: BoxDecoration(
                        color: widget.containerColor,
                      ),
                      child: Center(
                        child: ImageDisplayWidget(
                          image: field.value,
                          onChangeImage: () async {
                            pickImage(source: ImageSource.gallery, field: field, mcontext: context);
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class _DottedOutlinePainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double gapSize;

  _DottedOutlinePainter({
    required this.color,
    required this.strokeWidth,
    required this.gapSize,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    const dashWidth = 4;
    final dashSpace = gapSize;

    double startX = 0.0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }

    double startY = 0.0;
    while (startY < size.height) {
      canvas.drawLine(
        Offset(0, startY),
        Offset(0, startY + dashWidth),
        paint,
      );
      startY += dashWidth + dashSpace;
    }

    double endX = size.width;
    while (endX > 0) {
      canvas.drawLine(
        Offset(endX, size.height),
        Offset(endX - dashWidth, size.height),
        paint,
      );
      endX -= dashWidth + dashSpace;
    }

    double endY = size.height;
    while (endY > 0) {
      canvas.drawLine(
        Offset(size.width, endY),
        Offset(size.width, endY - dashWidth),
        paint,
      );
      endY -= dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(_DottedOutlinePainter oldDelegate) {
    return color != oldDelegate.color ||
        strokeWidth != oldDelegate.strokeWidth ||
        gapSize != oldDelegate.gapSize;
  }
}

//TODO image loading in state
class ImageDisplayWidget extends StatelessWidget {
  final File? image; // Selected local image file
  final VoidCallback onChangeImage;
  const ImageDisplayWidget({super.key, this.image, required this.onChangeImage});

  @override
  Widget build(BuildContext context) {
    if (image != null) {
      // Display the selected local image
      return Padding(
        padding: AppPadding.kHalfPad,
        child: Column(
          children: [
            Image.network(image?.path ?? '').h(200),
            AppSecondaryButton(
              labelText: 'Change Image',
              onPressed: onChangeImage,
            ).pSymmetric(h: 32, v: 12),
          ],
        ),
      );
    } else {
      // Display a placeholder if no image is available
      return const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.file_upload_outlined,
            size: 35,
            color: AppColors.kChipBgColor,
          ),
          AppSmallText(
            text: 'Upload Image',
            color: AppColors.kChipBgColor,
          )
        ],
      );
    }
  }
}
