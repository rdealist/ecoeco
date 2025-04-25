struct ResultView: View {
    let result: TestResult
    
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                Text("你的性格类型是")
                    .font(DSFont.title)
                
                Text(result.mbtiType)
                    .font(.system(size: 64, weight: .bold))
                    .foregroundColor(DSColor.primary)
                
                LottieAnimation(name: result.mbtiType.lowercased(), loopMode: .loop)
                    .frame(height: 250)
                
                // 维度分析部分占位
                VStack(alignment: .leading) {
                    ForEach(MBTICategory.allCases, id: \.self) { category in
                        HStack {
                            Text(category.rawValue)
                                .frame(width: 60, alignment: .leading)
                            ProgressView(value: result.dimensionScores[category] ?? 0)
                                .accentColor(DSColor.secondary)
                        }
                    }
                }
                .padding()
            }
        }
    }
}