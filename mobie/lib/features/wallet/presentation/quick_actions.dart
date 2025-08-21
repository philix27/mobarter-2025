import 'package:flutter/material.dart';
import 'package:mobarter/features/theme/themeHandlers.dart';

class QuickActionsModel {
  final String title;
  final IconData icon;
  final void Function()? onPressed;

  QuickActionsModel({
    required this.title,
    required this.icon,
    required this.onPressed,
  });
}

Widget box(
  BuildContext context, {
  required QuickActionsModel item,
  bool? isActive,
}) {
  final _active = isActive != null && isActive;
  return Expanded(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: InkWell(
        onTap: item.onPressed,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: _active
                ? Theme.of(context).primaryColor
                : Theme.of(context).scaffoldBackgroundColor,
          ),
          child: Column(
            children: [
              Icon(
                item.icon,
                size: 18,
                color: _active ? Colors.white : Theme.of(context).primaryColor,
              ),
              SizedBox(height: 7),
              Text(
                item.title,
                style: textTheme(context).bodySmall?.copyWith(
                  fontSize: 10,
                  color: _active
                      ? Colors.white
                      : Theme.of(context).disabledColor,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class QuickActions extends StatelessWidget {
  QuickActions({super.key, required this.boxes});

  List<Widget> boxes;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).cardColor,
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        spacing: 10,
        children: boxes,
      ),
    );
  }
}
