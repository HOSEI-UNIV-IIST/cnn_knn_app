import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserNetworkAvatarView extends StatelessWidget {
  final String? url;

  const UserNetworkAvatarView({required this.url, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return url != null
        ? Image.network(
            url!,
            width: double.infinity,
            height: 110.0,
            fit: BoxFit.cover,
          )
        : const SizedBox();
  }
}

class UserNetworkAvatarViewMedium extends StatelessWidget {
  final String? url;

  const UserNetworkAvatarViewMedium({required this.url, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return url != null
        ? ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
            child: Image.network(
              url!,
              width: double.infinity,
              height: 13.h,
              fit: BoxFit.cover,
            ),
          )
        : const SizedBox();
  }
}

class UserNetworkAvatarViewLarge extends StatelessWidget {
  final String? url;

  const UserNetworkAvatarViewLarge({required this.url, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return url != null
        ? ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
            child: Image.network(
              url!,
              width: double.infinity,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          )
        : const SizedBox();
  }
}
