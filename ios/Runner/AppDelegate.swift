import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  private static let CHANNEL = "com.example.ag_test/custom_channel"

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    let channel = FlutterMethodChannel(
            name: AppDelegate.CHANNEL,
            binaryMessenger: self.binaryMessenger
        )

        channel.setMethodCallHandler { (call: FlutterMethodCall, result: @escaping FlutterResult) in
            if call.method == "transmitObject" {
                // Send a response back to Flutter
                result("Message received from Swift")
            } else {
                result(FlutterMethodNotImplemented)
            }
        }

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
