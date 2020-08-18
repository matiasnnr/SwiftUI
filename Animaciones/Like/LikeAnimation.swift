//
//  Like.swift
//  Animaciones
//
//  Created by Matías Nicolás Núñez Rivas on 07-08-20.
//  Copyright © 2020 Matías Nicolás Núñez Rivas. All rights reserved.
//

import SwiftUI

struct Like: View {
    @State private var showDetail = false
    
    let darkBackground = UIColor(red: 0, green: 0, blue: 0, alpha: 0.8)
    @State private var darkmode = true

    var body: some View {
        
        ZStack {
            Color(darkmode ? darkBackground : .white)
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                withAnimation {
                    self.showDetail.toggle()
                }
            }) {
                Image(systemName: showDetail ? "hand.thumbsdown.fill" : "hand.thumbsdown")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(showDetail ? .white : .gray)
                    .rotationEffect(.degrees(showDetail ? 540 : 0))
                    .scaleEffect(showDetail ? 2 : 1)
                    .padding()
            }
        }
    }
}

struct Like_Previews: PreviewProvider {
    static var previews: some View {
        Like()
    }
}
