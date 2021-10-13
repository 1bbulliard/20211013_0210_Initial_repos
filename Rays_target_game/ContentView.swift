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
    
    @State private var alertisvisible: Bool = false
    @State private var whosthereisvisible: Bool = false
    @State private var button3isvisible: Bool = false
    
    var body: some View
    {
        VStack {
            VStack {
                VStack
                {
                    Text("🎯🎯🎯🎯\nPut the bulls eye where the number goes").bold()
                        .kerning(2.0)
                        .multilineTextAlignment(.center)
                        .lineSpacing(4.0)
                        .font(.footnote)
                    Text("89")
                        .kerning(-1.0)
                        .font(.largeTitle)
                        .fontWeight(.black)
                    HStack
                    {
                        Text("1")
                        Slider(value: .constant(50), in:
                                1.0 ... 100.0).font(.footnote)
                        Text("100")
                    }
                    
                    Button(action:
                            {
                        print("hellox swift")
                        self.alertisvisible = true
                
                            }
                          )
                         {
                           Text ("Hit me please")
                               .bold()
                         }
                         .alert(isPresented: $alertisvisible) { () -> Alert in
                             Alert(title: Text("Alert Title"), message: Text("Alert Message"), dismissButton: .default(Text("Ok")))}
                       }
            }
            Button(action:
                    {
                print("hello swift2")
                self.whosthereisvisible = true
            }) {
                Text("Button 2")
            }
            .alert(isPresented: $whosthereisvisible) { () -> Alert in
                Alert(title: Text("Alert Title2"), message: Text("Alert Message2"), dismissButton: .default(Text("Ok")))}
            
            // 3rd button  more comments

            Button(action: {
                print("button 3")
                self.button3isvisible = true
            }) {
                Text("Button3")
            }
            .alert(isPresented: $button3isvisible) { () -> Alert in
                Alert(title: Text("Alert Title3"), message: Text("Alert Message3"), dismissButton: .default(Text("Ok alert dm")))}
        }
        }
    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
        .previewLayout(.fixed(width: 468, height: 320))
    }
}

struct ContentView_Previews_2: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
