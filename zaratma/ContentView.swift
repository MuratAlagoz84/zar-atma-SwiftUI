//
//  ContentView.swift
//  zaratma
//
//  Created by Murat Alagöz on 13.10.2019.
//  Copyright © 2019 Murat Alagöz. All rights reserved.
//

import SwiftUI



 struct ContentView: View {
    
   @State var leftDiceNumber = 1
   @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack{
            Image("backgrounddice")
.resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("dicelogo")
                Spacer()
                HStack {
                    DiceView(n: rightDiceNumber)
                    DiceView(n: leftDiceNumber)
                    
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Spacer()
                Button(action: {
                    
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                
                    
                }) {
                    Text("Salla")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.red)
                        .padding(.horizontal)

                }
                .background(Color.white)
            }
        }
    
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1,contentMode: .fit)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

