

import SwiftUI



struct New: View {
   
  
    
    @State private var isPresented = false
    @State private var isPresented2 = false
    @State private var isPresented3 = false

    
    
    //@State private var showingAlert = false

    
    var body: some View {
    
        NavigationView {
            
            
            ScrollView {
    
 ZStack(alignment: .topLeading) { Color.init(hex: "#e1e5fb")
                                  .edgesIgnoringSafeArea(.bottom)
                                  .frame(maxWidth: .infinity, maxHeight: .infinity)
         HStack{//1
               Image("bnt").resizable().scaledToFit() .frame(width: 75.0, height:75.0).clipShape(Circle()) .padding()
               Text("Hi Sara!").padding(0)  .font(.system(size: 20)) .foregroundColor(Color.init(hex: "#404885") )
               Text("").frame(width: 140  )
                Image("Bell Icon").resizable().scaledToFit() .frame(width: 13.0, height:15.0)
               Image("options") .resizable().scaledToFit().frame(width: 15.0, height:15.0)
               } /* END HStack 1  */  }   /* END ZStack  */
                             
           .background(Color.init(hex: "#F3F2F7")) .padding(0)  .frame( minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity,alignment: .topLeading )
           VStack{ }
           
                VStack{ //3
           
               ZStack{ Image("where").resizable() .scaledToFit() .frame(width: 200.0, alignment: .leading) }.padding()
                         .background(RoundedCorners(color: Color.init(hex: "#fcdcde"), tl: 30, tr: 30, bl: 30, br: 30))

                ZStack{ Button("Select your destenation..") {    isPresented.toggle()  } .fullScreenCover(isPresented: $isPresented, content: FullScreenModalView.init) }
                    .frame(maxWidth: .infinity,minHeight: 43)
                    .background(RoundedCorners(color: Color.init(hex: "#fff"), tl: 30, tr: 30, bl: 30, br: 30))
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.red, lineWidth: 1)
                        )
 /* END 3  */  } .background(RoundedCorners(color: Color.init(hex: "#fcdcde"), tl: 30, tr: 30, bl: 30, br: 30))
.padding(25).background(RoundedCorners(color: .white, tl: 30, tr: 30, bl: 0, br: 0))  .frame(maxWidth: .infinity)  .background(Color.init(hex: "#e1e5fb"))
                         
 
   ////
         
           
               VStack{ //when
           
               ZStack{ Image("when").resizable() .scaledToFit() .frame(width: 200.0, alignment: .leading) }.padding()
                         .background(RoundedCorners(color: Color.init(hex: "#def0e5"), tl: 30, tr: 30, bl: 30, br: 30))

                ZStack{ Button("Time of Arriving....") {    isPresented2.toggle()  } .fullScreenCover(isPresented: $isPresented2, content: FullScreenModalView2.init) }
                    .frame(maxWidth: .infinity,minHeight: 43)
                    .background(RoundedCorners(color: Color.init(hex: "#fff"), tl: 30, tr: 30, bl: 30, br: 30))
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.green, lineWidth: 1)
                        )
 /* END 3 */     } .background(RoundedCorners(color: Color.init(hex: "#def0e5"), tl: 30, tr: 30, bl: 30, br: 30))
.padding(25).background(RoundedCorners(color: .white, tl: 30, tr: 30, bl: 30, br: 30))  .frame(maxWidth: .infinity)  .background(Color.init(hex: "#def0e5"))
                
                
       ////
          
                              VStack{ //Where are you now?
                          
                              ZStack{ Image("wherear").resizable() .scaledToFit() .frame(width: 200.0, alignment: .leading) }.padding()
                                        .background(RoundedCorners(color: Color.init(hex: "#e3e4f1"), tl: 30, tr: 30, bl: 30, br: 30))

                               ZStack{ Button("Where are you now?....") {    isPresented3.toggle()  } .fullScreenCover(isPresented: $isPresented3, content: FullScreenModalView3.init) }
                                   .frame(maxWidth: .infinity,minHeight: 43)
                                   .background(RoundedCorners(color: Color.init(hex: "#fff"), tl: 30, tr: 30, bl: 30, br: 30))
                                       .foregroundColor(.black)
                                       .overlay(
                                           RoundedRectangle(cornerRadius: 30)
                                               .stroke(Color.green, lineWidth: 1)
                                       )
                /* END 3 */     } .background(RoundedCorners(color: Color.init(hex: "#e3e4f1"), tl: 30, tr: 30, bl: 30, br: 30))
               .padding(25).background(RoundedCorners(color: .white, tl: 30, tr: 30, bl: 30, br: 30))  .frame(maxWidth: .infinity)  .background(Color.init(hex: "#e3e4f1"))
                               
                               
                      ////
 
                ///
                HStack{
                    Text("Choose transport")
                }
                HStack{
                    Image("car1").resizable() .scaledToFit() .frame(width: 100.0, alignment: .leading)
                    Image("bus1").resizable() .scaledToFit() .frame(width: 100.0, alignment: .leading)
                    Image("bi1").resizable() .scaledToFit() .frame(width: 100.0, alignment: .leading)
                    Image("me1").resizable() .scaledToFit() .frame(width: 100.0, alignment: .leading)
                }
                
                HStack{
                    VStack{
                        Spacer()
                      
                        
                        NavigationLink(destination: Cart()) {
                                     Text("Find Quickest Road")
                            //FE9BAO
                                     .fontWeight(.bold)
                                         .frame(minWidth: 300, minHeight: 50)
                                     .font(.title)
                                     .foregroundColor(Color.init(hex: "#fff"))
                                     
                                     .padding(3)
                                     .overlay(
                                         RoundedRectangle(cornerRadius: 10)
                                             .stroke(Color.green, lineWidth: 2)
                                             
                                     )
                                .background(Color.init(hex: "#5AB37D"))
                            // Color.init(hex: "#0102E4")
                                .cornerRadius(50)
                        }
                     
                        
                        
                    }
                }
                
                
                
            } // end ScrollView 
            .background(Color.init(hex: "#F3F2F7"))
            
     
        // end navigation view
        .navigationBarTitle(Text("."), displayMode: .inline)
        .foregroundColor(.black)
       
        
        .toolbarBackground(Color.init(hex: "#e1e5fb"), for: .navigationBar)//F3F2F7

        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarColorScheme(.dark, for: .navigationBar)
        
        }

    }
    
}
struct New_Previews: PreviewProvider {
    static var previews: some View {
        New()
    }
}

extension UIImage {
/// Resize a UIImage
func imageWith(newSize: CGSize) -> UIImage {
    let renderer = UIGraphicsImageRenderer(size: newSize)
    let image = renderer.image { _ in
        self.draw(in: CGRect.init(origin: CGPoint.zero, size: newSize))
    }
    return image.withRenderingMode(self.renderingMode)
 }
}


struct FullScreenModalView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        HStack {
 
            VStack{
                Text("Select your destenation")
                     Image("Rectangle 19769")
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


struct FullScreenModalView2: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        HStack {
 
            VStack{
                Text("")
                     Image("se")
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




struct FullScreenModalView3: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        HStack {
 
            VStack{
                Text("Select your location")
                     Image("Rectangle 19769")
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


