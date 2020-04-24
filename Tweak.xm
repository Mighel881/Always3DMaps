@interface MKMapView : UIView
  -(void)setMapType:(int)arg1;
  -(int)mapType;
@end

%hook MKMapView

  -(void)setMapType:(int)arg1
  {
    %orig(4);
  }

  -(int)mapType
  {
    return 4;
  }

  -(BOOL)canEnter3DMode
  {
    return YES;
  }

  -(void)_setMapType:(int)arg1 animated:(BOOL)arg2
  {
    arg1 = 4;
    %orig;
  }

  -(void)_setMapType:(int)arg1 onInit:(BOOL)arg2 animated:(BOOL)arg3 forceSetting:(BOOL)arg4
  {
    arg1 = 4;
    arg4 = YES;
    %orig;
  }

%end

%hook MapViewModeSelector

  -(int)selectedViewMode
  {
    return 2;
  }

  -(void)setSelectedViewMode:(int)arg1
  {
    %orig(2);
  }
%end

%hook VKMapView

  // -(BOOL)isChangingMapType
  // {
  //   return NO;
  // }

  -(BOOL)canEnter3DMode
  {
    return YES;
  }

  // -(int)mapType
  // {
  //   return 4;
  // }

  // -(void)setMapType:(int)arg1 animated:(BOOL)arg2
  // {
  //   arg1 = 0;
  //   %orig;
  // }
  //
  // -(void)setMapType:(int)arg1
  // {
  //   %orig(0);
  // }

  // -(BOOL)supportsMapType
  // {
  //   return YES;
  // }
  //
  -(void)map:(id)arg1 willTransitionFrom:(int)arg2 to:(int)arg3 duration:(CGFloat)arg4
  {
    arg3 = 0;
    return;
  }

%end
