import Lottie

class LottieManager {
    static let shared = LottieManager()
    
    private var animationCache = [String: LottieAnimationView]()
    
    func preloadAnimations(_ names: [String]) {
        names.forEach {
            let animationView = LottieAnimationView(name: $0)
            animationView.currentProgress = 0
            animationCache[$0] = animationView
        }
    }
}