//
//  AppDelegate.swift
//  SpeakLine
//
//  Created by Johnathan Mann on 9/18/18.
//  Copyright © 2018 Johnathan Mann. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate, NSSpeechSynthesizerDelegate {
    
    var speech : NSSpeechSynthesizer = NSSpeechSynthesizer()

    @IBOutlet weak var window: NSWindow!
    
    @IBOutlet weak var text: NSTextField!
    
    @IBOutlet weak var startButton: NSButton!
    
    @IBOutlet weak var stopButton: NSButton!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    @IBAction func start(_ sender: Any) {
        if text.stringValue != ""{
            speech.startSpeaking(text.stringValue)
            startButton.isEnabled = false
            stopButton.isEnabled = true
            
        }
        
    }
    
    @IBAction func stop(_ sender: Any) {
        speech.stopSpeaking()

    }
    func speechSynthesizer(_ sender: NSSpeechSynthesizer, didFinishSpeaking finishedSpeaking: Bool) {
        startButton.isEnabled = true
        stopButton.isEnabled = false
    }
    
}

