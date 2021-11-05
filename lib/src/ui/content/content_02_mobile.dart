import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machuda_landing_page/src/controller/web_scroll_controller.dart';

class Content02Mobile extends GetView<WebScrollController> {
  const Content02Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        children: [
          // 디지털 문제풀이
          Obx(() => Column(
                children: [
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.ease,
                    opacity: controller.offset.value > 200 ? 1.0 : 0.0,
                    child: AnimatedPadding(
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.ease,
                      padding: EdgeInsets.only(right: controller.offset.value > 200 ? 0 : 60),
                      child: Column(
                        children: const [
                          Text(
                            '디지털 문제풀이',
                            style: TextStyle(
                              color: Color(0xFFC70D03),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            '흩어져 있던\n시험지를 한 곳에',
                            style: TextStyle(
                              color: Color(0xFF37352F),
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            '종이시험지 따로, PDF 시험지 따로.'
                            '\n그동안 공부하기 번거로우셨죠?'
                            '\n이젠 디지털시험지 하나로'
                            '\n채점, 오답노트, 문제풀기까지 모두 가능해요.',
                            style: TextStyle(
                              color: Color(0xFF37352F),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.ease,
                    opacity: controller.offset.value > 440 ? 1.0 : 0.0,
                    child: AnimatedPadding(
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.ease,
                      padding: EdgeInsets.only(left: controller.offset.value > 440 ? 0 : 60),
                      child: Image.asset(
                        'assets/content_02_01.png',
                        width: 300,
                      ),
                    ),
                  ),
                ],
              )),
          const SizedBox(
            height: 64,
          ),
          // 오답노트
          Obx(() => Column(
                children: [
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.ease,
                    opacity: controller.offset.value > 840 ? 1.0 : 0.0,
                    child: AnimatedPadding(
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.ease,
                      padding: EdgeInsets.only(right: controller.offset.value > 840 ? 0 : 60),
                      child: Column(
                        children: const [
                          Text(
                            '오답노트',
                            style: TextStyle(
                              color: Color(0xFFC70D03),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            '알아서 정리해주는\n나만의 오답노트',
                            style: TextStyle(
                              color: Color(0xFF37352F),
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            '디지털시험지에서 틀린 문제,'
                            '\n맞추다가 자동으로 한눈에 보기 쉽게 정리해줘요.'
                            '\n일일이 베껴 쓰는 필기시간을 줄여주니까'
                            '\n오로지 오답공부에만 집중할 수 있어요.',
                            style: TextStyle(
                              color: Color(0xFF37352F),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.ease,
                    opacity: controller.offset.value > 1080 ? 1.0 : 0.0,
                    child: AnimatedPadding(
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.ease,
                      padding: EdgeInsets.only(left: controller.offset.value > 1080 ? 0 : 60),
                      child: Image.asset(
                        'assets/content_02_02.png',
                        width: 300,
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
