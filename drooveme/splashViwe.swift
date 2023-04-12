
import SwiftUI

struct splashViwe: View {
    @State private var isActive = false
    @State private var size = 0.9
    @State private var opacity = 0.8
    
    var body: some View {
        if isActive {
           //ContentView()
           New()
            //

        } else {
            VStack{
                VStack{
                    Image("splash1").resizable().ignoresSafeArea()
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.size = 1.0
                        
                    }
                }
                
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
        
    }
}

struct splashViwe_Previews: PreviewProvider {
    static var previews: some View {
        splashViwe()
    }
}
