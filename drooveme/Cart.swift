

import SwiftUI
struct Cart: View{
    
    @State private var showingAlert = false

    @State private var isPresented4 = false
    @State private var isPresented5 = false
    
    @State var selected = false
    @State var selectedb = false
    @State var selectedbu = false
    @State var selectedbs = false
    
    
    var body:some View{
     
        NavigationView {
            
           
            ScrollView {
                Text("")
                
                HStack{
                    Image("IMG_8580 1")
                        .resizable()
              
                        .frame( width:.infinity, height: 300.0)
                   
                }
                .padding(.horizontal, 0)
                .frame(width: UIScreen.main.bounds.width + 0)
                
            Spacer()
            
                VStack{
                    HStack{
            //
                        
                        HStack{
                      Button{ isPresented4.toggle()  }
                        label: {   Image("al")    }
                                .frame(width: 250)
                            .fullScreenCover(isPresented: $isPresented4, content: FullScreenModalView4.init) }
                             .background(RoundedCorners(color: Color.init(hex: "#5AB37D"), tl: 10, tr: 10, bl: 10, br: 10))
                                .foregroundColor(.black)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.green, lineWidth: 1)
                                )
                        
                        
                        
          //
                        
                     
                   
                        
                    }
                   
                    
                    HStack{
                     
                        
                
                        HStack{
                            Image("iss")
                                .resizable()
                      
                                .frame( width:.infinity, height: 300.0)
                           
                        }
                        .padding(.horizontal, 0)
                        .frame(width: UIScreen.main.bounds.width + 0)
                        
                    Spacer()
               

                           

                        
                        
                        
                        
                        
                       
                        
                        
                    }
                    
                
    
                }
         
                
                HStack{
                    Text("View in:")
                    
                    
                }
                
                HStack{
                    
                    Link(destination: URL(string: "http://maps.apple.com")!) {
                      
                        Image("am").resizable() .scaledToFit() .frame(width: 120.0, alignment: .leading)
                        
                    }
                    
                    Link(destination: URL(string: "https://www.google.com/maps/@?api=1&map_action=map")!) {
                        
                        Image("gm").resizable() .scaledToFit() .frame(width: 120.0, alignment: .leading)
                        
                        
                    }
                    
                }
                
                
            }
            
            
            
            
        }
        
        
          }
}
struct Cart_Previews: PreviewProvider {
    static var previews: some View {
        Cart()
    }
}


struct FullScreenModalView4: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        HStack {
 
            VStack{
                Text("")
                     Image("ad")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300.0, alignment: .leading)
                
                Button("Save") {
                    dismiss()
                }
                    .foregroundColor(.white)
                    .padding()
                    .fontWeight(.bold)
                    .frame(minWidth: 225, minHeight: 15)
                    .font(.title)
                    .foregroundColor(.gray)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.init(hex: "#5AB37D"), lineWidth: 2)
                    )
                    .background(Color.init(hex: "#5AB37D"))
                // Color.init(hex: "#0102E4")
                    .cornerRadius(50)
                
            }
            .padding()
             .background(RoundedCorners(color: Color.init(hex: "#fff"), tl: 30, tr: 30, bl: 30, br: 30))
            
          
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .padding()
        .background(Color.init(hex: "#F3F2F7"))
    }
}
