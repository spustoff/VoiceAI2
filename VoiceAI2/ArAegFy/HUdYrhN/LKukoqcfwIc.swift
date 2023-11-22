//
//  eaXSNmpjqN.swift
//  VoiceAI2
//
//  Created by Вячеслав on 10/9/23.
//

import SwiftUI

struct eaXSNmpjqN: View {
    
    @Binding var miOWtHJSLA: Bool
    @Binding var optcEqXeLB: Bool
    
    @StateObject var MdEYitdxfQ = nUHsnaouIK()
    
    var body: some View {
        
        ZStack {
            
            Image("paywall_gradient")
                .resizable()
                .ignoresSafeArea()
            
            Image("paywall_image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: .infinity, alignment: .top)
                .ignoresSafeArea()
            
            VStack {
                
                VStack(alignment: .center, spacing: 6, content: {
                    
                    Text("3 days ")
                        .foregroundColor(.white)
                        .font(.system(size: 29, weight: .semibold)) +
                    
                    Text("free!")
                        .foregroundColor(Color("primary"))
                        .font(.system(size: 29, weight: .semibold))
                    
                    Text("Get full access to all features and updates")
                        .foregroundColor(.gray)
                        .font(.system(size: 17, weight: .medium))
                })
                .padding(.bottom, 20)
                .padding(.top, 80)
                
                HStack(alignment: .top, spacing: 15) {
                    
                    VStack(spacing: 20, content: {
                        
                        ForEach(MdEYitdxfQ.yAlNSWbyDj) { index in
                            
                            Image(index.icon)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 36, height: 36)
                        }
                    })
                    .padding(.vertical)
                    .padding(.horizontal, 5)
                    .background(
                    
                        LinearGradient(colors: [Color("purple"), Color("purple").opacity(0.5), Color("purple").opacity(0.1)], startPoint: .top, endPoint: .bottom)
                            .cornerRadius(radius: 20, corners: [.topLeft, .topRight])
                    )
                    
                    VStack(alignment: .leading, spacing: 20, content: {
                        
                        ForEach(MdEYitdxfQ.yAlNSWbyDj) { index in
                            
                            VStack(alignment: .leading, spacing: 4, content: {
                                
                                Text(index.title)
                                    .foregroundColor(.white)
                                    .font(.system(size: 19, weight: .semibold))
                                    .multilineTextAlignment(.leading)
                                
                                Text(index.subtitle)
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                                    .multilineTextAlignment(.leading)
                            })
                        }
                    })
                }
                .padding()
                
                Spacer()
                
                if MdEYitdxfQ.fmmkBblSFu {
                    
                    DIUJlVwnIu(width: 30, height: 30, gGixCRvyJb: .white)
                        .frame(maxHeight: .infinity, alignment: .center)
                    
                } else {
                    
                    HStack {
                        
                        ForEach(MdEYitdxfQ.products, id: \.self) { index in
                            
                            Button(action: {
                                
                                withAnimation(.spring()) {
                                    
                                    MdEYitdxfQ.IAiqpBIWTa = index
                                }
                                
                            }, label: {
                                
                                VStack(spacing: 12) {
                                    
                                    Text(index.skProduct?.localizedTitle ?? "nil")
                                        .foregroundColor(.white.opacity(0.5))
                                        .font(.system(size: 17, weight: .regular))
                                        .multilineTextAlignment(.center)
                                    
                                    if let skProduct = index.skProduct {
                                        
                                        VStack(alignment: .center, spacing: 3, content: {
                                            
                                            Text(MdEYitdxfQ.VptCKvaPDm(for: skProduct))
                                                .foregroundColor(.white)
                                                .font(.system(size: 19, weight: .semibold))
                                            
                                            Text("\(MdEYitdxfQ.VptCKvaPDm(for: index.skProduct!))/\(MdEYitdxfQ.xhVvLXbWuQ(for: skProduct))")
                                                .foregroundColor(.white.opacity(0.5))
                                                .font(.system(size: 13, weight: .regular))
                                        })
                                        
                                    } else {
                                        
                                        VStack(alignment: .center, spacing: 2, content: {
                                            
                                            Text("$0.00")
                                                .foregroundColor(.white)
                                                .font(.system(size: 19, weight: .semibold))
                                            
                                            Text("$0.00/week")
                                                .foregroundColor(.white.opacity(0.5))
                                                .font(.system(size: 13, weight: .regular))
                                        })
                                    }
                                    
                                    Text("3 days free")
                                        .foregroundColor(Color("primary"))
                                        .font(.system(size: 15, weight: .regular))
                                }
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.2)))
                                .overlay(
                                
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(MdEYitdxfQ.IAiqpBIWTa == index ? Color("primary") : .gray.opacity(0.3))
                                )
                                .overlay(
                                
                                    HStack {
                                        
                                        Text("SAVE \(index.skProduct?.productIdentifier == "yearly.unlock" ? 67 : 45)%")
                                            .foregroundColor(.white)
                                            .font(.system(size: 13, weight: .regular))
                                    }
                                        .padding(3.5)
                                        .background(RoundedRectangle(cornerRadius: 10).fill(Color(index.skProduct?.productIdentifier == "yearly.unlock" ? "pink" : "purple_paywall")))
                                        .frame(maxHeight: .infinity, alignment: .top)
                                        .offset(y: -12)
                                        .opacity(index.skProduct?.productIdentifier == "yearly.unlock" || index.skProduct?.productIdentifier == "monthy.unlock" ? 1 : 0)
                                )
                            })
                            .buttonStyle(RBnbXpDCUh(scaling: 0.9))
                        }
                    }
                    .padding(.horizontal)
                }
                
                VStack(alignment: .center, spacing: 20, content: {
                    
                    Text("Cancel at any time")
                        .foregroundColor(.white.opacity(0.4))
                        .font(.system(size: 14, weight: .regular))
                    
                    Button(action: {
                        
                        MdEYitdxfQ.EbxHrdGVuJ()
                        
                    }, label: {
                        
                        ZStack {
                            
                            if MdEYitdxfQ.TaPTVMNGIm {
                                
                                DIUJlVwnIu(width: 15, height: 15, gGixCRvyJb: Color("bg"))
                                
                            } else {
                                
                                Text("Continue")
                                    .foregroundColor(Color("bg"))
                                    .font(.system(size: 15, weight: .regular))
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                    })
                    .buttonStyle(RBnbXpDCUh(scaling: 0.9))
                    .opacity(MdEYitdxfQ.IAiqpBIWTa == nil ? 0.5 : 1)
                    .disabled(MdEYitdxfQ.IAiqpBIWTa == nil || MdEYitdxfQ.TaPTVMNGIm ? true : false)
                
                    HStack {
                        
                        Button(action: {
                            
                            guard let url = URL(string: "https://www.termsfeed.com/live/e39b229f-ed69-4d85-b37b-46dbc69efaef") else { return }
                            
                            UIApplication.shared.open(url)
                            
                        }, label: {
                            
                            Text("Privacy Policy")
                                .foregroundColor(.white.opacity(0.4))
                                .font(.system(size: 12, weight: .regular))
                        })
                        
                        Button(action: {
                            
                            MdEYitdxfQ.restorePurchases()
                            
                        }, label: {
                            
                            Text("Restore Purchases")
                                .foregroundColor(.white.opacity(0.8))
                                .font(.system(size: 13, weight: .regular))
                                .frame(maxWidth: .infinity)
                        })
                        .disabled(MdEYitdxfQ.TaPTVMNGIm ? true : false)
                        
                        Button(action: {
                            
                            guard let url = URL(string: "https://www.termsfeed.com/live/d147641e-9913-466f-8019-be6eb5192e37") else { return }
                            
                            UIApplication.shared.open(url)
                            
                        }, label: {
                            
                            Text("Term of Use")
                                .foregroundColor(.white.opacity(0.4))
                                .font(.system(size: 12, weight: .regular))
                        })
                    }
                    .padding(.horizontal)
                })
                .padding()
            }
            
            if MdEYitdxfQ.tLBpeoqjba {
                
                VStack {
                    
                    HStack {
                        
                        Spacer()
                        
                        Button(action: {
                            
                            withAnimation(.spring()) {
                                
                                optcEqXeLB = false
                                
                                miOWtHJSLA = true
                            }
                            
                        }, label: {
                            
                            Image(systemName: "xmark")
                                .foregroundColor(.white)
                                .font(.system(size: 13, weight: .bold))
                                .padding(8)
                                .background(Circle().fill(Color("bg")))
                        })
                    }
                    
                    Spacer()
                }
                .padding()
            }
        }
        .onAppear {
            
            MdEYitdxfQ.lhtvQOEMut()
        }
    }
}

#Preview {
    eaXSNmpjqN(miOWtHJSLA: .constant(false), optcEqXeLB: .constant(false))
}
