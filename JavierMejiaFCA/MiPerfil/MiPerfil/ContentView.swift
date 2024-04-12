//
//  ContentView.swift
//  MiPerfil
//
//  Created by Facultad Contaduría y Administración on 11/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        
        VStack {
            Image("Javier Mejia")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .cornerRadius(75)
            Text("Javier Mejia")
                .foregroundColor(Color(red: 0.984, green: 0.965, blue: 0.961))
                .font(.largeTitle)
                .bold()
            Text("Lic. en Administración")
                .foregroundColor(Color(red: 0.984, green: 0.965, blue: 0.961))
                .font(.title3)
                .bold()
            
            HStack{
                Spacer()
                Image(systemName: "envelope.fill")
                    .foregroundColor(Color(red: 0.984, green: 0.965, blue: 0.961))
                    .font(.title2)
                Text(verbatim: "javismejiam@gmail.com")
                    .foregroundColor(.black)
                Spacer()
                HStack{
                    Spacer()
                    Image(systemName: "envelope.fill")
                        .foregroundColor(Color(red: 0.984, green: 0.965, blue: 0.961))
                        .font(.title2)
                    Text(verbatim: "javismejiam@gmail.com")
                        .foregroundColor(.black)
                    Spacer()
                
                
                
                
                
            
                
                      
            }
            .padding()
            .background(Color(Color(red: 0.984, green: 0.965, blue: 0.961))
                .cornerRadius(20)
                .padding()
        
            
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.937, green: 0.718, blue: 0.698))
        
        
        
        
        
        
    }
}

#Preview {
    ContentView()
}
