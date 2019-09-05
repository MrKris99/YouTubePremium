#define PREFERENCES_PATH "/var/mobile/Library/Preferences/com.krisanov.youtubepremiumprefs.plist"
#define GET_PREFERENCE_FOR_KEY(key) [[NSDictionary dictionaryWithContentsOfFile:@(PREFERENCES_PATH)] valueForKey:key]

%hook YTSingleVideoController 
-(bool) isCurrentlyBackgroundable
{   
    const BOOL isEnabled = [GET_PREFERENCE_FOR_KEY(@"Enabled") boolValue];    
    if (isEnabled)
    {
        return TRUE;
    }
    
    return %orig;
}
%end
