//
//  ContentView.swift
//  SliderButton
//
//  Created by Rezo Joglidze on 19.09.22.
//

import SwiftUI

struct ContentView: View {
    /*
     //MARK: Tasks
     1. Users can drag and slide button to right direction
     2. The button shape will grow horizontally as well
     3. When we stop dragging the button halway and we relesea our fingers from the screen, button have to back its starting position
     4. If we slide button at least end of the width, it have to stay there instead of back its starting position.
     */
    
    var body: some View {
        ZStack {
            Color.blue.opacity(0.7).ignoresSafeArea(.all, edges: .all)
            
            ZStack {
                //PARTS OF CUSTOM BUTTON
                
                //MARK: Background(static)
                Capsule()
                    .fill(.white.opacity(0.2))
                
                Capsule()
                    .fill(.white.opacity(0.2))
                    .padding(8)
                
                //MARK: Call-to-action(static)
                
                Text("Get Started")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .offset(x: 20)
                
                //MARK: Capsule (Dynamic width)
                HStack {
                    Capsule()
                        .fill(.red.opacity(0.8))
                        .frame(width: 80)
                    
                    Spacer()
                }
                //MARK: Circle (Draggable)
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
