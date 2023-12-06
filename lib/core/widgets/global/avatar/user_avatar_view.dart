import 'package:flutter/material.dart';

class UserAvatarView extends StatelessWidget {
  final String? path;
  final double cornerRadius;
  final double size;
  final Color? backgroundColor;

  const UserAvatarView(
      {required this.path,
      required this.cornerRadius,
      required this.size,
      this.backgroundColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(cornerRadius),
        child: path != null
            ? Image.asset(
                path!,
                width: size,
                height: size,  fit: BoxFit.fill,
              )
            : Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(cornerRadius),
                  color: backgroundColor ?? const Color(0xffe9ecf5),
                ),
                child: Icon(
                  Icons.person,
                  size: size,
                  color: const Color(0xffe9ecf5),
                ),
              ));
  }
}

class UserAvatarViewNet extends StatelessWidget {
  final String? path;
  final double cornerRadius;
  final double size;
  final Color? backgroundColor;

  const UserAvatarViewNet(
      {required this.path,
      required this.cornerRadius,
      required this.size,
      this.backgroundColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(cornerRadius),
        child: path != null
            ? Image.network(
                path!,
                width: size,
                height: size,
                fit: BoxFit.fill,
              )
            : Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(cornerRadius),
                  color: backgroundColor ?? const Color(0xffe9ecf5),
                ),
                child: Icon(
                  Icons.person,
                  size: size,
                  color: const Color(0xffe9ecf5),
                ),
              ));
  }
}
