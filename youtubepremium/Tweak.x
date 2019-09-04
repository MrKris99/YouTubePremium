%hook YTSingleVideoController 
-(bool) isCurrentlyBackgroundable
{
    return TRUE;
}
%end
