//
//  ContentView.swift
//  Rays_target_game
//
//  Created by Robert Bulliard on 10/5/21.
//

import SwiftUI
// import XCTest

struct ContentView: View
{
    var body: some View
    {
        VStack
        {
            Text("🎯🎯🎯🎯\nPut the bullseye where the number goes").bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)

            
            Text("89")
            HStack
            {
                Text("1")
                Slider(value: .constant(50), in:
                        1.0 ... 100.0).font(.footnote)
                Text("100")
            }
            
            Button(action: {})
               {
                   Text ("Hit me please")
                       .bold()
               }
        }
//
//
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 468, height: 320))
    }
}
