//
//  LJHookMgr.m
//  LJHookFramework
//
//  Created by james on 2018/5/10.
//  Copyright © 2018年 james. All rights reserved.
//

#import "LJHookMgr.h"

@implementation LJHookMgr
+ (void)load {
    NSLog(@"🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺");
    Method om = class_getInstanceMethod(objc_getClass("WCAccountLoginControlLogic"), @selector(onFirstViewLogin));
    Method on = class_getInstanceMethod(self, @selector(registBreak));
    
    method_exchangeImplementations(on, om);
}
- (void)registBreak {
    UIAlertController *al = [UIAlertController alertControllerWithTitle:@"消息" message:@"不可能,这辈子都不可能注册成功" preferredStyle:1];
    UIAlertAction *done = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    [al addAction:done];
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:al animated:YES completion:nil];
}
+ (void)hookClass:(Class)hookC oldMethod:(SEL) methodOld newMethod:(SEL) methodNew {
    Method om = class_getInstanceMethod(hookC, methodOld);
    Method on = class_getInstanceMethod(hookC, methodNew);
    method_exchangeImplementations(on, om);
}
@end
