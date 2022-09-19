//
//  ContentView.swift
//  SliderButton
//
//  Created by Rezo Joglidze on 19.09.22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color.blue.opacity(0.7).ignoresSafeArea(.all, edges: .all)
            
            ZStack {
                //PARTS OF CUSTOM BUTTON
                
                // 1. Background(static)
                Capsule()
                    .fill(.white.opacity(0.2))
                
                Capsule()
                    .fill(.white.opacity(0.2))
                    .padding(8)
                
                // 2. Call-to-action(static)
                
                Text("Get Started")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .offset(x: 20)
                
                // 3. Capsule (Dynamic width)
                HStack {
                    Capsule()
                        .fill(.red.opacity(0.8))
                        .frame(width: 80)
                    
                    Spacer()
                }
                // 4. Circle (Draggable)
                HStack {
                    ZStack {
                        Circle()
                            .fill(.red.opacity(0.5))
                        Circle()
                            .fill(.black.opacity(0.1))
                            .padding(8)
                        
                        Image(systemName: "chevron.right.2")
                            .font(.system(size: 24, weight: .bold))
                        
                    }.foregroundColor(.white)
                        .frame(width: 80, height: 80, alignment: .center)
                    
                    Spacer()
                }
            }
            .frame(height: 80, alignment: .center)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
