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

do {
    var a: () -> () = {}
    var b: (Int, URL?) -> () = { _, _ in }
    var c: (Int, Int, Int, Int, URL?) -> () = { _, _, _, _, _ in }
}

do {
    var a: () -> () = Closure.empty()
    var b: (Int, URL?) -> () = Closure.empty()
    var c: (Int, Int, Int, Int, URL?) -> () = Closure.empty()
}

sampleRequest(text: "success", success: { (isSuccess, text) in
    print("success: \(isSuccess) text: \(text)")
}, failure: {})

sampleRequest(text: "failure", success: { _, _ in }) {
    print("failed")
}

sampleRequest(text: "success", success: { (isSuccess, text) in
    print("success: \(isSuccess) text: \(text)")
}, failure: Closure.ignore)

sampleRequest(text: "failure", success: Closure.ignore) {
    print("failed")
}

