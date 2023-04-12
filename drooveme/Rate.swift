

import SwiftUI
struct Rate: View{
    
    
    var body:some View{
     
        NavigationView {
            
           
            ScrollView {
                Text("Rate Page")
            }
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        // Image(systemName: "ellipsis.circle")
                        Text("Wellcome Sara")
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            print("Wellcome Sara")
                        }, label: {
                            Image("girl")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50.0, height: 50.0)
                                .clipShape(Circle())
                            
                        })
                    }
                }
            
        }
        
        
          }
}
