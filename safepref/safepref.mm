#import <Preferences/Preferences.h>

@interface safeprefListController: PSListController {
}
@end

@implementation safeprefListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"safepref" target:self] retain];
	}
	return _specifiers;
}
-(void)respring {
    
    system("killall -9 SpringBoard");
    
}

-(void)safe {
    
    system("killall -SEGV SpringBoard");
    
}

@end


// vim:ft=objc
