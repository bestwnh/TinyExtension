import UIKit
import TinyExtensionFramework

do { // original

    let medium: URL = URL(string: "https://medium.com/@GalvinLi")!
    let twitter: URL = URL(string: "https://twitter.com/GalvinLi")!
    let github: URL = URL(string: "https://github.com/bestwnh")!
    
    print(medium)
    print(twitter)
    print(github)
}

do { // use staticString

    let medium = URL(staticString: "https://medium.com/@GalvinLi")
    let twitter = URL(staticString: "https://twitter.com/GalvinLi")
    let github = URL(staticString: "https://github.com/bestwnh")
    
    print(medium)
    print(twitter)
    print(github)
}
    
do { // string literal
    
    let medium: URL = "https://medium.com/@GalvinLi"
    let twitter: URL = "https://twitter.com/GalvinLi"
    let github: URL = "https://github.com/bestwnh"
    
    print(medium)
    print(twitter)
    print(github)
}
