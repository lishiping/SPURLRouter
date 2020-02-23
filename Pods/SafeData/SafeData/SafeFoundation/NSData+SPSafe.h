//
//  NSData+SPSafe.h
//  e-mail:83118274@qq.com
//
//  Created by lishiping on 16/11/11.
//  Copyright (c) 2016年 lishiping. All rights reserved.
//
//If you think this open source library is of great help to you, please open the URL to click the Star,your approbation can encourage me, the author will publish the better open source library for guys again
//如果您认为本开源库对您很有帮助，请打开URL给作者点个赞，您的认可给作者极大的鼓励，作者还会发布更好的开源库给大家

//github address//https://github.com/lishiping/SPWebView
//github address//https://github.com/lishiping/SPDebugBar
//github address//https://github.com/lishiping/SPFastPush
//github address//https://github.com/lishiping/SPMacro
//github address//https://github.com/lishiping/SafeData
//github address//https://github.com/lishiping/SPCategory/
//github address//https://github.com/lishiping/SPBaseClass

#import <Foundation/Foundation.h>
#import "SPSafeDataMacro.h"

@interface NSData (SPSafe)

/********safe get object From JSONData method***/
//本类是方便JSON数据直接转为对象类型

// get object
- (nullable id)safe_JSONObj;

- (nullable id)safe_JSONObj_options:(NSJSONReadingOptions)opt;

// get string or nil
// 得到的数据是否是字符串，如果是则返回，否则返回空
- (nullable NSString *)safe_stringJSONObj;

// get array or nil
- (nullable NSArray *)safe_arrayJSONObj;

// get dictionary or nil
- (nullable NSDictionary *)safe_dictionaryJSONObj;

// get number or nil
- (nullable NSNumber *)safe_numberJSONObj;

// get JSONdata from oc object
// 对象转为data
+ (nullable NSData *)safe_JSONDataFromObject:(id _Nonnull)obj;

// get string from  data by encoding UTF8
//得到data的UTF8转码后的字符串
-(NSString *_Nullable)safe_getJSONString_NSUTF8StringEncoding;

// get string from  data by encoding
// 得到data转码后的字符串
-(NSString *_Nullable)safe_getJSONStringWithEncoding:(NSStringEncoding)encoding;

@end
