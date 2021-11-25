import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machuda_landing_page/src/controller/layout_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class Content01 extends GetView<LayoutController> {
  const Content01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 840,
      color: Colors.white,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 840,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.5, -3),
                  end: Alignment(0.5, 1),
                  colors: [Color(0xFFFFAAA5), Color(0xFFFFFFFF)],
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 360, bottom: 120),
              child: Image.asset(
                'assets/circle.webp',
                height: 500,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 840,
              child: Column(
                children: [
                  const SizedBox(
                    height: 196,
                  ),
                  Obx(() => Text(
                        'AI 맞춤공부로'
                        '\n어떤 문제든 똑소리 나게 \'맞추다\'',
                        style: TextStyle(
                          color: const Color(0xFF37352F),
                          fontSize: LayoutController.to.maxWidth.value > 1080 ? 48 : 36,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      )),
                  const SizedBox(
                    height: 72,
                  ),
                  Obx(() => Text(
                        '공부 인생이 바뀌는 터닝포인트!'
                        '\n1:1 학습케어앱 맞추다를 만나보세요.'
                        '\n성적 상승을 위해 내게 꼭 맞는 공부를 초밀착가이드 해줄 거예요.',
                        style: TextStyle(
                          color: const Color(0xFF37352F),
                          fontSize: LayoutController.to.maxWidth.value > 1080 ? 18 : 16,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      )),
                  const SizedBox(
                    height: 84,
                  ),
                  Obx(() => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // 아이패드 다운로드
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: LayoutController.to.maxWidth.value > 1080 ? 280 : 224,
                                height: LayoutController.to.maxWidth.value > 1080 ? 80 : 68,
                                child: ElevatedButton(
                                  onPressed: () async {
                                    var _url = 'https://apps.apple.com/kr/app/%EB%A7%9E%EC%B6%94%EB%8B%A4-machuda-for-%EC%A0%84%EA%B8%B0%EA%B8%B0%EC%82%AC/id1590305807';

                                    await canLaunch(_url)
                                        ? await launch(_url)
                                        : throw 'Could not launch $_url';
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: const Color(0xFFC70D03),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/apple.png',
                                        height: LayoutController.to.maxWidth.value > 1080 ? 44 : 32,
                                      ),
                                      const SizedBox(
                                        width: 18,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Available on the iPad',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: LayoutController.to.maxWidth.value > 1080
                                                  ? 16
                                                  : 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            'Apple store',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: LayoutController.to.maxWidth.value > 1080
                                                  ? 24
                                                  : 21,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: LayoutController.to.maxWidth.value > 1080 ? 12 : 4,
                              ),
                              Text(
                                'iOS 13.0 이상 지원',
                                style: TextStyle(
                                  color: const Color(0xFF707070),
                                  fontSize: LayoutController.to.maxWidth.value > 1080 ? 15 : 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          // 아이폰 다운로드
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Opacity(
                                opacity: 0.4,
                                child: Container(
                                  width: LayoutController.to.maxWidth.value > 1080 ? 280 : 224,
                                  height: LayoutController.to.maxWidth.value > 1080 ? 80 : 68,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFC70D03),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/apple.png',
                                        height: LayoutController.to.maxWidth.value > 1080 ? 44 : 32,
                                      ),
                                      const SizedBox(
                                        width: 18,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Available on the iPhone',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: LayoutController.to.maxWidth.value > 1080
                                                  ? 16
                                                  : 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            'Apple store',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: LayoutController.to.maxWidth.value > 1080
                                                  ? 24
                                                  : 21,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: LayoutController.to.maxWidth.value > 1080 ? 12 : 4,
                              ),
                              Text(
                                'iPhone 버전 출시 예정',
                                style: TextStyle(
                                  color: const Color(0xFF707070),
                                  fontSize: LayoutController.to.maxWidth.value > 1080 ? 15 : 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          // 안드로이드 다운로드
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Opacity(
                                opacity: 0.4,
                                child: Container(
                                  width: LayoutController.to.maxWidth.value > 1080 ? 280 : 224,
                                  height: LayoutController.to.maxWidth.value > 1080 ? 80 : 68,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFC70D03),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 32,
                                      ),
                                      Image.asset(
                                        'assets/google_play.png',
                                        height: LayoutController.to.maxWidth.value > 1080 ? 44 : 32,
                                      ),
                                      const SizedBox(
                                        width: 18,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Get it on',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: LayoutController.to.maxWidth.value > 1080
                                                  ? 16
                                                  : 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            'Google play',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: LayoutController.to.maxWidth.value > 1080
                                                  ? 24
                                                  : 21,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: LayoutController.to.maxWidth.value > 1080 ? 12 : 4,
                              ),
                              Text(
                                'Android 버전 출시 예정',
                                style: TextStyle(
                                  color: const Color(0xFF707070),
                                  fontSize: LayoutController.to.maxWidth.value > 1080 ? 15 : 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
