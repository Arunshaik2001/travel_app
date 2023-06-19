import 'package:flutter/material.dart';

import '../../commons/concentric_circle_widget.dart';
import '../../commons/line_widget.dart';

class RefundDateStatus extends StatelessWidget {
  bool showMainTopLine;
  bool showIndicatorTopLine;
  bool showIndicatorBottomLine;
  CrossAxisAlignment crossAxisAlignment;

  RefundDateStatus(
      {super.key,
      this.showMainTopLine = true,
      this.showIndicatorTopLine = true,
      this.showIndicatorBottomLine = true,
      this.crossAxisAlignment = CrossAxisAlignment.center});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          if (showMainTopLine)
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 6),
                    child: const LineWidget(
                        isVertical: true,
                        height: 45,
                        width: 3,
                        color: Colors.green),
                  ),
                ],
              ),
            ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: crossAxisAlignment,
              children: [
                Column(
                  children: [
                    if (showIndicatorTopLine)
                      Container(
                        child: const LineWidget(
                            isVertical: true,
                            height: 10,
                            width: 3,
                            color: Colors.green),
                      ),
                    ConcentricCircleWidget(
                      outerRadius: 10,
                      innerRadius: 15,
                      outerColor: Colors.red,
                      innerColor: Color(0xffFFCCCB),
                    ),
                    if (showIndicatorBottomLine)
                      Container(
                        child: const LineWidget(
                            isVertical: true,
                            height: 10,
                            width: 3,
                            color: Colors.green),
                      )
                  ],
                ),
                Expanded(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Till 05th Jun\'23, 2:00PM'),
                        Text(
                          'data adadader \n adad',
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
