//
//  IONUeKFYIM.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/26/23.
//

import SwiftUI
import Navigator

struct IONUeKFYIM: View {
    
    @Environment(\.navigator) var router
    
    var body: some View {
        
        ZStack {
            
            Color(.bg)
                .ignoresSafeArea()
            
            Image(.bg)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: .infinity, alignment: .bottom)
                .ignoresSafeArea()
            
            VStack {
                
                VStack(spacing: 10, content: {
                    
                    Text("Don't miss anything\nimportant")
                        .foregroundColor(.white)
                        .font(.system(size: 26, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    Text("The most up-to-date information")
                        .foregroundColor(.gray)
                        .font(.system(size: 18, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                .padding()
                .padding(.top)
                
                Image("splash_5")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .frame(maxHeight: .infinity, alignment: .center)
                
                Button(action: {
                    
                    router?.push(
                        
                        SDhqINjANF()
                            .navigationBarBackButtonHidden()
                    )
                    
                }, label: {
                    
                    Text("Enable Notifications")
                        .foregroundColor(.black)
                        .font(.system(size: 15, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                        .padding()
                })
                .buttonStyle(RBnbXpDCUh(scaling: 0.9))
            }
            
            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    Button(action: {
                        
                        router?.push(
                            
                            SDhqINjANF()
                                .navigationBarBackButtonHidden()
                        )
                        
                    }, label: {
                        
                        Image(systemName: "xmark")
                            .foregroundColor(.gray)
                            .font(.system(size: 13, weight: .regular))
                            .padding(8)
                            .background(Circle().fill(.gray.opacity(0.3)))
                    })
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    IONUeKFYIM()
}
