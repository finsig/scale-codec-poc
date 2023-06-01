//
//  Created by Steven Boynes on 2/21/22.
//  Copyright © 2022 Finsig LLC. All rights reserved.
///

import SwiftUI
import Substrate
import ScaleCodec

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear(perform: appear)
    }
    
    func appear() {
        //_ = U64(registry: RegistryInstance(), value: 2400)
        
        /*
        import ScaleCodec

        let data = Data([0x07, 0x00, 0x00, 0x00, 0x00, 0x01])

        let encoded = try SCALE.default.encode(UInt64(1 << 32), .compact)
        assert(encoded == data))

        let compact = try SCALE.default.decode(UInt64.self, .compact, from: data)
        assert(compact == UInt64(1 << 32))

        // without helper methods
        // let encoded = try SCALE.default.encode(SCompact(UInt64(1 << 32)))
        // let compact = try SCALE.default.decode(SCompact<UInt64>.self, from: data).value
         */
        
        do {
            let encoded = try SCALE.default.encode(UInt32(1 << 16), .compact)
            
            print("encoded= \(encoded)")
            
            for byte in encoded.enumerated() {
                print("byte= \(byte)")
            }

  
        }
        catch {
            print(error.localizedDescription)
        }
    }
}

/*
class RegistryInstance: Registry {
    
}
*/
