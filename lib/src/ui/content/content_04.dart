import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machuda_landing_page/src/controller/layout_controller.dart';
import 'package:machuda_landing_page/src/controller/web_scroll_controller.dart';

class Content04 extends GetView<WebScrollController> {
  const Content04({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 120),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1560),
          child: Obx(() => Padding(
                padding: EdgeInsets.only(
                    left: LayoutController.to.maxWidth.value > 1560
                        ? 80
                        : LayoutController.to.maxWidth.value > 420
                            ? 80 - (1560 - LayoutController.to.maxWidth.value) * 80 / 840
                            : 0),
                child: SizedBox(
                  height: 960,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 760,
                        top: 0,
                        bottom: 0,
                        child: Container(
                          width: 960,
                          height: 960,
                          decoration: const BoxDecoration(
                            color: Color(0xFFEF0D00),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.ease,
                        left: controller.offset.value > 4000 ? 540 : 600,
                        top: 0,
                        bottom: 0,
                        child: Image.asset(
                          'assets/content_04.webp',
                          width: 840,
                          height: 480,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // ?????? ??????
                            AnimatedOpacity(
                              duration: const Duration(milliseconds: 1000),
                              curve: Curves.ease,
                              opacity: controller.offset.value > 3600 ? 1.0 : 0.0,
                              child: AnimatedPadding(
                                duration: const Duration(milliseconds: 1000),
                                curve: Curves.ease,
                                padding:
                                    EdgeInsets.only(left: controller.offset.value > 3600 ? 60 : 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '?????? ??????',
                                          style: TextStyle(
                                            color: const Color(0xFFC70D03),
                                            fontSize:
                                                LayoutController.to.maxWidth.value > 1080 ? 24 : 18,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Container(
                                          width: 97,
                                          height: 21,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFEF0C00),
                                            borderRadius: BorderRadius.circular(11),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'Coming soon',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Text(
                                      '????????? ??? ??????\n?????? ????????? PICK!',
                                      style: TextStyle(
                                        color: const Color(0xFF37352F),
                                        fontSize:
                                            LayoutController.to.maxWidth.value > 1080 ? 48 : 36,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Text(
                                      '?????? ????????? ??????, ????????? ??????????????? ???????????????!'
                                      '\n???????????? ????????? ????????? ???????????? ??? ????????? ????????? ????????? ????????? ????????? ????????????.'
                                      '\n?????? ????????? ????????? ???????????? ????????? ??? ????????? ??????????????????.',
                                      style: TextStyle(
                                        color: const Color(0xFF37352F),
                                        fontSize:
                                            LayoutController.to.maxWidth.value > 1080 ? 18 : 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // ???????????????
                            AnimatedOpacity(
                              duration: const Duration(milliseconds: 1000),
                              curve: Curves.ease,
                              opacity: controller.offset.value > 4250 ? 1.0 : 0.0,
                              child: AnimatedPadding(
                                duration: const Duration(milliseconds: 1000),
                                curve: Curves.ease,
                                padding:
                                    EdgeInsets.only(left: controller.offset.value > 4250 ? 60 : 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '?????? ????????????',
                                          style: TextStyle(
                                            color: const Color(0xFFC70D03),
                                            fontSize:
                                                LayoutController.to.maxWidth.value > 1080 ? 24 : 18,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Container(
                                          width: 97,
                                          height: 21,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFEF0C00),
                                            borderRadius: BorderRadius.circular(11),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'Coming soon',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Text(
                                      '????????? ?????? ????????????\n??????????????? ?????? ??????',
                                      style: TextStyle(
                                        color: const Color(0xFF37352F),
                                        fontSize:
                                            LayoutController.to.maxWidth.value > 1080 ? 48 : 36,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Text(
                                      '365??? ?????? ?????? ????????? ????????????.'
                                      '\n????????? ????????? ????????? ??????????????? ??????????????? ????????? ????????? ??? ????????? ????????? ?????????.',
                                      style: TextStyle(
                                        color: const Color(0xFF37352F),
                                        fontSize:
                                            LayoutController.to.maxWidth.value > 1080 ? 18 : 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
