import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  String text;
  ExpandableText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool isReadMore = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          widget.text,
          maxLines: isReadMore ? 10 : 3,
          overflow: TextOverflow.ellipsis,
        ),
        TextButton(
            onPressed: () {
              setState(() {
                isReadMore = !isReadMore;
              });
            },
            child: Text(
              isReadMore ? "read less" : "read more",
            )),
      ],
    );
  }
}
