

import Foundation


struct Calculator {
    
    var currencyRate: Double {
        willSet {
            print("환율이 \(currencyRate)에서 \(newValue)로 변경될 예정입니다.")
        }
        didSet {
            print("환율이 \(oldValue)에서 \(currencyRate)로 변경되었습니다.")
        }
    }
    
    var usd: Double {
        willSet {
            print("KRW: \(newValue)원 에서 \(newValue / currencyRate)달러로 환전될 예정 입니다.")
        }
        didSet {
            print("KRW: \(usd)원 에서 \(krw)달러로 환전 되었습니다.")
        }
    }
    
    var krw: Double {
        get {
            return usd / currencyRate
        }
        set {
            usd = newValue
        }
    }
     
}











