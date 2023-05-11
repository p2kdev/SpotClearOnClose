@interface SPUISearchViewController : NSObject
  -(void)clearSearchResults;
@end

%hook SPUISearchViewController

  -(void)searchViewWillDismissWithReason:(unsigned long long)arg1
  {
    %orig;
    [self clearSearchResults];
    //[self didBeginEditing];
  }

%end
