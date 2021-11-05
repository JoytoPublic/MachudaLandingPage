import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          child: Padding(
            padding: const EdgeInsets.only(left: 80),
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
                  Obx(() => AnimatedPositioned(
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.ease,
                        left: controller.offset.value > 4000 ? 540 : 600,
                        top: 0,
                        bottom: 0,
                        child: Image.asset(
                          'assets/content_04.png',
                          width: 840,
                          height: 480,
                        ),
                      )),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Obx(() => Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // 문제 추천
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
                                        const Text(
                                          '문제 추천',
                                          style: TextStyle(
                                            color: Color(0xFFC70D03),
                                            fontSize: 24,
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
                                    const Text(
                                      '나에게 딱 맞는\n취약 문제를 PICK!',
                                      style: TextStyle(
                                        color: Color(0xFF37352F),
                                        fontSize: 48,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    const Text(
                                      '어제 틀렸던 문제, 제대로 이해했는지 확인해야죠!'
                                      '\n당신에게 부족한 파트를 바로잡을 수 있도록 취약한 유형의 맞춤형 문제를 제공해요.'
                                      '\n이제 개념을 충분히 이해하고 완전히 내 것으로 만들어보세요.',
                                      style: TextStyle(
                                        color: Color(0xFF37352F),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // 플래시카드
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
                                        const Text(
                                          '시간 활용하기',
                                          style: TextStyle(
                                            color: Color(0xFFC70D03),
                                            fontSize: 24,
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
                                    const Text(
                                      '자투리 시간 챙겨주는\n플래시카드 암기 학습',
                                      style: TextStyle(
                                        color: Color(0xFF37352F),
                                        fontSize: 48,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    const Text(
                                      '365일 내내 해도 부족한 공부시간.'
                                      '\n자투리 시간을 활용한 플래시카드 학습법으로 꾸준히 공부할 수 있도록 도와줄 거예요.',
                                      style: TextStyle(
                                        color: Color(0xFF37352F),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
