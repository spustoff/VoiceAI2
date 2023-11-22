//
//  CoreDataStack.swift
//  VoiceAI2
//
//  Created by Вячеслав on 10/4/23.
//

import SwiftUI
import CoreData

class CoreDataStack {
    
    static let shared = CoreDataStack()

    private init() {}

    lazy var persistentContainer: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "ResultModel")
        
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            
            if let error = error as NSError? {
                
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        
        return container
    }()
    
    func tiGHhJXEEA() {
        
        let context = persistentContainer.viewContext
        
        if context.hasChanges {
            
            do {
                
                try context.save()
                
            } catch {
                
                let nserror = error as NSError
                
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    func CvTCrlvQBD(withUniqueID uniqueID: Int64, completion: @escaping () -> (Void)) {
        
        let context = CoreDataStack.shared.persistentContainer.viewContext
        let fetchRequest: NSFetchRequest<ResultModel> = ResultModel.fetchRequest()
        
        fetchRequest.predicate = NSPredicate(format: "uniqueID == %ld", Int64(uniqueID))
        
        do {
            
            let objects = try context.fetch(fetchRequest)
            
            for object in objects {
                
                context.delete(object)
            }
            
            CoreDataStack.shared.tiGHhJXEEA()
            
            completion()
            
        } catch {
            
            print("Error fetching: \(error)")
        }
    }
}
