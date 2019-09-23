//
//  BLTestProtocolModule.m
//  protocolTest
//
//  Created by 邰光源 on 2019/7/10.
//  Copyright © 2019 broadlink. All rights reserved.
//

#import "BLTestProtocolModule.h"
#import "BLBandProtocolManager.h"

@implementation BLTestProtocolModule

+(void)load
{
    // 获取默认的injector
    JSObjectionInjector *injector = [JSObjection defaultInjector];
    // 如果默认的injector不存在，就新建一个
    injector = injector ? : [JSObjection createInjector];
    // 往这个injector里注册Module
    injector = [injector withModule:[[BLTestProtocolModule alloc] init]];
    // 设置该injector为默认的injector
    [JSObjection setDefaultInjector:injector];
}

- (void)configure {
    [self bindClass:[BLBandProtocolManager class] toProtocol:@protocol(BLTestProtocol)];
}

@end
