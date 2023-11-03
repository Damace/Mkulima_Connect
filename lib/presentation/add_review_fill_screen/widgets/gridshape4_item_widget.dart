import '../controller/add_review_fill_controller.dart';
import '../models/gridshape4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Gridshape4ItemWidget extends StatelessWidget {
  Gridshape4ItemWidget(this.gridshape4ItemModelObj);

  Gridshape4ItemModel gridshape4ItemModelObj;

  var controller = Get.find<AddReviewFillController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        161,
      ),
      width: getHorizontalSize(
        159,
      ),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgShape161x1594,
            height: getVerticalSize(
              161,
            ),
            width: getHorizontalSize(
              159,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                25,
              ),
            ),
            alignment: Alignment.center,
          ),
          CustomIconButton(
            height: 30,
            width: 30,
            variant: IconButtonVariant.FillRedA200,
            shape: IconButtonShape.RoundedBorder17,
            padding: IconButtonPadding.PaddingAll9,
            alignment: Alignment.topRight,
            child: CustomImageView(
              svgPath: ImageConstant.imgClose12x12,
            ),
          ),
        ],
      ),
    );
  }
}
