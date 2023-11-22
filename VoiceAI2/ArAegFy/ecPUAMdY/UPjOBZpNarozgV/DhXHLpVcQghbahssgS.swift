//
//  BMGSpiOVZo.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/27/23.
//

import SwiftUI

struct BMGSpiOVZo: View {
    
    let isFromRecordedCamera: Bool
    
    @Namespace var animation
    
    @Environment(\.presentationMode) var router
    
    @StateObject var MdEYitdxfQ = IwFKmrzhAk()
    @StateObject var YQrAOjGDyW: QRVHdBCkAY
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Character Language")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .medium))
                    
                    HStack {
                        
                        Spacer()
                        
                        Button(action: {
                            
                            router.wrappedValue.dismiss()
                            
                            YQrAOjGDyW.chvXYRIRai = nil
                            
                            withAnimation(.spring()) {
                                
                                YQrAOjGDyW.GGxCbhXDIM = false
                            }
                            
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
                        
                        Text("Search Languages...")
                            .foregroundColor(.gray)
                            .font(.system(size: 14, weight: .regular))
                            .opacity(MdEYitdxfQ.UNEiSeNGuk.isEmpty ? 1 : 0)
                        
                        TextField("", text: $MdEYitdxfQ.UNEiSeNGuk)
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .regular))
                    })
                    
                    Spacer()
                    
                    if !MdEYitdxfQ.UNEiSeNGuk.isEmpty {
                        
                        Button(action: {
                            
                            MdEYitdxfQ.UNEiSeNGuk.removeAll()
                            
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
                
                HStack {
                    
                    ForEach(LanguageCategories.allCases, id: \.self) { index in
                        
                        Button(action: {
                            
                            withAnimation(.spring()) {
                                
                                MdEYitdxfQ.aMtwjSnfMG = index
                            }
                            
                        }, label: {
                            
                            VStack(spacing: 4) {
                                
                                HStack(spacing: 4) {
                                    
                                    Image(index.text)
                                        .resizable()
                                        .renderingMode(.template)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 33, height: 33)
                                        .foregroundColor(MdEYitdxfQ.aMtwjSnfMG == index ? Color("primary") : .gray)
                                    
                                    Text(index.text)
                                        .foregroundColor(MdEYitdxfQ.aMtwjSnfMG == index ? .white : .gray)
                                        .font(.system(size: 15, weight: .regular))
                                }
                                
                                if MdEYitdxfQ.aMtwjSnfMG == index {
                                    
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
                
                if MdEYitdxfQ.ebGAbWjgEz().isEmpty {
                    
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
                    .padding(.horizontal)
                    
                } else {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        LazyVStack {
                            
                            ForEach(MdEYitdxfQ.ebGAbWjgEz()) { index in
                                
                                Button(action: {
                                    
                                    UIApplication.shared.gxxcSdOsKC()
                                    
                                    withAnimation(.spring()) {
                                        
                                        YQrAOjGDyW.oCCLkxZQME = index
                                    }
                                    
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                                        
                                        if isFromRecordedCamera {
                                            
                                            router.wrappedValue.dismiss()
                                            
                                        } else {
                                            
                                            YQrAOjGDyW.AyxhQiAutq = false
                                        }
                                    }

                                    if !isFromRecordedCamera {
                                        
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.8) {
                                            
                                            YQrAOjGDyW.rGbqmwFikj()
                                        }
                                    }
                                    
                                }, label: {
                                    
                                    HStack {
                                        
                                        Image(index.language_name)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 33, height: 33)
                                        
                                        HStack(spacing: 8) {
                                            
                                            Text(index.language_name)
                                                .foregroundColor(YQrAOjGDyW.oCCLkxZQME == index ? Color(.primary) : .white)
                                                .font(.system(size: 15, weight: .medium))
                                            
                                            if MiUTFkjUyt(for: YQrAOjGDyW.PIIYMIibKE) == index.language_slug {
                                                
                                                Text("(current)")
                                                    .foregroundColor(.gray)
                                                    .font(.system(size: 13, weight: .regular))
                                            }
                                        }
                                        
                                        Spacer()
                                        
                                        HStack(spacing: 10) {
                                            
                                            Button(action: {
                                                
                                                MdEYitdxfQ.FFOfukKEWL(index.language_name)
                                                
                                            }, label: {
                                                
                                                Image(systemName: MdEYitdxfQ.oyFwonRywG(index.language_name) ? "bookmark.fill" : "bookmark")
                                                    .foregroundColor(MdEYitdxfQ.oyFwonRywG(index.language_name) ? Color("primary") : .gray)
                                                    .font(.system(size: 16, weight: .regular))
                                            })
                                            
                                            Image(systemName: "chevron.right")
                                                .foregroundColor(.gray)
                                                .font(.system(size: 14, weight: .regular))
                                        }
                                    }
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 10).fill(Color(.secondary)))
                                    .overlay (
                                    
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color(.primary), lineWidth: 0.7)
                                            .opacity(YQrAOjGDyW.oCCLkxZQME == index ? 1 : 0)
                                    )
                                })
                                .buttonStyle(RBnbXpDCUh(scaling: 0.94))
                            }
                        }
                        .padding([.horizontal, .top], 1)
                        .padding(.top, 15)
                        .padding(.horizontal)
                        .padding(.bottom, 5)
                    }
                }
            }
        }
    }
}

#Preview {
    BMGSpiOVZo(isFromRecordedCamera: false, YQrAOjGDyW: QRVHdBCkAY())
}
