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
    @State private var button4isvisible: Bool = false
    @State private var sliderx: Double = 20.00
    @State private var game: Game = Game()
    
    // small game is the instantiation or reference
   // @State private var slider_int: Int = Int(sliderx)
    var body: some View
    {
     //   VStack {
     //       VStack {
                VStack
                {
                    Text("🎯🎯🎯🎯\nPut the bulls eye where the number goes").bold()
                        .kerning(2.0)
                        .multilineTextAlignment(.center)
                        .lineSpacing(4.0)
                        .font(.footnote)
                    Text(String(game.target))
                        .kerning(-1.0)
                        .font(.largeTitle)
                        .fontWeight(.black)
                    HStack
                    {
                        Text("1")
                        Slider(value: self.$sliderx, in:
                                1.0 ... 100.0).font(.footnote)
                        Text("100")
                    }
                    
                    // try adding a { here
                   VStack {
                    Button(action:
                            {
                        print("hellox swift!")
                        self.alertisvisible = true
                        
                            }
                          )
                         {
                           Text ("Hit me please. sliders value is: \(self.sliderx)")
                               .bold()
                         }
                         .alert(isPresented: $alertisvisible) { () -> Alert in
                             Alert(title: Text("Alert Title."), message: Text("Alert Message"), dismissButton: .default(Text("Ok")))}
         // moved to below              }
     
     
      
            Button(action:
                    {
                print("hello swift2")
                self.whosthereisvisible = true
            }) {
                Text("Button 2")
                
           // var slider_int: Int = Int(self.sliderx.rounded())
            
            
           .alert(isPresented: $whosthereisvisible) {
               
    () -> Alert in
               Alert(title: Text("Alert Title2"), message: Text("Alert Message2. the sliders rounded value is \(Int(self.sliderx.rounded()))"  + " You scored  \(self.game.points(slidervalue:  (Int(self.sliderx.rounded())) )  ) this round"), dismissButton: .default(Text("Ok")))}
            
            // 3rd button  more comments
                
            Button(action: {
                print("button 3")
                
                self.button3isvisible = true
            }   ) {
                Text("Button3")
                    
            }
            .alert(isPresented: $button3isvisible) { () -> Alert in
                Alert(title: Text("Alert Title3"), message: Text("Alert Message3"), dismissButton: .default(Text("Ok alert dm")))}
                
    // 4th button
                // 3rd button  more comments
                    
                Button(action: {
                    print("button 4")
                    
                    self.button4isvisible = true
                }   ) {
                    Text("Button4")
                        
                }
                .alert(isPresented: $button4isvisible) {  () -> Alert in
                    Alert(title: Text("Alert Title4"), message: Text("Alert Message4"), dismissButton: .default(Text("Ok alert dm 4")))}
                
     // moved } to here
            }
                       // middle vstack
                }
                    // innermost vstack ends here
                }
    // 4th button
      // new vstack ends here
      //      }
                
                
          
     // second innermost or middle ends here
     //   }
     // 1st vstack ends here
     //   }
        

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
}
