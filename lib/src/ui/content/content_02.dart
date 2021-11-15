import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machuda_landing_page/src/controller/layout_controller.dart';
import 'package:machuda_landing_page/src/controller/web_scroll_controller.dart';

class Content02 extends GetView<WebScrollController> {
  const Content02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1560),
          child: Obx(() => Column(
                children: [
                  // 디지털 문제풀이
                  Container(
                    height: 750,
                    padding: EdgeInsets.only(
                        left: LayoutController.to.maxWidth.value > 1560
                            ? 80
                            : LayoutController.to.maxWidth.value > 420
                                ? 80 - (1560 - LayoutController.to.maxWidth.value) * 80 / 840
                                : 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AnimatedOpacity(
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.ease,
                          opacity: controller.offset.value > 480 ? 1.0 : 0.0,
                          child: AnimatedPadding(
                            duration: const Duration(milliseconds: 1000),
                            curve: Curves.ease,
                            padding: EdgeInsets.only(left: controller.offset.value > 480 ? 60 : 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '디지털 문제풀이',
                                  style: TextStyle(
                                    color: const Color(0xFFC70D03),
                                    fontSize: LayoutController.to.maxWidth.value > 1080 ? 24 : 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  '흩어져 있던\n시험지를 한 곳에',
                                  style: TextStyle(
                                    color: const Color(0xFF37352F),
                                    fontSize: LayoutController.to.maxWidth.value > 1080 ? 48 : 36,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  '종이시험지 따로, PDF 시험지 따로.'
                                  '\n그동안 공부하기 번거로우셨죠?'
                                  '\n'
                                  '\n이젠 디지털시험지 하나로'
                                  '\n채점, 오답노트, 문제풀기까지 모두 가능해요.',
                                  style: TextStyle(
                                    color: const Color(0xFF37352F),
                                    fontSize: LayoutController.to.maxWidth.value > 1080 ? 18 : 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        AnimatedOpacity(
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.ease,
                          opacity: controller.offset.value > 480 ? 1.0 : 0.0,
                          child: AnimatedPadding(
                            duration: const Duration(milliseconds: 1000),
                            curve: Curves.ease,
                            padding: EdgeInsets.only(right: controller.offset.value > 480 ? 60 : 0),
                            child: Image.asset(
                              'assets/content_02_01.png',
                              width: LayoutController.to.maxWidth.value < 1400
                                  ? LayoutController.to.maxWidth.value - 520
                                  : 880,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // 오답노트
                  Container(
                    height: 850,
                    padding: EdgeInsets.only(
                        right: LayoutController.to.maxWidth.value > 1560
                            ? 80
                            : LayoutController.to.maxWidth.value > 420
                                ? 80 - (1560 - LayoutController.to.maxWidth.value) * 80 / 840
                                : 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AnimatedOpacity(
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.ease,
                          opacity: controller.offset.value > 1230 ? 1.0 : 0.0,
                          child: AnimatedPadding(
                            duration: const Duration(milliseconds: 1000),
                            curve: Curves.ease,
                            padding: EdgeInsets.only(left: controller.offset.value > 1230 ? 60 : 0),
                            child: Image.asset(
                              'assets/content_02_02.png',
                              width: LayoutController.to.maxWidth.value < 1350
                                  ? LayoutController.to.maxWidth.value - 550
                                  : 800,
                            ),
                          ),
                        ),
                        AnimatedOpacity(
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.ease,
                          opacity: controller.offset.value > 1230 ? 1.0 : 0.0,
                          child: AnimatedPadding(
                            duration: const Duration(milliseconds: 1000),
                            curve: Curves.ease,
                            padding:
                                EdgeInsets.only(right: controller.offset.value > 1230 ? 60 : 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '오답노트',
                                  style: TextStyle(
                                    color: const Color(0xFFC70D03),
                                    fontSize: LayoutController.to.maxWidth.value > 1080 ? 24 : 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  '알아서 정리해주는\n나만의 오답노트',
                                  style: TextStyle(
                                    color: const Color(0xFF37352F),
                                    fontSize: LayoutController.to.maxWidth.value > 1080 ? 48 : 36,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  '디지털시험지에서 틀린 문제,'
                                  '\n맞추다가 자동으로 한눈에 보기 쉽게 정리해줘요.'
                                  '\n'
                                  '\n일일이 베껴 쓰는 필기시간을 줄여주니까'
                                  '\n오로지 오답공부에만 집중할 수 있어요.',
                                  style: TextStyle(
                                    color: const Color(0xFF37352F),
                                    fontSize: LayoutController.to.maxWidth.value > 1080 ? 18 : 16,
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
              )),
        ),
      ),
    );
  }
}
