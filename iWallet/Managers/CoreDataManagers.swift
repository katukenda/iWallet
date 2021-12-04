////
////  CoreDataManagers.swift
////  iWallet
////
////  Created by Janitha Katukenda on 2021-05-28.
////
//
//import Foundation
//import CoreData
//
//class CoreDataManager {
//
//    let persistentContainer: NSPersistentContainer
//
//    init() {
//        persistentContainer = NSPersistentContainer(name: "DataModel")
//        persistentContainer.loadPersistentStores{ (description, error) in
//            if let error = error {
//                fatalError("Core Data Store Failed \(error.localizedDescription)")
//            }
//        }
//    }
//
//    func updateCategoty() {
//        do {
//            try persistentContainer.viewContext.save()
//        } catch {
//            persistentContainer.viewContext.rollback()
//        }
//    }
//
//    func deleteCatagory(category: Category) {
//        persistentContainer.viewContext.delete(category)
//
//        do {
//            try persistentContainer.viewContext.save()
//        } catch {
//            persistentContainer.viewContext.rollback()
//            print("Faild to delete \(error)")
//        }
//    }
//
//    func getAllCategories() -> [Category] {
//        let fetchRequest: NSFetchRequest<Category> = Category.fetchRequest()
//
//        do {
//            return try persistentContainer.viewContext.fetch(fetchRequest)
//        } catch {
//            return []
//        }
//    }
//
//    func saveCatagory(category_name: String) {
//        let category = Category(context: persistentContainer.viewContext)
//        category.category_name = category_name
//        do {
//            try persistentContainer.viewContext.save()
//        } catch {
//            print("Failed to save category \(error)")
//        }
//    }
//}
