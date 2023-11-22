//
//  yTVPEdoDdS.swift
//  VoiceAI2
//
//  Created by Вячеслав on 10/10/23.
//

import SwiftUI

struct yTVPEdoDdS: UIViewRepresentable {
    
    @Binding var text: String
    
    @Binding var height: CGFloat
    @Binding var vqCmyjtGVJ: Bool
    @State var cXvmXELgwR: Bool = false

    func makeUIView(context: Context) -> UITextView {
        
        let haHYbTLDHZ = UITextView()
        
        haHYbTLDHZ.isEditable = true
        haHYbTLDHZ.isScrollEnabled = true
        
        haHYbTLDHZ.delegate = context.coordinator
        haHYbTLDHZ.textColor = UIColor.white
        haHYbTLDHZ.backgroundColor = .clear
        
        haHYbTLDHZ.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        
        return haHYbTLDHZ
    }

    func updateUIView(_ haHYbTLDHZ: UITextView, context: Context) {
        
        DispatchQueue.main.async {
            
            haHYbTLDHZ.text = self.text
            self.height = haHYbTLDHZ.contentSize.height
            
            if self.vqCmyjtGVJ && !context.coordinator.didBecomeFirstResponder  {
                
                haHYbTLDHZ.becomeFirstResponder()
                context.coordinator.didBecomeFirstResponder = true
            }
        }
    }

    func makeCoordinator() -> Coordinator {
        
        return Coordinator(self)
    }

    class Coordinator: NSObject, UITextViewDelegate {
        
        var parent: yTVPEdoDdS
        var didBecomeFirstResponder = false

        init(_ parent: yTVPEdoDdS) {
            
            self.parent = parent
        }

        func EblTqQHvZX(_ haHYbTLDHZ: UITextView) {
            
            DispatchQueue.main.async {
                
                self.parent.cXvmXELgwR = true
            }
        }

        func ZYOuJavDNt(_ haHYbTLDHZ: UITextView) {
            
            DispatchQueue.main.async {
                
                self.parent.cXvmXELgwR = false
            }
        }

        func PlRhSaSEsB(_ haHYbTLDHZ: UITextView) {
            
            DispatchQueue.main.async {
                
                self.parent.height = haHYbTLDHZ.contentSize.height
                self.parent.text = haHYbTLDHZ.text
            }
        }

        func haHYbTLDHZ(_ haHYbTLDHZ: UITextView, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            
            if let currentText = haHYbTLDHZ.text, let swiftRange = Range(range, in: currentText) {
                
                parent.text = currentText.replacingCharacters(in: swiftRange, with: string)
            }
            
            return true
        }

        func enSJVoRfgx(_ haHYbTLDHZ: UITextView) -> Bool {
            
            haHYbTLDHZ.resignFirstResponder()
            
            return true
        }
    }
}
