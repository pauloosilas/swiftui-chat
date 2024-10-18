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
                    
                  
                    StatusCell(viewModel: StatusViewModel(rawValue: 4)!)
                  
                    
                    Text("SELECT YOUR STATUS")
                        .foregroundColor(.gray)
                    
                    ForEach(StatusViewModel.allCases.filter({$0 != .notConfigured}), id: \.self){ viewModel in
                       
                        Button(action:{
                            print("print")
                        }, label:{
                            StatusCell(viewModel: viewModel)
                        })

                    }
                }
               
            }
        }
    }
}

#Preview {
    StatusSelectorView()
}

struct StatusCell: View {
    let viewModel:StatusViewModel
    var body: some View {
        HStack{
            Text(viewModel.title)
                .foregroundColor(.black)
            Spacer()
        }
        .frame(height: 56)
        .padding()
        .background(Color.white)
    }
}
