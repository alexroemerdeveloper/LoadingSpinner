//
//  LoadingSpinnerView.swift
//  LoadingSpinner
//
//  Created by Alexander Römer on 09.02.20.
//  Copyright © 2020 Alexander Römer. All rights reserved.
//

import SwiftUI

struct LoadingSpinnerView: View {
    
    @State var animate: Bool = false
    
    var body: some View {
        VStack {
            Circle()
                .trim(from: 0, to: 0.8)
                .stroke(AngularGradient(gradient: .init(colors: [Color.red, Color.orange]), center: .center), style: StrokeStyle(lineWidth: 8, lineCap: .round))
                .frame(width: 45, height: 45)
                .rotationEffect(.init(degrees: self.animate ? 360 : 0))
                .animation(Animation.linear(duration: 0.7).repeatForever(autoreverses: false))
            Text("Loading...")
                .padding(.top)
        }
        .padding(20)
        .background(Color.white)
        .cornerRadius(15)
        .onAppear() {
            self.animate.toggle()
        }
    }
}

struct LoadingSpinnerView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingSpinnerView()
    }
}
