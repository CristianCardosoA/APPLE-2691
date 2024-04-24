//
//  SwiftUIView.swift
//  pingpong
//
//  Created by Facultad de Contaduría y Administracíon on 15/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            Image("pingPong")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150,height: 150)
            HStack{
                Text("0")
                    .font(.system(size:100))
                    .foregroundColor(Color(red: 0.329, green: 0.596, blue: 0.867))
                Text("-")
                    .font(.system(size:100))
                    .foregroundColor(Color(red: 0.329, green: 0.596, blue: 0.867))
                Text("0")
                    .font(.system(size:100))
                    .foregroundColor(Color(red: 0.922, green: 0.11, blue: 0.141))
            }
        } .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background( Color(red: 0.122, green: 0.18, blue: 0.298))
        
        
    }
}

#Preview {
    ContentView()
}
