//
//  ContentView.swift
//  KalkulatorTabletV2
//
//  Created by Mateusz Rybczyński on 18/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            let widthOfScreen = geometry.size.width
            let heightOfScreen = geometry.size.height
            
            if heightOfScreen > widthOfScreen {
                //portrait mode
                
                PortraitMode(widthOfScreen: widthOfScreen,heightOfScreen: heightOfScreen)
                
            } else {
                //landscape mode
                
                LanscapeMode()
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
