import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machuda_landing_page/src/controller/layout_controller.dart';
import 'package:machuda_landing_page/src/controller/web_scroll_controller.dart';
import 'package:machuda_landing_page/src/ui/content/content_01.dart';
import 'package:machuda_landing_page/src/ui/content/content_02.dart';
import 'package:machuda_landing_page/src/ui/content/content_03.dart';
import 'package:machuda_landing_page/src/ui/content/content_04.dart';
import 'package:machuda_landing_page/src/ui/content/content_05.dart';
import 'package:machuda_landing_page/src/ui/footer.dart';
import 'package:machuda_landing_page/src/ui/header.dart';

class LandingPage extends GetView<LayoutController> {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LayoutController());
    Get.put(WebScrollController());

    final ScrollController _controller = ScrollController();

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          controller.maxWidth.value = constraints.maxWidth;
          controller.isDesktop.value = constraints.maxWidth > 420;

          return Stack(
            children: [
              Obx(() => Listener(
                    onPointerSignal: (event) {
                      if (event is PointerScrollEvent) {
                        double newOffset = _controller.offset + event.scrollDelta.dy;

                        if (newOffset < 0) {
                          newOffset = 0;
                        } else if (newOffset > _controller.position.maxScrollExtent) {
                          newOffset = _controller.position.maxScrollExtent;
                        }

                        _controller.jumpTo(newOffset);

                        WebScrollController.to.offset.value = newOffset;
                      }
                    },
                    child: ListView(
                      physics: controller.isDesktop.value
                          ? const NeverScrollableScrollPhysics()
                          : const BouncingScrollPhysics(),
                      controller: _controller,
                      children: [
                        Column(
                          children: const [
                            Content01(),
                            Content02(),
                            Content03(),
                            Content04(),
                            Content05(),
                            Footer(),
                          ],
                        ),
                      ],
                    ),
                  )),
              Positioned(
                left: 0,
                top: 0,
                right: 0,
                child: Header(scrollController: _controller),
              ),
            ],
          );
        },
      ),
    );
  }
}
