import 'package:flutter/material.dart';

class PageErrorIndicatorWidget extends StatelessWidget {
  const PageErrorIndicatorWidget({
    super.key,
    required this.error,
    required this.onPressed,
  });
  final String error;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(error),
          IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
    );
  }
}
