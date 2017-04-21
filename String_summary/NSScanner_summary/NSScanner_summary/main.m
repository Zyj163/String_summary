//
//  main.m
//  NSScanner_summary
//
//  Created by ddn on 2017/4/20.
//  Copyright © 2017年 张永俊. All rights reserved.
//

#import <Foundation/Foundation.h>

void test01() {
	NSScanner *scanner = [[NSScanner alloc] initWithString:@"a1bb2.."];
	NSLog(@"=====scannerString:%@, location: %zd========", scanner.string, scanner.scanLocation);
	
	//从scanLocation开始直到非set中的字符
	scanner.scanLocation = 2;
	NSString *re1 = nil;
	NSCharacterSet *set = [NSCharacterSet characterSetWithCharactersInString:@"b"];
	BOOL r1 = [scanner scanCharactersFromSet:set intoString:&re1];
	NSLog(@"=====return:%zd, container:%@=====", r1, re1);
	
	//从scanLocation开始直到set中的字符
	scanner.scanLocation = 0;
	NSString *re2 = nil;
	BOOL r2 = [scanner scanUpToCharactersFromSet:set intoString:&re2];
	NSLog(@"=====return:%zd, container:%@=====", r2, re2);
	
	//http://blog.csdn.net/wangyanchang21/article/details/51744937
}

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		test01();
	}
	return 0;
}
