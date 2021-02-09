//
//  AppDelegate.swift
//  CACommitCycleStatusItemExample
//
//  Created by Nicholas McDonald on 2/9/21.
//

import Cocoa
import SwiftUI

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow!
    var hostingView: NSView!
    var statusItem: NSStatusItem!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        guard let button = statusItem.button else {
            return
        }
        
        hostingView = NSHostingView(rootView: ContentView(onSizeChange: onSizeChange))
        button.addSubview(hostingView)
    }
    
    @objc private func onSizeChange(size: CGSize) {
        hostingView.setFrameSize(NSSize(width: size.width, height: NSStatusBar.system.thickness))
        statusItem.length = size.width
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

