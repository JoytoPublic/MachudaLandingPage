import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machuda_landing_page/src/controller/layout_controller.dart';
import 'package:machuda_landing_page/src/controller/web_scroll_controller.dart';

class Content03 extends GetView<WebScrollController> {
  const Content03({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 1080,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0.5),
                  end: Alignment(0.5, 1),
                  colors: [Color(0xFFFFC9C6), Color(0xFFFFFFFF)],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1560),
              child: Obx(() => Column(
                    children: [
                      AnimatedOpacity(
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.ease,
                        opacity: controller.offset.value > 2080 ? 1.0 : 0.0,
                        child: AnimatedPadding(
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.ease,
                          padding: EdgeInsets.only(top: controller.offset.value > 2080 ? 60 : 0),
                          child: Column(
                            children: [
                              Text(
                                '아날로그 학습 방법은 그만,'
                                '\n새롭게 진화한 스마트 밀착공부, 맞추다니까 가능해요!',
                                style: TextStyle(
                                  color: const Color(0xFF37352F),
                                  fontSize: LayoutController.to.maxWidth.value > 1080 ? 48 : 32,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Text(
                                '학습결과 데이터로 분석한 맞추다만의 1:1 맞춤학습시스템이 당신의 성적을 저절로 오를 수 있도록 도와줄 거예요.',
                                style: TextStyle(
                                  color: const Color(0xFF37352F),
                                  fontSize: LayoutController.to.maxWidth.value > 1080 ? 18 : 15,
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
                        opacity: controller.offset.value > 2180 ? 1.0 : 0.0,
                        child: AnimatedPadding(
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.ease,
                          padding: EdgeInsets.only(top: controller.offset.value > 2180 ? 80 : 140),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 168),
                            child: Image.asset(
                              'assets/content_03_01.webp',
                              height: 480,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      // 취약점 분석
                      Container(
                        height: 726,
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
                              opacity: controller.offset.value > 3000 ? 1.0 : 0.0,
                              child: AnimatedPadding(
                                duration: const Duration(milliseconds: 1000),
                                curve: Curves.ease,
                                padding:
                                    EdgeInsets.only(left: controller.offset.value > 3000 ? 60 : 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '내 실력 진단하기',
                                      style: TextStyle(
                                        color: const Color(0xFFC70D03),
                                        fontSize:
                                            LayoutController.to.maxWidth.value > 1080 ? 24 : 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Text(
                                      '부족한 부분을 콕!'
                                      '\n집어주는 학습 패턴 리포트',
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
                                      '현재 내 실력을 실시간으로 진단하고'
                                      '\n과목별 단원, 문제 유형, 취약한 분야까지 다양한 각도로 분석해줘요.',
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
                            AnimatedOpacity(
                              duration: const Duration(milliseconds: 1000),
                              curve: Curves.ease,
                              opacity: controller.offset.value > 3000 ? 1.0 : 0.0,
                              child: AnimatedPadding(
                                duration: const Duration(milliseconds: 1000),
                                curve: Curves.ease,
                                padding:
                                    EdgeInsets.only(right: controller.offset.value > 3000 ? 60 : 0),
                                child: Image.asset(
                                  'assets/content_03_02.webp',
                                  width: LayoutController.to.maxWidth.value > 1480
                                      ? 760
                                      : LayoutController.to.maxWidth.value > 1080
                                          ? LayoutController.to.maxWidth.value - 720
                                          : LayoutController.to.maxWidth.value - 600,
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
        ],
      ),
    );
  }
}
