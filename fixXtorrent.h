//
//  fixXtorrent.h
//  fix-Xtorrent
//
//  Created by Enrico "cHoco" Ghirardi on 1/10/15.
//  Copyright (c) 2015 cHoco. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface fixXtorrent : NSObject

@end

@interface TorrentLine : NSObject

-(void)setTorrentAddress:(NSString *)address;

@end
