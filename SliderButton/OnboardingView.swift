//
//  OnboardingView.swift
//  SliderButton
//
//  Created by Rezo Joglidze on 19.09.22.
//

import SwiftUI

struct OnboardingView: View {
    private let colorBlue = Color("ColorBlue")
    private let colorRed = Color("ColorRed")
    private let chevronImage = Image(systemName: "chevron.right.2")

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
