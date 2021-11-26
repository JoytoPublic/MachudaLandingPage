import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machuda_landing_page/src/controller/layout_controller.dart';
import 'package:machuda_landing_page/src/controller/web_scroll_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class Content05 extends GetView<WebScrollController> {
  const Content05({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360,
      child: Stack(
        children: [
          Obx(() => Image.asset(
                'assets/background_05.webp',
                width: LayoutController.to.maxWidth.value,
                height: 360,
                fit: BoxFit.cover,
              )),
          Center(
            child: Obx(() => Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.ease,
                      opacity: LayoutController.to.isDesktop.value
                          ? controller.offset.value > 4750
                              ? 1.0
                              : 0.0
                          : controller.offset.value > 3900
                              ? 1.0
                              : 0.0,
                      child: AnimatedPadding(
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.ease,
                        padding: EdgeInsets.only(
                            top: LayoutController.to.isDesktop.value
                                ? controller.offset.value > 4750
                                    ? 60
                                    : 20
                                : controller.offset.value > 3900
                                    ? 40
                                    : 20),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: LayoutController.to.maxWidth.value > 1080
                                  ? 40
                                  : LayoutController.to.maxWidth.value > 720
                                      ? 32
                                      : 28,
                              fontWeight: FontWeight.w400,
                            ),
                            children: [
                              const TextSpan(text: '맞추다는 준비되었어요.\n'),
                              TextSpan(
                                text:
                                    '당신도 시험에${LayoutController.to.isDesktop.value ? ' ' : '\n'}합격할 준비가 되었나요?',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // 앱 다운로드
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.ease,
                      opacity: LayoutController.to.isDesktop.value
                          ? controller.offset.value > 4900
                              ? 1.0
                              : 0.0
                          : controller.offset.value > 4020
                              ? 1.0
                              : 0.0,
                      child: AnimatedPadding(
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.ease,
                          padding: EdgeInsets.only(
                              bottom: LayoutController.to.isDesktop.value
                                  ? controller.offset.value > 4900
                                      ? 60
                                      : 20
                                  : controller.offset.value > 4020
                                      ? 40
                                      : 20),
                          child: (() {
                            if (LayoutController.to.isDesktop.value) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // iOS 다운로드
                                  SizedBox(
                                    width: LayoutController.to.maxWidth.value > 1080 ? 265 : 224,
                                    height: LayoutController.to.maxWidth.value > 1080 ? 80 : 68,
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        var _url =
                                            'https://apps.apple.com/kr/app/%EB%A7%9E%EC%B6%94%EB%8B%A4-machuda-for-%EC%A0%84%EA%B8%B0%EA%B8%B0%EC%82%AC/id1590305807';

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
                                            height:
                                                LayoutController.to.maxWidth.value > 1080 ? 44 : 32,
                                          ),
                                          const SizedBox(
                                            width: 18,
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Available on the iOS',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      LayoutController.to.maxWidth.value > 1080
                                                          ? 16
                                                          : 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                'Apple store',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      LayoutController.to.maxWidth.value > 1080
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
                                  const SizedBox(
                                    width: 64,
                                  ),
                                  // 안드로이드 다운로드
                                  SizedBox(
                                    width: LayoutController.to.maxWidth.value > 1080 ? 260 : 224,
                                    height: LayoutController.to.maxWidth.value > 1080 ? 80 : 68,
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
                                            height:
                                                LayoutController.to.maxWidth.value > 1080 ? 44 : 32,
                                          ),
                                          const SizedBox(
                                            width: 24,
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Get it on',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      LayoutController.to.maxWidth.value > 1080
                                                          ? 16
                                                          : 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                'Google play',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      LayoutController.to.maxWidth.value > 1080
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
                                ],
                              );
                            } else {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // iOS 다운로드
                                  SizedBox(
                                    width: 180,
                                    height: 56,
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        var _url =
                                            'https://apps.apple.com/kr/app/%EB%A7%9E%EC%B6%94%EB%8B%A4-machuda-for-%EC%A0%84%EA%B8%B0%EA%B8%B0%EC%82%AC/id1590305807';

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
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  // 안드로이드 다운로드
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
                                ],
                              );
                            }
                          }())),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
