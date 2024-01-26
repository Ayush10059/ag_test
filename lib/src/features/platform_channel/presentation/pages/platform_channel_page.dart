import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@RoutePage()
class PlatformChannelPage extends StatelessWidget {
  const PlatformChannelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter Platform Channel Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await CustomChannel.channel();
          },
          child: const Text('Invoke Method'),
        ),
      ),
    );
  }
}

class CustomChannel {
  static const platform = MethodChannel('com.example.ag_test/custom_channel');

  static Future<void> channel() async {
    try {
      final response = await platform.invokeMethod('transmitObject');
      print('Response from native code: $response');
    } on PlatformException catch (e) {
      print('Error transmitting object: ${e.message}');
    }
  }
}
