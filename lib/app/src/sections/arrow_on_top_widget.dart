import 'package:flutter/material.dart';
import 'package:personal_portfolio/app/utils/theme/app_colors.dart';

class ArrowOnTopWidget extends StatefulWidget {
  final VoidCallback onPressed;

  const ArrowOnTopWidget({Key key, @required this.onPressed}) : super(key: key);

  @override
  _ArrowOnTopWidgetState createState() => _ArrowOnTopWidgetState();
}

class _ArrowOnTopWidgetState extends State<ArrowOnTopWidget> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: widget.onPressed,
          onHover: (isHovering) {
            if (isHovering) {
              setState(() {
                isHover = true;
              });
            } else {
              setState(() {
                isHover = false;
              });
            }
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
              ),
              boxShadow: isHover
                  ? [
                      BoxShadow(
                        color: AppColors.primaryColor.withAlpha(200),
                        blurRadius: 12.0,
                        offset: Offset(2.0, 3.0),
                      )
                    ]
                  : [],
            ),
            child: Icon(
              Icons.arrow_drop_up_outlined,
              color: AppColors.primaryColor,
              size: MediaQuery.of(context).size.height * 0.05,
            ),
          ),
        ),
      ],
    );
  }
}
