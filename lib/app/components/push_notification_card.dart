import 'package:flutter/material.dart';
import 'package:fsauce_vendor_app/app/constants/string_constant.dart';
import 'package:fsauce_vendor_app/app/modules/pushNotification/controllers/push_notification_controller.dart';
import 'package:fsauce_vendor_app/app/services/colors.dart';
import 'package:fsauce_vendor_app/app/services/responsive_size.dart';
import 'package:fsauce_vendor_app/app/services/text_style_util.dart';
import 'package:get/get.dart';

class PushNotificationCard extends StatelessWidget {
  const PushNotificationCard({super.key, required this.isActivate});
  final bool isActivate;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 142.kh,
      width: 100.w,
      margin: EdgeInsets.only(bottom: 10.kh),
      padding: const EdgeInsets.only(left: 12, right: 6, top: 16, bottom: 16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "Don’t miss the offer. Get 15 days free trial now. Valid till 15th Feb.",
                  style: TextStyleUtil.manrope14w500(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.kh),
                child: PopupMenuButton<int>(
                  color: Colors.white,
                  onSelected: (item) => handleClick(item),
                  itemBuilder: (context) => [
                    PopupMenuItem<int>(
                        onTap: isActivate
                            ? Get.find<PushNotificationController>()
                                .showInactiveDialog
                            : Get.find<PushNotificationController>()
                                .showActiveDialog,
                        value: 1,
                        child: Text(
                          isActivate
                              ? StringConstant.inactivateNotification
                              : StringConstant.activateNotification,
                          style: TextStyleUtil.manrope14w400(),
                        )),
                    PopupMenuItem<int>(
                        onTap: Get.find<PushNotificationController>()
                            .showDeleteDialog,
                        value: 1,
                        child: Text(
                          StringConstant.deleteNotification,
                          style: TextStyleUtil.manrope14w400(
                            color: context.primary01,
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
          Text(
            "Feb 27, 2022, 23:57",
            style: TextStyleUtil.manrope14w400(
              color: context.black03,
            ),
          ),
          Spacer(),
          Container(
            height: 26,
            width: 80.kw,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                    color: isActivate ? context.green : context.primary02)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 7,
                  width: 7,
                  decoration: BoxDecoration(
                      color: isActivate ? context.green : context.primary01,
                      shape: BoxShape.circle),
                ),
                5.kwidthBox,
                Text(
                  isActivate ? StringConstant.active : StringConstant.inactive,
                  style: TextStyleUtil.manrope12w500(
                      color: isActivate ? context.green : context.primary01),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  handleClick(int item) {}
}
