import Flutter
import UIKit

public class FlutterKeyboardVisibilityTempForkPlugin: NSObject, FlutterPlugin, FlutterStreamHandler {
    
    private var eventSink: FlutterEventSink?
    private var isVisible: Bool = false
    private var isFloating: Bool = false
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let eventChannel = FlutterEventChannel(name: "flutter_keyboard_visibility", binaryMessenger: registrar.messenger())
        let instance = FlutterKeyboardVisibilityTempForkPlugin()
        eventChannel.setStreamHandler(instance)
    }
    
    override init() {
        super.init()
        
        // Set up the notification observers
        let center = NotificationCenter.default
        center.addObserver(self, selector: #selector(didShow), name: UIResponder.keyboardDidShowNotification, object: nil)
        center.addObserver(self, selector: #selector(willShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        center.addObserver(self, selector: #selector(didHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        center.addObserver(self, selector: #selector(didChangeFrame(_:)), name: UIResponder.keyboardDidChangeFrameNotification, object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc private func didShow() {
        guard !isVisible else { return }
        isVisible = true
        if let sink = eventSink {
            sink(1) // Notify the keyboard is visible
        }
    }
    
    @objc private func willShow() {
        guard !isVisible else { return }
        isVisible = true
        if let sink = eventSink {
            sink(1) // Notify the keyboard is visible
        }
    }
    
    @objc private func didHide() {
        guard isVisible else { return }
        isVisible = false
        if let sink = eventSink {
            sink(0) // Notify the keyboard is hidden
        }
    }
    
    @objc private func didChangeFrame(_ notification: Notification) {
        guard let userInfo = notification.userInfo,
              let keyboardFrameValue = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else { return }
        
        let keyboardFrame = keyboardFrameValue.cgRectValue
        let screenBounds = UIScreen.main.bounds
        
        if keyboardFrame.width > 0 &&
            keyboardFrame.width < screenBounds.width &&
            keyboardFrame.origin.y < screenBounds.height {
            isFloating = true
            didShow()
        } else if isFloating {
            isFloating = false
            didHide()
        }
    }
    
    public func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        self.eventSink = events
        
        // Notify the current keyboard visibility state
        if isVisible, let eventSink = self.eventSink {
            eventSink(1)
        }
        
        return nil
    }
    
    public func onCancel(withArguments arguments: Any?) -> FlutterError? {
        self.eventSink = nil
        return nil
    }
}
