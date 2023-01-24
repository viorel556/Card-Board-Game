//
//  ContentView.swift
//  War Card Game with SWIFT UI
//
//  Created by Viorel Harabaru  on 18.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card3"
    @State private var cpuCard = "card10"
    @State private var playerScore = 0
    @State private var cpuScore = 0

    
    
    var body: some View {
        ZStack {
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                Image("logo")
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    
                    let random_player_card = Int.random(in: 2...14)
                    let random_cpu_card = Int.random(in: 2...14)
                    // update the cards & score
                    playerCard = "card\(random_player_card)"
                    cpuCard = "card\(random_cpu_card)"
                    
                    if random_player_card > random_cpu_card {
                        playerScore += 1
                    } else if random_cpu_card > random_player_card {
                        cpuScore += 1
                    } 
                    
                },
                       label: {
                    Image("dealbutton")
                })

                
                Spacer()
                
                HStack() {
                    
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            
            }
            
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
