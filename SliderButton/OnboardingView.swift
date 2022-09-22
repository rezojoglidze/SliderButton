//
//  OnboardingView.swift
//  SliderButton
//
//  Created by Rezo Joglidze on 19.09.22.
//

import SwiftUI

struct OnboardingView: View {
   @AppStorage("onboarding") var isOnboardingViewActive: Bool = true

    var body: some View {
        ZStack {
            Color("ColorBlue").ignoresSafeArea(.all, edges: .all)
            
            ZStack {
                //MARK: Background(static)
                
                //MARK: Call-to-action(static)
                
                //MARK: Capsule (Dynamic width)
             
                //MARK: Circle (Draggable)
                
            }
            .frame(height: 80, alignment: .center)
            .padding()
        }
    }
}

// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}


// //MARK: Tasks
// 1. Users can drag and slide button to right direction
// 2. The button shape will grow horizontally as well
// 3. When we stop dragging the button halway and we relesea our fingers from the screen, button have to back its starting position
// 4. If we slide button at least end of the width, it have to stay there instead of back its starting position.
// */
//
//struct OnboardingView: View {
//
//    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
//
//    @State private var buttonWidth: CGFloat = UIScreen.main.bounds.width - 80
//    //Represent value of button in horizontal direction
//    @State private var buttonOffset: CGFloat = 0
//
//    var body: some View {
//        ZStack {
//            Color.blue.opacity(0.7).ignoresSafeArea(.all, edges: .all)
//
//            ZStack {
//                //MARK: Background(static)
//                Capsule()
//                    .fill(.white.opacity(0.2))
//
//                Capsule()
//                    .fill(.white.opacity(0.2))
//                    .padding(8)
//
//                //MARK: Call-to-action(static)
//
//                Text("Get Started")
//                    .font(.system(.title3, design: .rounded))
//                    .fontWeight(.medium)
//                    .foregroundColor(.white)
//                    .offset(x: 20)
//
//                //MARK: Capsule (Dynamic width)
//                HStack {
//                    Capsule()
//                        .fill(.red.opacity(0.9))
//                        .frame(width: buttonOffset + 80)
//
//                    Spacer()
//                }
//                //MARK: Circle (Draggable)
//                HStack {
//                    ZStack {
//                        Circle()
//                            .fill(.red.opacity(0.8))
//                        Circle()
//                            .fill(.black.opacity(0.15))
//                            .padding(8)
//
//                        Image(systemName: "chevron.right.2")
//                            .font(.system(size: 24, weight: .bold))
//
//                    }.foregroundColor(.white)
//                        .frame(width: 80, height: 80, alignment: .center)
//                        .offset(x: buttonOffset)
//                        .gesture(
//                            DragGesture()
//                                .onChanged({ gesture in
//                                    if gesture.translation.width > 0 && buttonOffset <= buttonWidth - 80 {
//                                        buttonOffset = gesture.translation.width
//                                    }
//                                })
//                                .onEnded { _ in
//
//                                    if buttonOffset > buttonWidth / 2 {
//                                        buttonOffset = buttonWidth - 80
//                                        isOnboardingViewActive = false
//                                    } else {
//                                        buttonOffset = 0
//                                    }
//                                }
//                        )
//
//                    Spacer()
//                }
//            }
//            .frame(width: buttonWidth, height: 80, alignment: .center)
//            .padding()
//        }
//    }
//}
//
//// MARK: - PREVIEW
//struct OnboardingView_Previews: PreviewProvider {
//    static var previews: some View {
//        OnboardingView()
//    }
//}
