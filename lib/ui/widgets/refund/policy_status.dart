import 'package:flutter/material.dart';
import 'package:travel_app/ui/commons/concentric_circle_widget.dart';
import 'package:travel_app/ui/commons/line_widget.dart';

class PolicyStatus extends StatelessWidget {
  const PolicyStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ConcentricCircleWidget(
                      outerRadius: 10,
                      innerRadius: 15,
                      outerColor: Colors.green,
                      innerColor: Colors.lightGreen),
                  Expanded(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Till 05th Jun\'23, 2:00PM'),
                          Text('\$0', textAlign: TextAlign.end,),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              // color: Colors.orange,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
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
                          Text('data adadader \n adad', textAlign: TextAlign.end,),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ConcentricCircleWidget(
                      outerRadius: 10,
                      innerRadius: 15,
                      outerColor: Colors.red,
                      innerColor: Color(0xffFFCCCB)),
                  Expanded(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('From 05th Jun\'23, 2:00PM, till \n 08th Jun\'23, 2:00PM'),
                          Text('100% of the booking\n will be charged', textAlign: TextAlign.end,),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
