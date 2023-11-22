//
//  SDhqINjANF.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/26/23.
//

import SwiftUI
import Navigator

struct SDhqINjANF: View {
    
    @StateObject var MdEYitdxfQ = lKmRSGnCzy()
    
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
                    
                    Text("Allow access to the camera\nand audio")
                        .foregroundColor(.white)
                        .font(.system(size: 26, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    Text("To use the app to its fullest!")
                        .foregroundColor(.gray)
                        .font(.system(size: 18, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                .padding()
                .padding(.top)
                
                Image("splash_6")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 255, height: 255)
                    .frame(maxHeight: .infinity, alignment: .center)
                
                Button(action: {
                    
                    if MdEYitdxfQ.vFYGjqUfNT {
                        
                        MdEYitdxfQ.status = true
                        
                        router?.push(
                            
                            XUieLchAMu()
                                .navigationBarBackButtonHidden()
                        )
                        
                    } else {
                        
                        MdEYitdxfQ.vsLTfALPEg()
                    }
                    
                }, label: {
                    
                    Text(MdEYitdxfQ.vFYGjqUfNT ? "Finish" : "Enable Access")
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
                        
                        MdEYitdxfQ.status = true
                        
                        router?.push(
                            
                            XUieLchAMu()
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
            .padding(10)
        }
        .alert(isPresented: $MdEYitdxfQ.jwwArDmGjb, content: {
            
            Alert(title: Text("Permission Denied"), message: Text(MdEYitdxfQ.pqZRjPQhwZ), dismissButton: .default(Text("OK")))
         })
    }
}

#Preview {
    SDhqINjANF()
}
