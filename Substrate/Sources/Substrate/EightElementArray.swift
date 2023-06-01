import Foundation

struct EightElementArray<T: SCALEDecodable>: FixedCapacityArray {
    static var capacity: U32 { return U32(8) }
    var value: [T] = [T]()
}
