//
//  wssBHRliOm.swift
//  VoiceAI2
//
//  Created by Вячеслав on 10/6/23.
//

import SwiftUI

struct wssBHRliOm: View {
    
    @Environment(\.presentationMode) var router
    
    @Namespace var animation
    
    @StateObject var YQrAOjGDyW: QRVHdBCkAY
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Character")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .medium))
                    
                    HStack {
                        
                        Spacer()
                        
                        Button(action: {
                            
                            router.wrappedValue.dismiss()
                            
                        }, label: {
                            
                            Image(systemName: "xmark")
                                .foregroundColor(.gray)
                                .font(.system(size: 13, weight: .regular))
                                .padding(8)
                                .background(Circle().fill(.gray.opacity(0.3)))
                        })
                    }
                }
                .padding()
                .padding(.top)
                
                HStack {
                    
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                    
                    ZStack(alignment: .leading, content: {
                        
                        Text("Search Characters...")
                            .foregroundColor(.gray)
                            .font(.system(size: 14, weight: .regular))
                            .opacity(YQrAOjGDyW.UNEiSeNGuk.isEmpty ? 1 : 0)
                        
                        TextField("", text: $YQrAOjGDyW.UNEiSeNGuk)
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .regular))
                    })
                    
                    Spacer()
                    
                    if !YQrAOjGDyW.UNEiSeNGuk.isEmpty {
                        
                        Button(action: {
                            
                            YQrAOjGDyW.UNEiSeNGuk.removeAll()
                            
                            UIApplication.shared.gxxcSdOsKC()
                            
                        }, label: {
                            
                            Image(systemName: "xmark")
                                .foregroundColor(Color("secondary"))
                                .font(.system(size: 9, weight: .bold))
                                .padding(3)
                                .background(Circle().fill(Color("gray")))
                        })
                    }
                }
                .padding(.horizontal)
                .frame(height: 45)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color("secondary")))
                .padding(.horizontal)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack {
                        
                        ForEach(TabCategories.allCases, id: \.self) { index in
                            
                            Button(action: {
                                
                                withAnimation(.spring()) {
                                    
                                    YQrAOjGDyW.dQkBKYTRNl = index
                                }
                                
                            }, label: {
                                
                                VStack(spacing: 4) {
                                    
                                    HStack(spacing: 4) {
                                        
                                        Image(index.text)
                                            .resizable()
                                            .renderingMode(.template)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 33, height: 33)
                                            .foregroundColor(YQrAOjGDyW.dQkBKYTRNl == index ? Color("primary") : .gray)
                                        
                                        Text(index.text)
                                            .foregroundColor(YQrAOjGDyW.dQkBKYTRNl == index ? .white : .gray)
                                            .font(.system(size: 15, weight: .regular))
                                    }
                                    
                                    if YQrAOjGDyW.dQkBKYTRNl == index {
                                        
                                        RoundedRectangle(cornerRadius: 5)
                                            .fill(Color("primary"))
                                            .frame(height: 2)
                                            .matchedGeometryEffect(id: "tab", in: animation)
                                        
                                    } else {
                                        
                                        RoundedRectangle(cornerRadius: 5)
                                            .fill(Color.clear)
                                            .frame(height: 2)
                                    }
                                }
                            })
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 4)
                }
                
                if YQrAOjGDyW.fmmkBblSFu {
                    
                    DIUJlVwnIu(width: 30, height: 30, gGixCRvyJb: .white)
                        .frame(maxHeight: .infinity, alignment: .center)
                    
                } else {
                    
                    if YQrAOjGDyW.aodEPuyZXW().isEmpty {
                        
                        VStack(spacing: 10) {
                            
                            Image("empty_search")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 48, height: 48)
                            
                            VStack(spacing: 5, content: {
                                
                                Text("No search results")
                                    .foregroundColor(.white)
                                    .font(.system(size: 18, weight: .semibold))
                                    .multilineTextAlignment(.center)
                                
                                Text("Enter another search term")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                                    .multilineTextAlignment(.center)
                            })
                        }
                        .frame(maxHeight: .infinity, alignment: .center)
                        
                    } else {
                        
                        ScrollView(.vertical, showsIndicators: false) {
                            
                            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], content: {
                                
                                ForEach(YQrAOjGDyW.aodEPuyZXW(), id: \.self) { index in
                                    
                                    Button(action: {
                                        
                                        YQrAOjGDyW.VLszvpgjAo(for: index)
                                        
                                        UIApplication.shared.gxxcSdOsKC()
                                        
                                        if YQrAOjGDyW.HOJuEYfBFf.contains(index) {
                                            
                                            router.wrappedValue.dismiss()
                                            
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                                
                                                YQrAOjGDyW.scaAfQxQQJ = true
                                            }
                                            
                                        } else {
                                            
                                            withAnimation(.spring()) {
                                                
                                                YQrAOjGDyW.chvXYRIRai = index
                                            }
                                            
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                                
                                                router.wrappedValue.dismiss()
                                            }
                                        }
                                        
                                    }, label: {
                                        
                                        Image(index.speaker_name ?? "")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 110, height: 110)
                                            .cornerRadius(radius: 10, corners: .allCorners)
                                            .overlay (
                                                
                                                ZStack {
                                                    
                                                    LinearGradient(colors: [Color.black.opacity(0.1), Color.black.opacity(0.8)], startPoint: .top, endPoint: .bottom)
                                                    
                                                    Text(index.speaker_name ?? "")
                                                        .foregroundColor(YQrAOjGDyW.chvXYRIRai == index ? Color("primary") : .white)
                                                        .font(.system(size: 14, weight: .medium))
                                                        .multilineTextAlignment(.center)
                                                        .frame(maxHeight: .infinity, alignment: .bottom)
                                                        .padding(.horizontal, 3)
                                                        .padding(.bottom, 6)
                                                    
                                                    Image(systemName: "checkmark")
                                                        .foregroundColor(.bg)
                                                        .font(.system(size: 9, weight: .bold))
                                                        .padding(4)
                                                        .background(Circle().fill(Color("primary")))
                                                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                                                        .padding(7)
                                                        .opacity(YQrAOjGDyW.chvXYRIRai == index ? 1 : 0)
                                                }
                                            )
                                            .overlay (
                                                
                                                RoundedRectangle(cornerRadius: 10)
                                                    .stroke(Color("primary"))
                                                    .opacity(YQrAOjGDyW.chvXYRIRai == index ? 1 : 0)
                                            )
                                    })
                                    .buttonStyle(RBnbXpDCUh(scaling: 0.9))
                                    .opacity(YQrAOjGDyW.HOJuEYfBFf.contains(index) ? 0.5 : 1)
                                    .overlay (
                                    
                                        VStack(spacing: 6) {
                                            
                                            Image(systemName: "lock.fill")
                                                .foregroundColor(.white)
                                                .font(.system(size: 15, weight: .semibold))
                                            
                                            Text("Premium")
                                                .foregroundColor(.white)
                                                .font(.system(size: 15, weight: .medium))
                                        }
                                        .opacity(YQrAOjGDyW.HOJuEYfBFf.contains(index) ? 1 : 0)
                                    )
                                }
                            })
                            .padding()
                            .modifier(IcvNenBaUc())
                        }
                        .modifier(ZijcvRIKzE())
                    }
                }
            }
        }
        .onAppear {
            
            YQrAOjGDyW.nzPKKymCPo()
        }
    }
}

#Preview {
    wssBHRliOm(YQrAOjGDyW: QRVHdBCkAY())
}
