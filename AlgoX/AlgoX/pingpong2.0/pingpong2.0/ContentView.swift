//
//  ContentView.swift
//  pingpong2.0
//
//  Created by Facultad de Contaduría y Administracíon on 15/04/24.
//

import SwiftUI

struct ContentView: View {
    @State var team1: Int = 0
    @State var team2: Int  = 0
    @State var playUpTo: Int = 5
    @State var WinnerTeam1: Bool = false
    @State var WinnerTeam2: Bool = false
    
    func addPointTeam1(){
        team1 = team1 + 1
        if (team1 == playUpTo){
            WinnerTeam1 = true
            WinnerTeam2 = false
        }
    }
    
    
    func addPointTeam2(){
        team2 = team2 + 1
        if (team2 == playUpTo){
            WinnerTeam2 = true
            WinnerTeam1 = false
        }
    }
    
    func addPointTeam2(){
        team2 = team2 + 1
    }
    
    func resetScore (){
        team1 = 0
        team2 = 0
        WinnerTeam1 = false
        WinnerTeam2 = false
    }
    
    var body: some View {
        
        VStack{
            
            if (WinnerTeam1{
                
                Text ("jugador 1 ha ganado")
                    .padding()
                    .foregroundColor(Color(red: 0.945, green: 0.969, blue: 0.992))
                    .bold()
                    .background(Color(red: 0.329, green: 0.596, blue: 0.867))
                    .cornerRadius(20)
                    .disabled(WinnerTeam1 || WinnerTeam2)
            }
                
                if (WinnerTeam2{
                    
                    Text ("jugador 1 ha ganado")
                        .padding()
                        .foregroundColor(Color(red: 0.945, green: 0.969, blue: 0.992))
                        .bold()
                        .background(Color(red: 0.329, green: 0.596, blue: 0.867))
                        .cornerRadius(20)
                }
            Image("pingPong")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150,height: 150)
            
            HStack{
                Text("\(team1)")
                    .font(.system(size:100))
                    .foregroundColor(Color(red: 0.329, green: 0.596, blue: 0.867))
                Text("-")
                    .font(.system(size:100))
                    .foregroundColor(Color(red: 0.329, green: 0.596, blue: 0.867))
                Text("\(team2)")
                    .font(.system(size:100))
                    .foregroundColor(Color(red: 0.922, green: 0.11, blue: 0.141))
                Picker("", selection: $playUpTo){
                    Text("Hasta 5").tag(5)
                    Text("Hasta 7").tag(7)
                    Text("Hasta 15").tag(15)
                }
            }
            
        } .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background( Color(red: 0.122, green: 0.18, blue: 0.298))
        
        
    }
    
    
    
    HStack{
        
        Spacer()
        
        Button(action: {
            addPointTeam1()
        }, label: {
            Text("+1")
                .padding()
                .foregroundColor(Color(red: 0.945, green: 0.969, blue: 0.992))
        }).background(Color(red: 0.329, green: 0.596, blue: 0.867))
            .cornerRadius(20)
        
        Spacer()
        
        
        Button(action: {
            addPointTeam2()
            
        }, label: {
            Text("+1")
                .padding()
                .foregroundColor(Color(red: 0.945, green: 0.969, blue: 0.992))
        }).background(Color(red: 0.922, green: 0.11, blue: 0.141))
            .cornerRadius(20)
        Spacer()
    }
    
    Button(action:,{
        resetScore()
    } label:{
        Image(systemName: "")
            .foregroundColor(Color(red: 0.122, green: 0.18, blue: 0.298))
            .bold()
            .font(.title)
        
    }).frame(width: 50, height: 50)
    .background(Color(red: 0.945, green: 0.969, blue: 0.992))
    .cornerRadius(25)
    
                    }.frame(maxWidth: .infinity, maxHeight: .infinity )
                    .background(Color(red: 0.122, green: 0.18, blue: 0.298))

#Preview {
    ContentView()
}
