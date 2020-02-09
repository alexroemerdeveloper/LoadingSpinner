//
//  ContentView.swift
//  LoadingSpinner
//
//  Created by Alexander Römer on 09.02.20.
//  Copyright © 2020 Alexander Römer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animate = false
    @State private var show    = false

    var body: some View {
        ZStack {
            
            Button(action: {
                self.show.toggle()
            }) {
                Text("Loading Spinner")
            }
            
            if show {
                GeometryReader { _ in
                    LoadingSpinnerView()
                }
                .background(Color.black.opacity(0.45).edgesIgnoringSafeArea(.all))
                .onTapGesture {
                    self.show.toggle()
                }
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
