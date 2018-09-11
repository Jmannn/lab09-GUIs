//
//  AppDelegate.swift
//  TestNSSize
//

import Cocoa

@NSApplicationMain
class AppDelegate : NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        let mySize = NSSize(width: 200.0, height: 100.0)
        print("mySize is \(mySize.width) wide and \(mySize.height)")
    }
}
