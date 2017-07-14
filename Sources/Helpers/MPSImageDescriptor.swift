//
//  MPSImageDescriptor.swift
//  Bender
//
//  Created by Mathias Claassen on 5/3/17.
//
//

#if !((arch(i386) || arch(x86_64)) && os(iOS))
    import MetalPerformanceShaders
#endif

public extension MPSImageDescriptor {
    public convenience init(layerSize: LayerSize) {
        self.init(channelFormat: .float16, width: layerSize.w, height: layerSize.h, featureChannels: layerSize.f)
    }
}

extension MPSImage {
    var size: LayerSize {
        return LayerSize(f: featureChannels, w: width, h: height)
    }
}
