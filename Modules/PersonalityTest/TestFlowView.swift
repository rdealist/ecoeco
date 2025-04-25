struct TestFlowView: View {
    @StateObject var vm = TestViewModel()
    @State private var showResult = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                ProgressView(value: vm.progress)
                    .progressViewStyle(LinearProgressViewStyle(tint: DSColor.secondary))
                    .scaleEffect(x: 1, y: 1.5)
                
                LottieAnimation(name: "thinking", loopMode: .loop)
                    .frame(height: 200)
                
                // ... existing code ...
                
                if vm.isLastQuestion {
                    Button("查看结果") {
                        showResult = true
                    }
                    .buttonStyle(PlayfulButton())
                    .padding(.top, 20)
                }
            }
            .navigationDestination(isPresented: $showResult) {
                ResultView(result: vm.finalResult)
            }
        }
    }
}