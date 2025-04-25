struct TestResult: Codable {
    let mbtiType: String
    let dimensionScores: [MBTICategory: Double]
    let assessmentDate: Date
}

extension TestResult {
    static let sample = TestResult(
        mbtiType: "ENTJ",
        dimensionScores: [.EI: 0.8, .SN: 0.65, .TF: 0.72, .JP: 0.91],
        assessmentDate: Date()
    )
}