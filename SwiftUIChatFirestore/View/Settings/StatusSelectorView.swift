import SwiftUI

struct StatusSelectorView: View{
    var body: some View{
        ZStack{
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            ScrollView{
                VStack(alignment: .leading){
                    Text("CURRENTLY SET TO")
                        .foregroundColor(.gray)
                        .padding()
                    
                  
                        HStack{
                            Text("Available")
                            Spacer()
                        }
                        .padding()
                        .background(Color.white)
                  
                    
                    Text("SELECT YOUR STATUS")
                        .foregroundColor(.gray)
                    
                    ForEach((0...10), id: \.self){ _ in
                       
                        HStack{
                            Text("Available")
                            Spacer()
                        }.padding()
                        .background(Color.white)

                    }
                }
               
            }
        }
    }
}

#Preview {
    StatusSelectorView()
}
