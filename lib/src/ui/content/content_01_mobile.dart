import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machuda_landing_page/src/controller/layout_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class Content01Mobile extends GetView<LayoutController> {
  const Content01Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 720,
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
              padding: const EdgeInsets.only(left: 120, bottom: 240),
              child: Image.asset(
                'assets/circle.webp',
                height: 250,
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
                    height: 160,
                  ),
                  const Text(
                    'AI 맞춤공부로'
                    '\n어떤 문제든 똑소리 나게'
                    '\n\'맞추다\'',
                    style: TextStyle(
                      color: Color(0xFF37352F),
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  const Text(
                    '공부 인생이 바뀌는 터닝포인트!'
                    '\n1:1 학습케어앱 맞추다를 만나보세요.'
                    '\n성적 상승을 위해 내게 꼭 맞는 공부를'
                    '\n초밀착가이드 해줄 거예요.',
                    style: TextStyle(
                      color: Color(0xFF37352F),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 42,
                  ),
                  Column(
                    children: [
                      // iOS 다운로드
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 180,
                            height: 56,
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
                                    height: 24,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Available on the iPad',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Apple store',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
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
                          const Text(
                            'iOS 13.0 이상 지원',
                            style: TextStyle(
                              color: Color(0xFF707070),
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      // 안드로이드 다운로드
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 180,
                            height: 56,
                            child: ElevatedButton(
                              onPressed: () async {
                                Get.defaultDialog(
                                  title: "MACHUDA",
                                  middleText: "곧 출시 예정입니다.",
                                );

                                // var _url = 'https://apps.apple.com/kr/app/%EB%A7%9E%EC%B6%94%EB%8B%A4-machuda-for-%EC%A0%84%EA%B8%B0%EA%B8%B0%EC%82%AC/id1590305807';
                                //
                                // await canLaunch(_url)
                                //     ? await launch(_url)
                                //     : throw 'Could not launch $_url';
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
                                    'assets/google_play.png',
                                    height: 24,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Get it on',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Google play',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
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
                          const Text(
                            'Android 버전 출시 예정',
                            style: TextStyle(
                              color: Color(0xFF707070),
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
