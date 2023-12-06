import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShimmerView extends StatelessWidget {
  const ShimmerView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (_, i) {
        final delay = (i * 300);
        return Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              FadeShimmer.round(
                size: 60,
                fadeTheme: FadeTheme.light,
                millisecondsDelay: delay,
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeShimmer(
                      height: 8,
                      width: 100.w,
                      radius: 4,
                      millisecondsDelay: delay,
                      fadeTheme: FadeTheme.light,
                    ),
                    const SizedBox(height: 6),
                    FadeShimmer(
                      height: 8,
                      millisecondsDelay: delay,
                      width: 60.w,
                      radius: 4,
                      fadeTheme: FadeTheme.light,
                    ),
                    const SizedBox(height: 6),
                    FadeShimmer(
                      height: 8,
                      millisecondsDelay: delay,
                      width: 30.w,
                      radius: 4,
                      fadeTheme: FadeTheme.light,
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
      itemCount: 15,
      separatorBuilder: (_, __) => const SizedBox(
        height: 16,
      ),
    );
  }
}
