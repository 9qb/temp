#import <UIKit/UIKit.h>

%hook TWAccountManager
-  (bool)isTurbo {
    return 1;
}
%end

%hook TWAppDelegate
-  (bool)isTurbo {
    return 1;
}
%end

%hook APMASIdentifierManager
-  (bool)isAdvertisingTrackingEnabled {
    return 1;
}
%end

%hook OMIDAmazonAdSession
-  (id)mainAdView {
    return @"FALSE";
}
%end

%hook OMIDAmazonAdSession
-  (void)setMainAdView:(id)arg1 {
    arg1 = NULL;
    return %orig;
}
%end

%hook OMIDAmazonAdSession
-  (id)initWithConfiguration:(id)arg1 adSessionContext:(id)arg2 error:(id *)arg3 {
    arg2 = NULL;
    arg1 = NULL;
    return %orig;
}
%end

%hook OMIDAmazonAdSession
-  (id)adEventsPublisher {
    return NULL;
}
%end

%hook OMIDAmazonAdSession
-  (id)mediaEventsPublisher {
    return NULL;
}
%end

%hook OMIDAmazonAdSession
-  (id)configuration {
    return NULL;
}
%end

%hook OMIDAmazonAdSession
-  (id)bridge {
    return NULL;
}
%end

%hook OMIDAmazonBridge
-  (void)publishStartEventWithAdSessionId:(id)arg1 JSONContext:(id)arg2 verificationParameters:(id)arg3 injectedResources:(id)arg4 {
    arg1 = NULL;
    arg2 = NULL;
    arg3 = NULL;
    arg4 = NULL;
    return %orig;
}
%end

%hook OMIDAmazonAdSessionRegistry
-  (void)removeAdSession:(id)arg1 {
    arg1 = @"TRUE";
    return %orig;
}
%end

%hook APMRemoteConfig
-  (bool)personalizedAdsFeatureEnabled {
    return 1;
}
%end

%hook OMIDAmazonAdSessionConfiguration
-  (bool)isolateVerificationScripts {
    return 0;
}
%end

%hook _TtC6TwitchP33_CA6083BF3ECA19BFFCD192251DFF79AB30PrimeVideoLoginWithAmazonScope
-  (id)name {
    return NULL;
}
%end

%hook OMIDAmazonAdSession
-  (void)removeFriendlyObstruction:(id)arg1 {
    arg1 = NULL;
    return %orig;
}
%end

%hook OMIDAmazonAdSession
-  (void)internal_removeFriendlyObstruction:(id)arg1 {
    arg1 = NULL;
    return %orig;
}
%end

%hook OMIDAmazonBridge
-  (void)publishInitWithConfiguration:(id)arg1 {
    arg1 = NULL;
    return %orig;
}
%end

%hook OMIDAmazonStatePublisher
-  (void)publishEmptyStateHierarchy:(id)arg1 toSessions:(id)arg2 timestamp:(float)arg3 {
    arg1 = NULL;
    arg2 = NULL;
    arg3 = 0;
    return %orig;
}
%end

%hook OMIDAmazonStatePublisher
-  (void)publishNativeViewStateHierarchy:(id)arg1 toSessions:(id)arg2 timestamp:(float)arg3 {
    arg1 = NULL;
    arg2 = NULL;
    arg3 = 0;
    return %orig;
}
%end

%hook OMIDAmazonStatePublisher
-  (void)publishEmptyStateToSessions:(id)arg1 timestamp:(float)arg2 {
    arg1 = NULL;
    arg2 = 0;
    return %orig;
}
%end

%hook OMIDAmazonStatePublisher
-  (void)publishState:(id)arg1 toSessions:(id)arg2 timestamp:(float)arg3 {
    arg1 = NULL;
    arg2 = NULL;
    arg3 = 0;
    return %orig;
}
%end

%hook OMIDAmazonStatePublisher
-  (id)initWithAdSessionRegistry:(id)arg1 {
    return NULL;
}
%end

%hook OMIDAmazonMediaEvents
-  (void)publishEventWithName:(id)arg1 parameters:(id)arg2 {
    arg1 = NULL;
    arg2 = NULL;
    return %orig;
}
%end

%hook OMIDAmazonTreeWalker
-  (id)statePublisher {
    return NULL;
}
%end

%hook OMIDAmazonMediaEvents
-  (void)publishEventWithName:(id)arg1 parameters:(id)arg2 requireStart:(bool)arg3 {
    arg1 = NULL;
    arg2 = NULL;
    arg3 = 0;
    return %orig;
}
%end

%hook OMIDAmazonAdSessionStatePublisher
-  (float)timestamp {
    return 0;
}
%end

%hook OMIDAmazonAdSessionStatePublisher
-  (unsigned long long)adState {
    return 0;
}
%end

%hook OMIDAmazonStatePublisher
-  (id)adSessionRegistry {
    return NULL;
}
%end

%hook OMIDAmazonAdSessionStatePublisher
-  (id)commandPublisher {
    return NULL;
}
%end

%hook OMIDAmazonAdSessionStatePublisher
-  (void)publishAppState:(id)arg1 {
    arg1 = NULL;
    return %orig;
}
%end

%hook OMIDAmazonAdSessionStatePublisher
-  (void)publishEmptyNativeViewStateWithHierarchy:(id)arg1 timestamp:(float)arg2 {
    arg1 = NULL;
    arg2 = 0;
    return %orig;
}
%end

%hook OMIDAmazonBridge
-  (void)publishLoadedEventWithVastProperties:(id)arg1 {
    arg1 = NULL;
    return %orig;
}
%end

%hook OMIDAmazonBridge
-  (void)publishMediaEventWithName:(id)arg1 parameters:(id)arg2 {
    arg1 = NULL;
    arg2 = NULL;
    return %orig;
}
%end

%hook OMIDAmazonAdSession
-  (bool)lastPublishedViewStateWasPopulated {
    return 0;
}
%end

%hook OMIDAmazonAdSession
-  (void)setLastPublishedViewStateWasPopulated:(bool)arg1 {
    arg1 = 0;
    return %orig;
}
%end

%hook OMIDAmazonBridge
-  (void)publishEventWithName:(id)arg1 parameters:(id)arg2 commandName:(id)arg3 {
    arg1 = NULL;
    arg2 = NULL;
    arg3 = NULL;
    return %orig;
}
%end

%hook OMIDAmazonAdSessionStatePublisher
-  (id)initWithCommandPublisher:(id)arg1 {
    return NULL;
}
%end

%hook OMIDAmazonAdSessionStatePublisher
-  (void)publishNativeViewStateWithHierarchy:(id)arg1 timestamp:(float)arg2 {
    arg1 = NULL;
    arg2 = 0;
    return %orig;
}
%end

%hook GCKMediaQueueContainerMetadata
-  (id)initWithContainerType:(long long)arg1 title:(id)arg2 sections:(id)arg3 containerImages:(id)arg4 containerDuration:(float)arg5 authors:(id)arg6 narrators:(id)arg7 publisher:(id)arg8 releaseDate:(id)arg9 {
    return NULL;
}
%end

%hook GCKMediaQueueContainerMetadata
-  (id)publisher {
    return NULL;
}
%end

%hook GCKMediaQueueContainerMetadataBuilder
-  (id)publisher {
    return %orig;
}
%end

%hook GCKMediaQueueContainerMetadataBuilder
-  (void)setPublisher:(id)arg1 {
    arg1 = NULL;
    return %orig;
}
%end

%hook GCKMDNSService
-  (bool)published {
    return 0;
}
%end

%hook GCKMDNSService
-  (void)setPublished:(bool)arg1 {
    arg1 = 0;
    return %orig;
}
%end

%hook GCKCastOptions
-  (bool)isStickyPublishingEnabled {
    return 0;
}
%end

%hook GCKCastOptions
-  (void)setStickyPublishingEnabled:(bool)arg1 {
    arg1 = 0;
    return %orig;
}
%end

%hook GCKDeviceProvider
-  (void)notifyDidPublishDevice:(id)arg1 {
    arg1 = NULL;
    return %orig;
}
%end

%hook GCKDeviceProvider
-  (void)notifyDidUnpublishDevice:(id)arg1 {
    arg1 = NULL;
    return %orig;
}
%end

%hook GCKDiscoveryManager
-  (void)deviceProvider:(id)arg1 didPublishDevice:(id)arg2 {
    arg1 = NULL;
    arg2 = NULL;
    return %orig;
}
%end

%hook GCKDiscoveryManager
-  (void)deviceProvider:(id)arg1 didUnpublishDevice:(id)arg2 {
    arg1 = NULL;
    arg2 = NULL;
    return %orig;
}
%end

%hook OMIDAmazonAdSession
-  (id)statePublisher {
    return NULL;
}
%end

%hook OMIDAmazonBridge
-  (void)publishCommand:(id)arg1 {
    arg1 = NULL;
    return %orig;
}
%end

%hook GCKCastDevicePublisher
-  (void)setDelegate:(id)arg1 {
    arg1 = NULL;
    return %orig;
}
%end

%hook GCKCastDevicePublisher
-  (long long)supportStateForDiscoveryCriteriaInAppSupportState:(id)arg1 {
    return 0;
}
%end

%hook GCKCastDevicePublisher
-  (long long)supportedStateForGuestMode {
    return 0;
}
%end

%hook OMIDAmazonAdSessionRegistry
-  (void)addStateObserver:(id)arg1 {
    arg1 = @"True";
    return %orig;
}
%end

%hook _TtC6Twitch30SubscriptionBenefitsAdFreeView
-  (id)initWithCoder:(id)arg1 {
    return NULL;
}
%end

%hook _TtC6Twitch30SubscriptionBenefitsAdFreeView
-  (id)initWithFrame:(struct CGRect)arg1 themeManager:(id)arg2 {
    return NULL;
}
%end

%hook _TtCC6Twitch51SubscriptionBenefitsCarouselContainerViewControllerP33_6FB51EC18C2379FA3D173F8E96642E2821LoadingViewController
-  (id)initWithNibName:(id)arg1 bundle:(id)arg2 themeManager:(id)arg3 {
    return NULL;
}
%end

%hook TWAccountManager
-  (bool)hasSavedAccessToken {
    return 1;
}
%end

%hook TWAccountManager
-  (void)updateTurboStatus:(unsigned long long)arg1 {
    arg1 = 0;
    return %orig;
}
%end

%hook TWAccountManager
-  (unsigned long long)turboStatus {
    return 0;
}
%end

