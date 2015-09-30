//
//  fixXtorrent.m
//  fix-Xtorrent
//
//  Created by Enrico "cHoco" Ghirardi on 1/10/15.
//  Copyright (c) 2015 cHoco. All rights reserved.
//

#import "fixXtorrent.h"
#import "JRSwizzle/JRSwizzle.h"

@implementation fixXtorrent

+ (void)load {
    [NSClassFromString(@"TorrentLine")
        jr_swizzleMethod:@selector(writeTorrentPlist)
              withMethod:@selector(fixedWriteTorrentPlist)
                   error:NULL];
}

@end

@implementation NSObject(TorrentLine)

- (void)fixedWriteTorrentPlist {
    [(TorrentLine*)self setTorrentAddress:@""];
    return [self fixedWriteTorrentPlist];
}

@end
