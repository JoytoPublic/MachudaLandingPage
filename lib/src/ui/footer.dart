import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machuda_landing_page/src/controller/footer_controller.dart';
import 'package:machuda_landing_page/src/controller/layout_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(FooterController());

    FooterController.to.isHovered['이메일'] = false;
    FooterController.to.isHovered['이용약관'] = false;
    FooterController.to.isHovered['개인정보처리방침'] = false;

    return Obx(() => Container(
          height: 360,
          color: const Color(0xFFF7F6F3),
          padding: EdgeInsets.symmetric(
              vertical: 40,
              horizontal: LayoutController.to.maxWidth.value > 1560
                  ? 140
                  : LayoutController.to.maxWidth.value > 420
                      ? 140 - (1560 - LayoutController.to.maxWidth.value) * 116 / 1140
                      : 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 36,
                      ),
                      const Text(
                        '문의',
                        style: TextStyle(
                          color: Color(0xFF6F7070),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      MouseRegion(
                        onEnter: (event) => FooterController.to.isHovered['이메일'] = true,
                        onExit: (event) => FooterController.to.isHovered['이메일'] = false,
                        child: InkWell(
                          onTap: () {
                            String? encodeQueryParameters(Map<String, String> params) {
                              return params.entries
                                  .map((e) =>
                                      '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                  .join('&');
                            }

                            final Uri emailLaunchUri = Uri(
                              scheme: 'mailto',
                              path: 'machuda.info@gmail.com',
                              query: encodeQueryParameters(<String, String>{'': ''}),
                            );

                            launch(emailLaunchUri.toString());
                          },
                          child: RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                color: Color(0xFF6F7070),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'NotoSansKR',
                              ),
                              children: [
                                const TextSpan(text: '이메일 : '),
                                TextSpan(
                                  text: 'machuda.info@gmail.com',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    decoration: !FooterController.to.isHovered['이메일']
                                        ? TextDecoration.none
                                        : TextDecoration.underline,
                                    decorationThickness: 2.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      InkWell(
                        onTap: () async {
                          var _url =
                              'https://drive.google.com/file/d/1IvZYVeAKR_3iQCQtVdRAbImQ7eamJrh2/view';

                          await canLaunch(_url)
                              ? await launch(_url)
                              : throw 'Could not launch $_url';
                        },
                        child: Container(
                          height: 48,
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: const Color(0xFFC70D03),
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/download.png',
                                width: 24,
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                '서비스 소개서 다운받기',
                                style: TextStyle(
                                  color: Color(0xFFC70D03),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/machuda_logo.png',
                        width: 48,
                      ),
                      const Text(
                        '사업자 번호 : 538-14-01777'
                        '\n맞추다(machuda) | 대표자 이윤규'
                        '\n경기도 수원시 영통구 월드컵로 119, 캠퍼스플라자 814호',
                        style: TextStyle(
                          color: Color(0xFF6F7070),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 1,
                    color: const Color(0xFFA0A0A0),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          '© 2021 Machuda. All Rights Reserved',
                          style: TextStyle(
                            color: Color(0xFF6F7070),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      MouseRegion(
                        onEnter: (event) => FooterController.to.isHovered['이용약관'] = true,
                        onExit: (event) => FooterController.to.isHovered['이용약관'] = false,
                        child: InkWell(
                          onTap: () async {
                            var _url =
                                'https://sites.google.com/view/machuda-servicepolicy/%ED%99%88';

                            await canLaunch(_url)
                                ? await launch(_url)
                                : throw 'Could not launch $_url';
                          },
                          child: Text(
                            '이용약관',
                            style: TextStyle(
                              color: const Color(0xFF6F7070),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              decoration: !FooterController.to.isHovered['이용약관']
                                  ? TextDecoration.none
                                  : TextDecoration.underline,
                              decorationThickness: 2.0,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          '|',
                          style: TextStyle(
                            color: Color(0xFF6F7070),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      MouseRegion(
                        onEnter: (event) => FooterController.to.isHovered['개인정보처리방침'] = true,
                        onExit: (event) => FooterController.to.isHovered['개인정보처리방침'] = false,
                        child: InkWell(
                          onTap: () async {
                            var _url = 'https://sites.google.com/view/machuda-policy/%ED%99%88';

                            await canLaunch(_url)
                                ? await launch(_url)
                                : throw 'Could not launch $_url';
                          },
                          child: Text(
                            '개인정보처리방침',
                            style: TextStyle(
                              color: const Color(0xFF6F7070),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              decoration: !FooterController.to.isHovered['개인정보처리방침']
                                  ? TextDecoration.none
                                  : TextDecoration.underline,
                              decorationThickness: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
