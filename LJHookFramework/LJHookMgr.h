//
//  LJHookMgr.h
//  LJHookFramework
//
//  Created by james on 2018/5/10.
//  Copyright © 2018年 james. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>
@interface LJHookMgr : NSObject
+ (void)hookClass:(Class)hookC oldMethod:(SEL) methodOld newMethod:(SEL) methodNew;
@end
