import UIKit
import TinyExtensionFramework

func sampleRequest(text: String, success: (Bool, String) -> (), failure: () -> ()) {
    if text.hasPrefix("failure") {
        failure()
    } else if text.hasPrefix("success") {
        success(true, text)
    } else {
        success(false, text)
    }
}

var a: (String) -> () = Closure.empty()
var b: (Int, URL?) -> () = Closure.empty()

sampleRequest(text: "a", success: { (isSuccess, text) in
    print("success: \(isSuccess) text: \(text)")
}, failure: Closure.ignore)

sampleRequest(text: "failure:1", success: Closure.ignore) {
    print("failed")
}
