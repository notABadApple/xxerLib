//
//  XxerTableView.h
//  xxerLib
//
//  Created by Xxer on 2019/9/17.
//  Copyright © 2019 Xxer. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface XxerTableView : UITableView

@property (nonatomic, copy) void (^headRefreshingBlock)(void);

@end

NS_ASSUME_NONNULL_END
