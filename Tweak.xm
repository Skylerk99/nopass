%hook SBDeviceLockController
-(BOOL) deviceHasPasscodeSet {
	NSDictionary *pref = [[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.skylerk99.safepref.plist"];
		if( [[pref objectForKey:@"enabled"] boolValue] )
		{
		return NO;
		}
		else
		{
			return %orig;
		}
		[pref release];
}
%end

%hook SBControlCenterControler
-(BOOL) isAvailableWhileLocked {
	NSDictionary *pref = [[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.skylerk99.safepref.plist"];
		if( [[pref objectForKey:@"noCC"] boolValue] )
		{
		return YES;
		}
		else
		{
			return %orig;
		}
		[pref release];
}
%end

%hook ControlCenterListController
-(id) enabledInLockScreen:(id)arg {
	NSDictionary *pref = [[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.skylerk99.safepref.plist"];
		if( [[pref objectForKey:@"nun"] boolValue] )
		{
		return nil;
		arg = nil;
		}
		else
		{
			return %orig;
		}
		[pref release];
}
%end