//
//  BLGetModuleObjectMethodDef.h
//  protocolTest
//
//  Created by 邰光源 on 2019/7/10.
//  Copyright © 2019 broadlink. All rights reserved.
//

#ifndef BLGetModuleObjectMethodDef_h
#define BLGetModuleObjectMethodDef_h

//获取用户信息prortocol
#define BL_GET_UIM_OBJ \
({ \
JSObjectionInjector *injector = [JSObjection defaultInjector]; \
NSObject <BLTestProtocol> *object = [injector getObject:@protocol(BLTestProtocol)]; \
(object); \
})

#endif /* BLGetModuleObjectMethodDef_h */
