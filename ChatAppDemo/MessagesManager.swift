//
//  MessagesManager.swift
//  ChatAppDemo
//
//  Created by Sergei  Sosnovich on 3.10.23.
//

import Foundation


//class MessagesManager: ObservableObject {
  //  @Published private(set) var messages: [Message] = []
  //  let db = Firestore.firestore()
    
  //  init() {
      //  getMessages()
   // }
    
   // func getMessages() {
      //  db.collection("messages").addSnapshotListener { querySnapshot, error in
        //    guard let documents = querySnapshot?.documents else {
         //       print("Error fetching documents: \(String(describing: error))")
          //      return
         //   }
            
          //  self.messages = documents.compactMap { document -> Message? in
           //     do {
           //         return try document.data(as: Message.self)
           //     } catch {
             //       print("Error decoding document into Message: \(error)")
              //      return nil
              //  }
           // }
      //  }
   // }
//}

