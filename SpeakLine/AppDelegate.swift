//
//  AppDelegate.swift
//  SpeakLine
//
//  Created by Johnathan Mann on 9/13/18.
//  Copyright © 2018 Johnathan Mann. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    
    @IBOutlet weak var textField: NSTextField!
    var speaker: NSSpeechSynthesizer = NSSpeechSynthesizer()


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    @IBAction func snakke(_ sender: Any) {
        speaker.startSpeaking(textField.stringValue)
    }
    
    @IBAction func stoppe(_ sender: Any) {
        speaker.stopSpeaking()
    }
}

