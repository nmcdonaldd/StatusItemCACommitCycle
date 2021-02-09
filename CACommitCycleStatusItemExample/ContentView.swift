//
//  ContentView.swift
//  CACommitCycleStatusItemExample
//
//  Created by Nicholas McDonald on 2/9/21.
//

import SwiftUI

struct ContentView: View {
    var onSizeChange: (CGSize) -> Void
    var body: some View {
        StatusItemViewable(onSizeChange: onSizeChange) {
            Text("Just some text")
                .fixedSize()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView { size in }
    }
}
