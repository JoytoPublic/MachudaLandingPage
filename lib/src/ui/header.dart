import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machuda_landing_page/src/controller/web_scroll_controller.dart';

class Header extends GetView<WebScrollController> {
  const Header({Key? key, required this.scrollController}) : super(key: key);

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          color: controller.offset.value < 760
              ? Colors.white.withOpacity(0.0)
              : controller.offset.value > 840
                  ? Colors.white.withOpacity(1.0)
                  : Colors.white.withOpacity(1 - ((840 - controller.offset.value) / 80)),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1560, maxHeight: 60),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 140),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/machuda.png',
                      height: 40,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          width: 29,
                          height: 13,
                          padding: const EdgeInsets.only(left: 0.5, top: 0.5),
                          decoration: BoxDecoration(
                            color: const Color(0xFFEF0C00),
                            borderRadius: BorderRadius.circular(6.5),
                          ),
                          child: const Center(
                            child: Text(
                              'Beta',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8.0,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {
                            double newOffset = scrollController.position.maxScrollExtent;

                            scrollController.animateTo(newOffset,
                                duration: const Duration(milliseconds: 1000), curve: Curves.ease);

                            controller.offset.value = newOffset;
                          },
                          child: const Text(
                            'CONTACT',
                            style: TextStyle(
                              color: Color(0xFF37352F),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
