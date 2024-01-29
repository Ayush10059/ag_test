import UIKit
import Flutter

@main
class AppDelegate: FlutterAppDelegate {
    private static let CHANNEL = "com.example.ag_test/custom_channel"

    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
            let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
            let channel = FlutterMethodChannel(
                name: AppDelegate.CHANNEL,
                binaryMessenger: controller.binaryMessenger
            )
            
            channel.setMethodCallHandler({
              (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
              if call.method == "transmitObject" {
                      // Send a response back to Flutter
                      result("Message received from Swift")
                  } else {
                      result(FlutterMethodNotImplemented)
                  }
            })

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
