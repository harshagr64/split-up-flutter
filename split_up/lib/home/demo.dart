import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey.withOpacity(0.2),
        ),
        // width: 300,
        height: 80,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              child: Text(
                  "This is harsh agarwal, how are you? this is harsh agarwal"),
            ),
            Spacer(),
            Container(
              width: 100,
              color: Colors.red,
              alignment: Alignment.bottomRight,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text("12:59 AM"),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
