//
//  uFGcAsUwDM.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/26/23.
//

import SwiftUI
import Navigator

struct uFGcAsUwDM: View {
    
    @StateObject var MdEYitdxfQ = CJlegiCxpA()
    
    @Environment(\.navigator) var router
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            Image("bg_image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: .infinity, alignment: .bottom)
            
            TabView(selection: $MdEYitdxfQ.DoJpyLgoKS, content: {
                
                ForEach(MdEYitdxfQ.WHcyRkEhKv, id: \.id) { index in
                    
                    VStack(spacing: 0) {
                        
                        Spacer()
                        
                        VStack(spacing: 10, content: {
                            
                            Text(index.title)
                                .foregroundColor(.white)
                                .font(.system(size: 26, weight: .semibold))
                                .multilineTextAlignment(.center)
                            
                            Text(index.subtitle)
                                .foregroundColor(.gray)
                                .font(.system(size: 18, weight: .regular))
                                .multilineTextAlignment(.center)
                        })
                        .padding()
                        
                        Image(index.image)
                            .resizable()
                            .ignoresSafeArea()
                    }
                }
            })
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            VStack {
                
                Spacer()
                
                Button(action: {
                    
                    if MdEYitdxfQ.DoJpyLgoKS >= MdEYitdxfQ.WHcyRkEhKv.count {
                        
                        router?.push(
                            
                            IONUeKFYIM()
                                .navigationBarBackButtonHidden()
                        )
                        
                    } else {
                        
                        MdEYitdxfQ.shbmqAnHgu()
                    }
                    
                }, label: {
                    
                    Text("Next")
                        .foregroundColor(.black)
                        .font(.system(size: 15, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                        .padding()
                })
                .buttonStyle(RBnbXpDCUh(scaling: 0.9))
                
                HStack {
                    
                    ForEach(0..<MdEYitdxfQ.WHcyRkEhKv.count, id: \.self) { index in
                        
                        Circle()
                            .fill(MdEYitdxfQ.DoJpyLgoKS > index ? .white : .gray.opacity(0.3))
                            .frame(width: 8, height: 8)
                    }
                }
            }
        }
    }
}

#Preview {
    uFGcAsUwDM()
}
