//
//  nUHsnaouIK.swift
//  VoiceAI2
//
//  Created by Вячеслав on 10/9/23.
//

import SwiftUI
import StoreKit
import ApphudSDK

final class nUHsnaouIK: ObservableObject {
    
    @Published var fmmkBblSFu: Bool = false
    @Published var TaPTVMNGIm: Bool = false
    
    @Published var products: [ApphudProduct] = []
    
    @Published var IAiqpBIWTa: ApphudProduct?
    
    @Published var tLBpeoqjba: Bool = true
    
    @AppStorage("isPaid") var isPaid: Bool = false
    
    @Published var yAlNSWbyDj: [ONKaMNwaTC] = [
    
        ONKaMNwaTC(icon: "Fire", title: "Today", subtitle: "Start your full access to all voices"),
        ONKaMNwaTC(icon: "Ring", title: "After 2 days", subtitle: "Receive a notification that your trial is ending "),
        ONKaMNwaTC(icon: "Card", title: "After 3 days", subtitle: "Payment date can be canceled at any time"),
    ]
    
    public func lhtvQOEMut() {
        
        fmmkBblSFu = true
        
        Apphud.paywallsDidLoadCallback { (paywalls) in
            
            guard let paywall = paywalls.first(where: { $0.experimentName != nil }) else {
                
                if let convertedPaywalls = paywalls.first(where: {$0.isDefault}).flatMap({$0.products}) {
                    
                    self.products = convertedPaywalls
                    self.IAiqpBIWTa = convertedPaywalls.first
                    
                    self.fmmkBblSFu = false
                }
                
                print("no experiments")
                
                return
            }
            
            print("yes experiments")
            
            self.products = paywall.products
            self.IAiqpBIWTa = paywall.products.first
            
            self.fmmkBblSFu = false
            
            if let targetIsClose = paywall.json?["tLBpeoqjba"] as? Bool {
                
                self.tLBpeoqjba = targetIsClose
            }
        }
    }
    
    public func KWbjuiUXSH() -> Bool {
        
        guard let subscriptions = Apphud.subscriptions() else { return false }
        
        if subscriptions.contains(where: {$0.isActive() == true}) {
            
            return true
            
        } else {
            
            return false
        }
    }
    
    public func EbxHrdGVuJ() {
        
        TaPTVMNGIm = true
        
        guard let product = IAiqpBIWTa else { return }
        
        Apphud.purchase(product, callback: { result in
            
            if result.success == true {
                
                withAnimation(.spring()) {
                    
                    self.isPaid = true
                }
                
                self.TaPTVMNGIm = false
                
            } else if let error = result.error {
                
                print(error)
                
                self.TaPTVMNGIm = false
            }
        })
    }
    
    func restorePurchases() {
        
        TaPTVMNGIm = true
        
        Apphud.restorePurchases(callback: { subscriptions, _, error in
            
            if let error = error {
                
                self.TaPTVMNGIm = false
                
                print(error)
                
            } else {
                
                guard let subscriptions = subscriptions else {
                    
                    self.TaPTVMNGIm = false
                    
                    return
                }
                
                if subscriptions.contains(where: {$0.isActive() == true}) {
                    
                    self.TaPTVMNGIm = false
                    
                    withAnimation(.spring()) {
                        
                        self.isPaid = true
                    }
                }
            }
        })
    }
    
    func VptCKvaPDm(for product: SKProduct) -> String {
        
        let formatter = NumberFormatter()
        
        formatter.numberStyle = .currency
        formatter.locale = product.priceLocale
        
        return formatter.string(from: product.price) ?? ""
    }
    
    func xhVvLXbWuQ(for product: SKProduct) -> String {
        
        guard let period = product.subscriptionPeriod else {
            
            return "nil"
        }
        
        var unit: String = ""
        
        switch period.unit {
        case .day:
            unit = period.numberOfUnits > 1 ? "days" : "day"
        case .week:
            unit = period.numberOfUnits > 1 ? "weeks" : "week"
        case .month:
            unit = period.numberOfUnits > 1 ? "months" : "month"
        case .year:
            unit = period.numberOfUnits > 1 ? "years" : "year"
        default:
            unit = "nil"
        }
        
        return "\(period.numberOfUnits) \(unit)"
    }
    
    func OIBfdsQUPq(for product: SKProduct) -> String? {
        
        if let period = product.introductoryPrice?.subscriptionPeriod {
            
            var unit = ""
            
            switch period.unit {
            case .day:
                unit = period.numberOfUnits == 1 ? "day" : "days"
            case .week:
                unit = period.numberOfUnits == 1 ? "week" : "weeks"
            case .month:
                unit = period.numberOfUnits == 1 ? "month" : "months"
            case .year:
                unit = period.numberOfUnits == 1 ? "year" : "years"
            default:
                unit = ""
            }
            
            return "Free trial for \(period.numberOfUnits) \(unit)"
        }
        
        return nil
    }
}
