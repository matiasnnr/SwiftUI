//
//  TopMenuBar.swift
//  Disenos
//
//  Created by Matías Nicolás Núñez Rivas on 18-08-20.
//  Copyright © 2020 Matías Nicolás Núñez Rivas. All rights reserved.
//

import SwiftUI

struct BottomMenuBar: View {
    
    @State var showMenu = false
    
    var body: some View {
        
        return NavigationView{
            GeometryReader { geo in
                ZStack(alignment: .leading){
                    if self.showMenu {
                        BottomMenuView()
                            .offset(y: self.showMenu ? geo.size.height * 0.80 : 0)
                            .frame(width: geo.size.width)
                            .transition(.move(edge: .bottom))
                    }
                }
   
            }
            .navigationBarTitle("matiasnnr.dev", displayMode: .inline)
            .navigationBarItems(leading: Button(action: {
                withAnimation{
                    self.showMenu.toggle()
                }
            }, label: {
                Image(systemName: "line.horizontal.3")
                    .font(.system(size: 30))
                    .foregroundColor(.black)
            }))
        }
        
        
    }
}

struct BottomMenuView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading){
                    HStack {
                        Image(systemName: "person.crop.circle")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                        Text("Perfil")
                            .foregroundColor(.white)
                            .fontWeight(.regular)
                            .font(.custom("Gill Sans", size: 20))
                    }
                    .padding(15)
                    HStack {
                        Image(systemName: "folder")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                        Text("Documentos")
                            .foregroundColor(.white)
                            .fontWeight(.regular)
                            .font(.custom("Gill Sans", size: 20))
                    }
                    .padding(15)
                }
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "bookmark")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                        Text("Favoritos")
                            .foregroundColor(.white)
                            .fontWeight(.regular)
                            .font(.custom("Gill Sans", size: 20))
                    }
                    .padding(15)
                    HStack {
                        Image(systemName: "arrow.right")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                        Text("Salir")
                            .foregroundColor(.white)
                            .fontWeight(.regular)
                            .font(.custom("Gill Sans", size: 20))
                    }
                    .padding(15)
                }
            }
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .center)
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)

    }
}

struct BottomMenuBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomMenuBar()
    }
}
