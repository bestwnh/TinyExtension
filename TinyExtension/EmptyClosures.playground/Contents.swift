import UIKit
import TinyExtensionFramework

func sampleRequest(success: (Bool, String) -> (), failure: () -> ()) {
    // some network request logic
    // with some local variable store logic
}

do {
    class A {
        var didTapButtonA: () -> () = {}
        var didTapButtonB: (Int, URL?) -> () = { _, _ in }
        var didTapButtonC: (Int, Int, Int, Int, URL?) -> () = { _, _, _, _, _ in }
    }
    let a = A()
    a.didTapButtonA = {
        // some logic code
    }
}

do {
    class A {
        var didTapButtonA: () -> () = Closure.empty()
        var didTapButtonB: (Int, URL?) -> () = Closure.empty()
        var didTapButtonC: (Int, Int, Int, Int, URL?) -> () = Closure.empty()
    }
}

sampleRequest(success: { (isSuccess, text) in
    // do some complex thing
}, failure: {})

sampleRequest(success: { _, _ in }, failure: {})

sampleRequest(success: { (isSuccess, text) in
    // do some complex thing
}, failure: Closure.ignore)

sampleRequest(success: Closure.ignore, failure: Closure.ignore)
