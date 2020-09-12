import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/views/about_view/data.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class TimelineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return timelineModel();
  }

  timelineModel() => Timeline.builder(
      itemBuilder: centerTimelineBuilder,
      itemCount: details.length,
      physics: BouncingScrollPhysics(),
      position: TimelinePosition.Center);

  TimelineModel centerTimelineBuilder(BuildContext context, int i) {
    final detail = details[i];
    final textTheme = Theme.of(context).textTheme;
    return TimelineModel(
      Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                decoration: BoxDecoration(
                    color: kColorPrimary,
                    borderRadius: i % 2 == 0
                        ? BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          )
                        : BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                           topRight: Radius.circular(10.0),
                           bottomLeft: Radius.circular(10.0),
                        )),
                padding: const EdgeInsets.all(8.0),
                child: Text(detail.type, textAlign: TextAlign.center, style: textTheme.headline6)),
            const SizedBox(
              height: 8.0,
            ),
            Text(detail.years,
                style: textTheme.caption.copyWith(color: Colors.grey)),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              detail.where,
              style: textTheme.subtitle1.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              detail.desc,
              style: textTheme.subtitle2.copyWith(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      isFirst: i == 0,
      position:
          i % 2 == 0 ? TimelineItemPosition.right : TimelineItemPosition.left,
      isLast: i == details.length,
      iconBackground: detail.color,
      icon: Icon(detail.icon),
    );
  }
}

// Card(
//         margin: EdgeInsets.symmetric(vertical: 16.0),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
//         clipBehavior: Clip.antiAlias,
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               Text(detail.type, style: textTheme.headline5),
//               const SizedBox(
//                 height: 8.0,
//               ),
//               Text(detail.years, style: textTheme.caption),
//               const SizedBox(
//                 height: 8.0,
//               ),
//               Text(
//                 detail.where,
//                 style: textTheme.subtitle1,
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(
//                 height: 8.0,
//               ),
//             ],
//           ),
//         ),
//       ),
