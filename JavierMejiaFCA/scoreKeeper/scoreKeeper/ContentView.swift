//
//  ContentView.swift
//  scoreKeeper
//
//  Created by Facultad Contaduría y Administración on 15/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Image("pingPong")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
            HStack{
                        Text("0")
                            .font(.system(size: 100))
                            .foregroundColor(Color(red: 0.329, green: 0.596, blue: 0.867)
                                             xt("-")
                                                                 .font(.system(size: 100))
                                                                 .foregroundColor(Color(red: 0.945, green: 0.969, blue: 0.992))
                                                             Text("0")
                                                                 .font(.system(size: 100))
                                                                 .foregroundColor(Color(red: 0.922, green: 0.11, blue: 0.141))
                                             
                                                                              
                                                         }
                                                         
                                                         HStack{
                                                             Button(action: /@START_MENU_TOKEN@/{}/@END_MENU_TOKEN@/, label: {
                                                                 Text("+1")
                                                                     .foregroundColor(Color(red: 0.945, green: 0.969, blue: 0.992))
                                                                     .font(/@START_MENU_TOKEN@/.title/@END_MENU_TOKEN@/)
                                                             }) .background(Color(red: 0.329, green: 0.596, blue: 0.867))
                                                         }
        }
                                             }
                                             }
                                        
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background((Dark: Color(red: 0.122, green: 0.18, blue: 0.298))
                    
                    

                                 
                                 
                            
            
        }
        
    }
}

#Preview {
    ContentView()
}
