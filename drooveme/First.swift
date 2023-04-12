
import SwiftUI
struct First: View{
   

    
   
    @State private var showingAlert = false
    
    @State private var date = Date()
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2023, month: 1, day: 1)
        let endComponents = DateComponents(year: 2023, month: 12, day: 31, hour: 23, minute: 59, second: 59)
        return calendar.date(from:startComponents)!
        ...
        calendar.date(from:endComponents)!
    }()
    
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    
    @State var selectedDate = Date()
    
    static let formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.setLocalizedDateFormatFromTemplate("yyMMddhhmm")
        return formatter
    }()
    
    @State var expand = false
    @State var index = 0
    
    
    @State private var year = 2020
    @State private var isShowingPicker = false
    
    
    var colors = [
       // "Select Univercity",
        "Alamlik suud ",
        "Alamira nura",
        "Alimam"
    ]
    
    @State private var selectedColor = "Alamlik suud "
    
    
    @State var selected = false
    @State var selectedb = false
    @State var selectedbu = false
    @State var selectedbs = false
    
    
    @State var isPresented = false
 
    var body:some View{
        
        NavigationView {
            
            
            ScrollView {
        
                
       ZStack(alignment: .topLeading) {
                    Color.init(hex: "#e1e5fb")//F3F2F7
                     .edgesIgnoringSafeArea(.bottom)
                 .frame(maxWidth: .infinity, maxHeight: .infinity)
                    HStack{
                        
                        Image("bnt")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 75.0, height:75.0)
                            .clipShape(Circle())
                            .padding()
                        
        
                        
                        Text("Hi Sara!")
                            .padding(0)
                            .font(.system(size: 20))
                        
                            .foregroundColor(Color.init(hex: "#404885") )
                        Text("").frame(
                            width: 140
                        )
                        
                        Image("Bell Icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 13.0, height:15.0)
                            
                        
                        Image("options")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 15.0, height:15.0)
                             
                            
                        
                    }
                    
                    
                }
       .background(Color.init(hex: "#F3F2F7"))
                //.background(Color.init(hex: "#F3F2F7"))
                .padding(0)
                // .frame(width: UIScreen.main.bounds.width + 120)
                .frame(
                      minWidth: 0,
                      maxWidth: .infinity,
                      minHeight: 0,
                      maxHeight: .infinity
                     // alignment: .topLeading
                    )
                
 
                ZStack{
                    
                    Text("").frame(maxWidth: .infinity)
                }
                
                .padding(30)
                   .background(RoundedCorners(color: .white, tl: 30, tr: 30, bl: 0, br: 0))
          
                .frame(maxWidth: .infinity)
                .background(Color.init(hex: "#e1e5fb"))
                
                
HStack{
                    
 
    VStack {
                        
     Button {
       self.expand.toggle() } label: {   Image("11")    }
     
     
     if expand {
                Picker(selection: $index, label: EmptyView()) {
                        ForEach(0 ..< colors.count) {
                            Text(self.colors[$0]).tag($0)
                        }
                    }.labelsHidden()
                    .overlay(
                        GeometryReader { gp in
                            VStack {
                                Button(action: {
                                    self.expand.toggle()
                                }) {
                                   
                                }
                                .background(Color.white)
                               // Spacer()
                            }
 
                        }
                    )
                
              
                   }
         
                        
                        
                    }
            
                    
                    
                    VStack {
                        
                        
 
                        Button() {
                             showingAlert = true
                     

                        }label: {
                            
                            Image("33")
                        }
                        
                        .alert("your current location is Riyad", isPresented: $showingAlert) {
                            Button("OK", role: .cancel) { }
                        }
                        
                
                    }
                   
                    
                    
                    VStack {
 
                        Button() {
                            showingAlert = true
                            self.showDatePickerAlert()

                        }label: {
                            
                            Image("22")
                        }
                        
                  
                    }
               
                    
                }.padding(.all, 0)
                //.padding()
                
                    .background(.green)
                //.cornerRadius(25) /// make the background rounded
                // .overlay( /// apply a rounded border
                  //   RoundedRectangle(cornerRadius: 25)
                    //     .stroke(.green, lineWidth: 0)
                // )
             
                Spacer()
               
               VStack{
                    
                    Text("Chooze Transport")      .padding(0)
                       .font(.largeTitle)
                   
                       .foregroundColor(Color.init(hex: "#41AC80") )
                   Spacer()
                   Spacer()
                }
                
                HStack{
                 
                    VStack{
                 
                        Image( "sportutilityvehicle").foregroundColor(Color.red)
                        Spacer()
                        Spacer()
                        Button(action: {
                                    self.selected.toggle()
                                }, label: {
                                    Text("Car")
                                        .padding(.all, 5)
                                        .background(selected ? Color.init(hex: "#7782B0") : Color.init(hex: "#A4D8C1") )
                                        .foregroundColor(selected ? Color.white :Color.init(hex: "#fff"))
                                })
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 4)
                                            .stroke(Color.blue, lineWidth: 0)
                                )
                        
                        
                    }
                    .padding(25)
                    .background(selected ? Color.init(hex: "#7782B0") : Color.init(hex: "#A4D8C1"))
                        .foregroundColor(selected ? Color.white : Color.blue)
                        .cornerRadius(25) /// make the background rounded
                        .overlay( /// apply a rounded border
                            RoundedRectangle(cornerRadius: 25)
                           .stroke(.blue, lineWidth: 0)
                          )
                    
                    VStack{
                        Image("bicycle").foregroundColor(Color.red)
                        
                        Spacer()
                        Spacer()
                        Button(action: {
                                    self.selectedb.toggle()
                                }, label: {
                                    Text("Bicycle")
                                        .padding(.all, 5)
                                        .background(selectedb ?  Color.init(hex: "#7782B0") : Color.init(hex: "#A4D8C1"))
                                        .foregroundColor(selectedb ? Color.white : Color.white)
                                })
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 4)
                                            .stroke(Color.blue, lineWidth: 0)
                                )
                        
                        
                    }
                    .padding(25)
                    .background(selectedb ?  Color.init(hex: "#7782B0") : Color.init(hex: "#A4D8C1"))
                        .foregroundColor(selectedb ?  Color.init(hex: "#7782B0") : Color.init(hex: "#A4D8C1"))
                        .cornerRadius(25) /// make the background rounded
                        .overlay( /// apply a rounded border
                            RoundedRectangle(cornerRadius: 25)
                           .stroke(.blue, lineWidth: 1)
                          )

                    VStack{
                        
                        Image( "Bus")
                        
                        Spacer()
                        Spacer()
                        Button(action: {
                                    self.selectedbu.toggle()
                                }, label: {
                                    Text("Bus")
                                        .padding(.all, 5)
                                        .background(selectedbu ?  Color.init(hex: "#7782B0") : Color.init(hex: "#A4D8C1"))
                                    
                                        .foregroundColor(selectedbu ? Color.white : Color.white)
                                })
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 4)
                                            .stroke(Color.blue, lineWidth: 0)
                                )
                        
                        
                    }
                    .padding(25)
                    .background(selectedbu ?  Color.init(hex: "#7782B0") : Color.init(hex: "#A4D8C1"))
                        .foregroundColor(selectedbu ? Color.white : Color.red)
                        .cornerRadius(25) /// make the background rounded
                        .overlay( /// apply a rounded border
                            RoundedRectangle(cornerRadius: 25)
                           .stroke(.blue, lineWidth: 1)
                          )
                    
                    
                    
                    VStack{
                        
                        Image( "Station")
                        
                        Spacer()
                        Spacer()
                        Button(action: {
                                    self.selectedbs.toggle()
                                }, label: {
                                    Text("Metro")
                                        .padding(.all, 5)
                                        .background(selectedbs ?  Color.init(hex: "#7782B0") : Color.init(hex: "#A4D8C1"))
                                    
                                        .foregroundColor(selectedbs ? Color.white : Color.white)
                                })
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 4)
                                            .stroke(Color.blue, lineWidth: 0)
                                )
                        
                        
                    }
                    .padding(25)
                    .background(selectedbs ?  Color.init(hex: "#7782B0") : Color.init(hex: "#A4D8C1"))
                        .foregroundColor(selectedbs ? Color.white : Color.red)
                        .cornerRadius(25) /// make the background rounded
                        .overlay( /// apply a rounded border
                            RoundedRectangle(cornerRadius: 25)
                           .stroke(.blue, lineWidth: 1)
                          )
                    
                    
                    
                    
                    
                    
                }
                
                Spacer()
        

                VStack{
                    Spacer()
                  
                    
                    NavigationLink(destination: Cart()) {
                                 Text("Need Help")
                        //FE9BAO
                                 .fontWeight(.bold)
                                     .frame(minWidth: 250, minHeight: 50)
                                 .font(.title)
                                 .foregroundColor(Color.init(hex: "#fff"))
                                 
                                 .padding(1)
                                 .overlay(
                                     RoundedRectangle(cornerRadius: 50)
                                         .stroke(Color.gray, lineWidth: 2)
                                         
                                 )
                            .background(Color.init(hex: "#FFB5BF"))
                        // Color.init(hex: "#0102E4") 
                            .cornerRadius(50)
                    }
                 
                    
                    
                }
          
            }
     
            .navigationBarTitle(Text("."), displayMode: .inline)
            .foregroundColor(.black)
           
            
            .toolbarBackground(Color.init(hex: "#e1e5fb"), for: .navigationBar)//F3F2F7

            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
            
   // end hstack
            
         /*
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
            */
            
        }
        
    
    }
    
    
    func showDatePickerAlert() {
        let alertVC = UIAlertController(title: "\n\n\n\n\n\n\n\n\n", message: nil, preferredStyle: .actionSheet)
        let datePicker: UIDatePicker = UIDatePicker()
        alertVC.view.addSubview(datePicker)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.selectedDate = datePicker.date
        }
        alertVC.addAction(okAction)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        alertVC.addAction(cancelAction)
        
        if let viewController = UIApplication.shared.windows.first?.rootViewController {
            viewController.present(alertVC, animated: true, completion: nil)
        }
    }
    
}
struct First_Previews: PreviewProvider {
    static var previews: some View {
        First()
    }
}


extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}


 

struct RoundedCorners: View {
    var color: Color = .blue
    var tl: CGFloat = 0.0
    var tr: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var br: CGFloat = 0.0
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                
                let w = geometry.size.width
                let h = geometry.size.height

                // Make sure we do not exceed the size of the rectangle
                let tr = min(min(self.tr, h/2), w/2)
                let tl = min(min(self.tl, h/2), w/2)
                let bl = min(min(self.bl, h/2), w/2)
                let br = min(min(self.br, h/2), w/2)
                
                path.move(to: CGPoint(x: w / 2.0, y: 0))
                path.addLine(to: CGPoint(x: w - tr, y: 0))
                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: w, y: h - br))
                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: bl, y: h))
                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: tl))
                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
                path.closeSubpath()
            }
            .fill(self.color)
        }
    }
}
