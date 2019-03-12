//
//  favoriteList.swift
//  VibeApp
//
//  Created by ali _dh on 20/06/1440 AH.
//  Copyright © 1440 MacBook Pro. All rights reserved.
//

import Foundation
import UIKit
import FirebaseStorage
import Firebase
import FirebaseDatabase

class profile: UIViewController{


    
    var ref: DatabaseReference?
    var databaseHandle: DatabaseHandle?
    var uresArray = [userList]()
    
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var userName: UITextField!
    
    @IBAction func edit(_ sender: Any) {
        Auth.auth().currentUser?.updateEmail(to: email.text!) { (error) in
            
        }
//        guard let userID = Auth.auth().currentUser?.uid else { return}
//        let prntRef = Database.database().reference().child("Users").child(userID).child("userName")
//
//        prntRef.runTransactionBlock({ (resul) -> TransactionResult in
//            if let dealResul_Initial = resul.value as? Int{
//
//                //resul.value = dealResul_Initial + 1
//                //Or HowSoEver you want to update your dealResul.
//                return TransactionResult.success(withValue: resul)
//            }else{
//
//                return TransactionResult.success(withValue: resul)
//
//            }
//        }, andCompletionBlock: {(error,completion,snap) in
//
//            print(error?.localizedDescription)
//            print(completion)
//            print(snap)
//            if !completion {
//
//                print("Couldn't Update the node")
//            }else{
//
//               // completionBlock()
//            }
//        })
       // guard let userIdPost = Auth.auth().currentUser?.uid else { return}
       // let ref : DatabaseReference!
      //  ref = Database.database().reference()
       // let PostRef = ref.child("Users")
       // let postID = PostRef.childByAutoId().key
     //   let newPostRef = PostRef.child(postID!)
//        let n = userName.text
//        let e = email.text
//        newPostRef.updateChildValues([ "userId" : userIdPost ,"userName" : n, "email" : e])
        
//        { (error, ref) in
//            if error != nil {
//                return
//            }
//            self.tabBarController?.selectedIndex = 0
//            self.clear()
//        }
//        let ref : DatabaseReference!
//        ref = Database.database().reference()
//        let PostRef = ref.child("Users")
//        let newPlanetRef = PostRef.childByAutoId()
//        newPlanetRef.updateChildValues(["userName" : n, "email": e])
//
//        let key = newPlanetRef.key
//
//        let childUpdate = [allImages : withImage, allDates: withDate]
//        _REF_ALL_IMAGES.child(key).updateChildValues(childUpdate)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
//            Database.database().reference().child("Usres").observe(.childAdded) { (snapshot : DataSnapshot) in
//
//
//                let allPlaces = Database.database().reference().ref.child("Users")
//
//                      allPlaces.observeSingleEvent(of: .value, with: { snapshot in
//                        for child in snapshot.children {
//                            let snap = child as! DataSnapshot
//                            _ = Auth.auth().currentUser?.uid
//                            let placeDict = snap.value as! [String: Any]
//                            let name = placeDict["userName"] as! String
//                            let email1 = placeDict["email"] as! String
////                            let favRestaurant = userList(username: name, useremail: email1)
//                            self.userName.text=name
//                            self.email.text=email1
//                        }
//        }
//        )
//        }}}
    //let userID : String = (Auth.auth().currentUser?.uid)!
        
//let usern = NSUserName()
        Database.database().reference().child("Users").observe(.childAdded) { (snapshot: DataSnapshot) in
        if let dict = snapshot.value as? [String: Any] {
                let restaurantNameText = dict["userName"] as! String
                let resturantLocationText = dict["email"] as! String
                let favRestaurant = userList(username: restaurantNameText, useremail: resturantLocationText)
                
                self.userName.text=restaurantNameText
                self.email.text=resturantLocationText
                
            }
        }
    
        
    }
    
}






//    )}
//
        //let allPlaces = Database.database().reference()
      //  let user1 = Auth.auth().currentUser
      //  allPlaces.child("Users").childByAutoId().setValue(user1)
        
        /*
        let ref = Database.database().reference()
        ref.child("Users").queryOrderedByKey().observe(.childAdded, with:{
             snapshot in
            let name = snapshot.value!["name"] as! String
            let email1 = snapshot.value!["email"] as! String
            
            self.postContinerArray.insert(postStruct(name: name ,email1: email), atIndex: 0)
            
            })
        
        


   // let ref = Database.database().reference()
  */
//        guard let userID = Auth.auth().currentUser?.uid else {
//            return
//        }
//        let ref : DatabaseReference!
//        ref = Database.database().reference()
//        let userRefrance = ref.child("Users")
//        let newUserRef = userRefrance.child(userID)
//        newUserRef.g(["profileImge" : profileImage ,  "email" : email , "userName" : userName])
//        onSuccess()
//        let user1 = Auth.auth().currentUser
//
   
        /*
       let ref = Database.database().reference()
        let userRefrance = ref.child("Users")
      //  let name = placeDict["userName"] as! String
        guard let userID = Auth.auth().currentUser?.uid else {
                       return }
        ref.queryOrdered(byChild: "userID").observeSingleEvent(of: .value, with: { (snapshot) in
                if ( snapshot.value is NSNull ) {
                    print("not found")
                } else {
                    for child in snapshot.children {
                        let n = (child as AnyObject).value["userName"] as! String
                        let e = (child as AnyObject).value["email"] as! String
                        print(n) //prints .14
                    }
                }
            })*/

    
//    func post(){
//      let n = "name"
//      let e = "email"
//        let u : [String : String] = ["name" : n,
//            "email" : e]
//        let allPlaces = Database.database().reference()
//        allPlaces.child("Users").childByAutoId().setValue(u)
//
//    }
      
//        tableView.delegate = self
//        tableView.dataSource = self
//        ref = Database.database().reference()
//        databaseHandle = ref?.child("Users").observe(.childAdded, with:{
//            (snapshot) in
//            let u = snapshot.value as? Any
//            if let actuaU = u {
//                self.uresArray.append(actuaU as! userList)
//                self.tableView.reloadData()
//            }
//        })}

//    override func didReceiveMemoryWarning(){
//        super.didReceiveMemoryWarning()
//    }



