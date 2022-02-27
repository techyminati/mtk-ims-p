.class public Lcom/mediatek/ims/internal/ImsVTProvider;
.super Landroid/telephony/ims/ImsVideoCallProvider;
.source "ImsVTProvider.java"

# interfaces
.implements Lcom/mediatek/ims/internal/VTSource$EventCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/ImsVTProvider$ConnectionEx;,
        Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;
    }
.end annotation


# static fields
.field public static final MODE_PAUSE_BY_HOLD:I = 0x1

.field public static final MODE_PAUSE_BY_TURNOFFCAM:I = 0x2

.field protected static final MSG_RECEIVE_CALL_SESSION_EVENT:I = 0x2c2

.field protected static final MSG_REQUEST_CALL_DATA_USAGE:I = 0xa

.field protected static final MSG_REQUEST_CAMERA_CAPABILITIES:I = 0x9

.field protected static final MSG_RESET_WRAPPER:I = 0x2c0

.field protected static final MSG_SEND_SESSION_MODIFY_REQUEST:I = 0x7

.field protected static final MSG_SEND_SESSION_MODIFY_RESPONSE:I = 0x8

.field protected static final MSG_SET_CALLBACK:I = 0x1

.field protected static final MSG_SET_CAMERA:I = 0x2

.field protected static final MSG_SET_DEVICE_ORIENTATION:I = 0x5

.field protected static final MSG_SET_DISPLAY_SURFACE:I = 0x4

.field protected static final MSG_SET_PAUSE_IMAGE:I = 0xb

.field protected static final MSG_SET_PREVIEW_SURFACE:I = 0x3

.field protected static final MSG_SET_UI_MODE:I = 0x2bd

.field protected static final MSG_SET_ZOOM:I = 0x6

.field protected static final MSG_SWITCH_FEATURE:I = 0x2be

.field protected static final MSG_SWITCH_ROAMING:I = 0x2bf

.field protected static final MSG_UPDATE_PROFILE:I = 0x2c1

.field public static final MTK_VILTE_ROTATE_DELAY:Ljava/lang/String; = "persist.vendor.vt.rotate_delay"

.field public static final POSTEVENT_IGNORE_ID:I = -0xa

.field public static final REPLACE_PICTURE_PATH:Landroid/net/Uri;

.field public static final SESSION_EVENT_BAD_DATA_BITRATE:I = 0xfa8

.field public static final SESSION_EVENT_CALL_ABNORMAL_END:I = 0x3f1

.field public static final SESSION_EVENT_CALL_END:I = 0x3f0

.field public static final SESSION_EVENT_CAM_CAP_CHANGED:I = 0xfa7

.field public static final SESSION_EVENT_DATA_BITRATE_RECOVER:I = 0xfa9

.field public static final SESSION_EVENT_DATA_PATH_PAUSE:I = 0xfab

.field public static final SESSION_EVENT_DATA_PATH_RESUME:I = 0xfac

.field public static final SESSION_EVENT_DATA_USAGE_CHANGED:I = 0xfa6

.field public static final SESSION_EVENT_DEFAULT_LOCAL_SIZE:I = 0xfad

.field public static final SESSION_EVENT_ERROR_CAMERA_CRASHED:I = 0x1f43

.field public static final SESSION_EVENT_ERROR_CAMERA_SET_IGNORED:I = 0x1f46

.field public static final SESSION_EVENT_ERROR_CODEC:I = 0x1f44

.field public static final SESSION_EVENT_ERROR_REC:I = 0x1f45

.field public static final SESSION_EVENT_ERROR_SERVER_DIED:I = 0x1f42

.field public static final SESSION_EVENT_ERROR_SERVICE:I = 0x1f41

.field public static final SESSION_EVENT_GET_CAP:I = 0xfae

.field public static final SESSION_EVENT_GET_CAP_WITH_SIM:I = 0xfb3

.field public static final SESSION_EVENT_GET_SENSOR_INFO:I = 0xfb2

.field public static final SESSION_EVENT_HANDLE_CALL_SESSION_EVT:I = 0xfa3

.field public static final SESSION_EVENT_LOCAL_BUFFER:I = 0xfaf

.field public static final SESSION_EVENT_LOCAL_BW_READY_IND:I = 0x3f5

.field public static final SESSION_EVENT_LOCAL_SIZE_CHANGED:I = 0xfa5

.field public static final SESSION_EVENT_PACKET_LOSS_RATE:I = 0xfb4

.field public static final SESSION_EVENT_PACKET_LOSS_RATE_HIGH:I = 0xfb5

.field public static final SESSION_EVENT_PACKET_LOSS_RATE_LOW:I = 0xfb7

.field public static final SESSION_EVENT_PACKET_LOSS_RATE_MEDIUM:I = 0xfb6

.field public static final SESSION_EVENT_PEER_CAMERA_CLOSE:I = 0x3f4

.field public static final SESSION_EVENT_PEER_CAMERA_OPEN:I = 0x3f3

.field public static final SESSION_EVENT_PEER_SIZE_CHANGED:I = 0xfa4

.field public static final SESSION_EVENT_RECEIVE_FIRSTFRAME:I = 0x3e9

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_COMPLETE:I = 0x3ef

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_NO_I_FRAME:I = 0x3ee

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_DURATION:I = 0x3ec

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_FILESIZE:I = 0x3ed

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_UNKNOWN:I = 0x3eb

.field public static final SESSION_EVENT_RECV_CANCEL_SESSION_IND:I = 0xfaa

.field public static final SESSION_EVENT_RECV_SESSION_CONFIG_REQ:I = 0xfa1

.field public static final SESSION_EVENT_RECV_SESSION_CONFIG_RSP:I = 0xfa2

.field public static final SESSION_EVENT_RESTART_CAMERA:I = 0xfb1

.field public static final SESSION_EVENT_SNAPSHOT_DONE:I = 0x3ea

.field public static final SESSION_EVENT_START_COUNTER:I = 0x3f2

.field public static final SESSION_EVENT_UPLINK_STATE_CHANGE:I = 0xfb0

.field public static final SESSION_EVENT_WARNING_SERVICE_NOT_READY:I = 0x2329

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_APP:I = 0x0

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_DATA_OFF:I = 0x1

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_DO_IMMEDIATELY:I = 0x4

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_MA_CRASH:I = 0x3

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_REJECT:I = 0x1

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_REJECT_PREVIOUS:I = 0x2

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_ROAMINGG:I = 0x2

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_SKIP:I = 0x3

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_WAIT:I = 0x0

.field public static final SESSION_MODIFY_CANCELED:I = 0xb

.field public static final SESSION_MODIFY_CANCEL_FAILED_BW:I = 0x7

.field public static final SESSION_MODIFY_CANCEL_FAILED_DISABLE:I = 0x3

.field public static final SESSION_MODIFY_CANCEL_FAILED_DOWNGRADE:I = 0x1

.field public static final SESSION_MODIFY_CANCEL_FAILED_INTERNAL:I = 0x5

.field public static final SESSION_MODIFY_CANCEL_FAILED_LOCAL:I = 0x6

.field public static final SESSION_MODIFY_CANCEL_FAILED_NORMAL:I = 0x2

.field public static final SESSION_MODIFY_CANCEL_FAILED_REMOTE:I = 0x4

.field public static final SESSION_MODIFY_CANCEL_FAILED_TIMEOUT:I = 0x8

.field public static final SESSION_MODIFY_CANCEL_OK:I = 0x0

.field public static final SESSION_MODIFY_INTERNALERROR:I = 0x2

.field public static final SESSION_MODIFY_INVALIDPARA:I = 0x8

.field public static final SESSION_MODIFY_INVIDEOACTION:I = 0xc

.field public static final SESSION_MODIFY_ISHOLD:I = 0x6

.field public static final SESSION_MODIFY_ISREINVITE:I = 0xd

.field public static final SESSION_MODIFY_LOCALREL:I = 0x5

.field public static final SESSION_MODIFY_NOACTIVESTATE:I = 0x4

.field public static final SESSION_MODIFY_NONEED:I = 0x7

.field public static final SESSION_MODIFY_OK:I = 0x0

.field public static final SESSION_MODIFY_REJECTBYREMOTE:I = 0xa

.field public static final SESSION_MODIFY_REQTIMEOUT:I = 0x9

.field public static final SESSION_MODIFY_RESULT_BW_MODIFYFAILED:I = 0x3

.field public static final SESSION_MODIFY_WRONGVIDEODIR:I = 0x1

.field static final TAG:Ljava/lang/String; = "ImsVT"

.field public static final UPLINK_STATE_PAUSE_RECORDING:I = 0x2

.field public static final UPLINK_STATE_RESUME_RECORDING:I = 0x3

.field public static final UPLINK_STATE_START_RECORDING:I = 0x1

.field public static final UPLINK_STATE_STOP_RECORDING:I = 0x0

.field public static final UPLINK_STATE_STOP_RECORDING_PREVIEW:I = 0x4

.field public static final VTP_STATE_DATA_OFF:I = 0x1

.field public static final VTP_STATE_MA_CRASH:I = 0x4

.field public static final VTP_STATE_NORMAL:I = 0x0

.field public static final VTP_STATE_ROAMING:I = 0x2

.field public static final VT_PROVIDER_INVALIDE_ID:I = -0x2710

.field protected static mDefaultId:I

.field public static mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;


# instance fields
.field protected mCameraId:Ljava/lang/String;

.field protected mCurrentProfile:Landroid/telecom/VideoProfile;

.field public mDummySource:Lcom/mediatek/ims/internal/VTDummySource;

.field protected mDuringSessionRemoteRequestOperation:Z

.field protected mDuringSessionRequestOperation:Z

.field public mHasRequestCamCap:Z

.field protected mId:I

.field public mInitComplete:Z

.field protected mIsAudioCall:Z

.field protected mIsDataOff:Z

.field private mIsDestroying:Z

.field protected mIsDuringResetMode:Z

.field protected mIsMaCrashed:Z

.field protected mIsRoaming:Z

.field protected mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

.field protected final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;",
            ">;"
        }
    .end annotation
.end field

.field public mMode:I

.field protected mOrientation:I

.field protected mOrientationRunnable:Ljava/lang/Runnable;

.field public mPauseCount:I

.field protected mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

.field protected final mProviderHandler:Landroid/os/Handler;

.field protected mProviderHandlerThread:Landroid/os/HandlerThread;

.field protected mSessionOperationFlagLock:Ljava/lang/Object;

.field protected mSimId:I

.field public mSource:Lcom/mediatek/ims/internal/VTSource;

.field protected mState:I

.field protected mUplinkState:I

.field public mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOnByPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "mtk_vt_wrapper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 244
    :cond_0
    const-string v0, "content://PATH"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->REPLACE_PICTURE_PATH:Landroid/net/Uri;

    .line 276
    const/16 v0, -0x2710

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 279
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 343
    invoke-direct {p0}, Landroid/telephony/ims/ImsVideoCallProvider;-><init>()V

    .line 273
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    .line 274
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    .line 275
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 277
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    .line 285
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    .line 286
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    .line 287
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDuringResetMode:Z

    .line 288
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSessionOperationFlagLock:Ljava/lang/Object;

    .line 292
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsMaCrashed:Z

    .line 295
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsRoaming:Z

    .line 298
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDataOff:Z

    .line 301
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsAudioCall:Z

    .line 304
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    .line 305
    new-instance v3, Lcom/mediatek/ims/internal/VTDummySource;

    invoke-direct {v3}, Lcom/mediatek/ims/internal/VTDummySource;-><init>()V

    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDummySource:Lcom/mediatek/ims/internal/VTDummySource;

    .line 306
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    .line 307
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mHasRequestCamCap:Z

    .line 310
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseCount:I

    .line 311
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkState:I

    .line 312
    new-instance v3, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    const/16 v4, 0x140

    const/16 v5, 0xf0

    invoke-direct {v3, v4, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;-><init>(II)V

    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    .line 317
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCurrentProfile:Landroid/telecom/VideoProfile;

    .line 320
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDestroying:Z

    .line 323
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v4, 0x8

    const v5, 0x3f666666    # 0.9f

    invoke-direct {v3, v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    .line 339
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientation:I

    .line 340
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientationRunnable:Ljava/lang/Runnable;

    .line 344
    const-string v0, "ImsVT"

    const-string v2, "New ImsVTProvider without id"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/16 v0, -0x2710

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    .line 346
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    .line 348
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 350
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;->makeImsVTUsageManager()Lcom/mediatek/ims/internal/ImsVTUsageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;

    .line 352
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ProviderHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    .line 353
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 355
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProvider$1;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider$1;-><init>(Lcom/mediatek/ims/internal/ImsVTProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    .line 457
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProvider$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProvider$2;-><init>(Lcom/mediatek/ims/internal/ImsVTProvider;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientationRunnable:Ljava/lang/Runnable;

    .line 465
    return-void
.end method

.method public static native nFinalization(I)I
.end method

.method public static native nInitRefVTP()I
.end method

.method public static native nInitialization(II)I
.end method

.method public static native nRequestPeerConfig(ILjava/lang/String;)I
.end method

.method public static native nResponseLocalConfig(ILjava/lang/String;)I
.end method

.method public static native nSetCamera(II)I
.end method

.method public static native nSetCameraParameters(I[Lcom/mediatek/ims/internal/VTSource$Resolution;)I
.end method

.method public static native nSetCameraParametersOnly([Lcom/mediatek/ims/internal/VTSource$Resolution;)I
.end method

.method public static native nSetCameraParametersWithSim(II[Lcom/mediatek/ims/internal/VTSource$Resolution;)I
.end method

.method public static native nSetDeviceOrientation(II)I
.end method

.method public static native nSetDisplaySurface(ILandroid/view/Surface;)I
.end method

.method public static native nSetPreviewSurface(ILandroid/view/Surface;)I
.end method

.method public static native nSetUIMode(II)I
.end method

.method public static native nSnapshot(IILjava/lang/String;)I
.end method

.method public static native nStartRecording(IILjava/lang/String;J)I
.end method

.method public static native nStopRecording(I)I
.end method

.method public static native nSwitchFeature(III)I
.end method

.method public static postEventFromNative(IIIIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 16
    .param p0, "msg"    # I
    .param p1, "id"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "obj1"    # Ljava/lang/Object;
    .param p6, "obj2"    # Ljava/lang/Object;
    .param p7, "obj3"    # Ljava/lang/Object;

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    .line 1782
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordGet(I)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v5

    .line 1784
    .local v5, "vp":Lcom/mediatek/ims/internal/ImsVTProvider;
    if-nez v5, :cond_0

    const/16 v0, 0x1f42

    if-eq v1, v0, :cond_0

    const/16 v0, 0xfae

    if-eq v1, v0, :cond_0

    const/16 v0, 0xfb3

    if-eq v1, v0, :cond_0

    const/16 v0, -0xa

    if-eq v2, v0, :cond_0

    .line 1789
    const-string v0, "ImsVT"

    const-string v6, "Error: post event to Call is already release or has happen error before!"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    return-void

    .line 1793
    :cond_0
    const-string v0, "ImsVT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] [postEventFromNative]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    const/16 v0, 0xfa8

    if-eq v1, v0, :cond_20

    const/high16 v0, 0x10000

    packed-switch v1, :pswitch_data_0

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    .line 2359
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = UNKNOWB"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 2326
    :pswitch_0
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = MSG_ERROR_CAMERA_SET_IGNORED"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2329
    goto/16 :goto_c

    .line 2320
    :pswitch_1
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = MSG_ERROR_REC"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2323
    goto/16 :goto_c

    .line 2314
    :pswitch_2
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = MSG_ERROR_CODEC"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2317
    goto/16 :goto_c

    .line 2307
    :pswitch_3
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = MSG_ERROR_CAMERA_CRASHED"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleMaErrorProcess()V

    .line 2310
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2311
    goto/16 :goto_c

    .line 2288
    :pswitch_4
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = MSG_ERROR_SERVER_DIED"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->quitAllThread()V

    .line 2290
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordRemoveAll()V

    .line 2291
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateDefaultId()V

    .line 2295
    if-eqz v5, :cond_1

    .line 2297
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->release()V

    .line 2299
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2300
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2303
    :cond_1
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->reInitRefVTP()V

    .line 2304
    goto/16 :goto_c

    .line 2276
    :pswitch_5
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = MSG_ERROR_SERVICE"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->release()V

    .line 2281
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordRemove(I)V

    .line 2282
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateDefaultId()V

    .line 2284
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2285
    goto/16 :goto_c

    .line 2083
    :pswitch_6
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_PACKET_LOSS_RATE"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    move v0, v3

    .line 2089
    .local v0, "lossRate":I
    const-string v6, "ImsVT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Packet loss rate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    const/4 v6, 0x5

    if-ltz v0, :cond_2

    if-gt v0, v6, :cond_2

    .line 2092
    const-string v6, "ImsVT"

    const-string v7, "Packet loss rate low, notify: 4023"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    const/16 v6, 0xfb7

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 2095
    :cond_2
    const/16 v7, 0xa

    if-ge v6, v0, :cond_3

    if-gt v0, v7, :cond_3

    .line 2096
    const-string v6, "ImsVT"

    const-string v7, "Packet loss rate medium, notify: 4022"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    const/16 v6, 0xfb6

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 2099
    :cond_3
    if-ge v7, v0, :cond_4

    .line 2100
    const-string v6, "ImsVT"

    const-string v7, "Packet loss rate high, notify: 4021"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    const/16 v6, 0xfb5

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 2104
    :cond_4
    const-string v6, "ImsVT"

    const-string v7, "Packet loss rate incorrect"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    :goto_0
    const-string v6, "persist.vendor.vt.RTPInfo"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 2111
    .local v6, "RTP_DBG_ON":Z
    if-eqz v6, :cond_21

    .line 2112
    const/4 v7, -0x1

    mul-int/2addr v7, v0

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->changeCallDataUsage(J)V

    goto/16 :goto_c

    .line 2126
    .end local v0    # "lossRate":I
    .end local v6    # "RTP_DBG_ON":Z
    :pswitch_7
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_GET_CAP_WITH_SIM"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    sget-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-eqz v0, :cond_5

    .line 2130
    invoke-static {}, Lcom/mediatek/ims/internal/VTDummySource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    .local v0, "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    goto :goto_1

    .line 2132
    .end local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :cond_5
    invoke-static {}, Lcom/mediatek/ims/internal/VTSource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    .restart local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :goto_1
    move-object v6, v0

    .line 2134
    .end local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    .local v6, "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    if-nez v6, :cond_6

    .line 2135
    const-string v0, "ImsVT"

    const-string v7, "Error: sensor resolution = NULL"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    :cond_6
    const/4 v7, 0x0

    .line 2139
    .local v7, "major_sim_id":I
    move v10, v9

    .line 2142
    .local v10, "ImsCount":I
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getModemMultiImsCount()I

    move-result v0
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    move v10, v0

    .line 2145
    goto :goto_2

    .line 2143
    :catch_0
    move-exception v0

    .line 2144
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v11, "ImsVT"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getModemMultiImsCount with exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_2
    const-wide/16 v11, 0xc8

    if-gt v10, v9, :cond_8

    .line 2150
    :goto_3
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->isCapabilitySwitching()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2152
    :try_start_1
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2154
    :goto_4
    goto :goto_3

    .line 2153
    :catch_1
    move-exception v0

    goto :goto_4

    .line 2157
    :cond_7
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v0

    goto :goto_5

    .line 2160
    :cond_8
    move v0, v2

    .line 2163
    .end local v7    # "major_sim_id":I
    .local v0, "major_sim_id":I
    :goto_5
    move v7, v0

    .end local v0    # "major_sim_id":I
    .restart local v7    # "major_sim_id":I
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0, v7}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->waitSimStateStable(I)V

    .line 2165
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0, v7}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getSimCardState(I)I

    move-result v0

    const/16 v9, 0xb

    if-eq v0, v9, :cond_c

    .line 2170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "vendor.ril.iccid.sim"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2171
    .local v9, "iccid_prop":Ljava/lang/String;
    const-string v0, ""

    invoke-static {v9, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2172
    .local v0, "iccid":Ljava/lang/String;
    move-object v13, v0

    .line 2174
    .end local v0    # "iccid":Ljava/lang/String;
    .local v8, "count":I
    .local v13, "iccid":Ljava/lang/String;
    :goto_6
    const-string v0, ""

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v11, 0x32

    if-eqz v0, :cond_9

    if-ge v8, v11, :cond_9

    .line 2176
    const-wide/16 v11, 0xc8

    :try_start_2
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2178
    goto :goto_7

    .line 2177
    :catch_2
    move-exception v0

    .line 2179
    :goto_7
    const-string v0, ""

    invoke-static {v9, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2180
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 2183
    :cond_9
    const-string v0, "N/A"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    if-lt v8, v11, :cond_a

    goto :goto_8

    .line 2187
    :cond_a
    const-string v0, "ImsVT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SIM state READY, iccid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8    # "count":I
    .end local v9    # "iccid_prop":Ljava/lang/String;
    .end local v13    # "iccid":Ljava/lang/String;
    goto :goto_9

    .line 2184
    .restart local v8    # "count":I
    .restart local v9    # "iccid_prop":Ljava/lang/String;
    .restart local v13    # "iccid":Ljava/lang/String;
    :cond_b
    :goto_8
    const-string v0, "ImsVT"

    const-string v11, "SIM state ABSENT"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    const/4 v7, -0x1

    .line 2191
    .end local v8    # "count":I
    .end local v9    # "iccid_prop":Ljava/lang/String;
    .end local v13    # "iccid":Ljava/lang/String;
    :cond_c
    :goto_9
    invoke-static {v2, v7, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCameraParametersWithSim(II[Lcom/mediatek/ims/internal/VTSource$Resolution;)I

    .line 2192
    goto/16 :goto_c

    .line 2341
    .end local v6    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    .end local v7    # "major_sim_id":I
    .end local v10    # "ImsCount":I
    :pswitch_8
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_GET_SENSOR_INFO"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    invoke-static {}, Lcom/mediatek/ims/internal/VTSource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    .line 2344
    .local v0, "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    if-nez v0, :cond_d

    .line 2345
    const-string v6, "ImsVT"

    const-string v7, "Error: sensor resolution = NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    :cond_d
    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCameraParametersOnly([Lcom/mediatek/ims/internal/VTSource$Resolution;)I

    .line 2349
    goto/16 :goto_c

    .line 2353
    .end local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :pswitch_9
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_RESTART_CAMERA"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->restart()V

    .line 2356
    goto/16 :goto_c

    .line 2222
    :pswitch_a
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_UPLINK_STATE_CHANGE"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    iput v3, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkState:I

    .line 2225
    packed-switch v3, :pswitch_data_4

    .line 2264
    goto/16 :goto_c

    .line 2258
    :pswitch_b
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2259
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->stopRecordingAndPreview()V

    goto/16 :goto_c

    .line 2247
    :pswitch_c
    if-ne v4, v9, :cond_21

    .line 2248
    iget v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseCount:I

    sub-int/2addr v0, v9

    iput v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseCount:I

    .line 2251
    iget v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseCount:I

    if-nez v0, :cond_21

    .line 2252
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->startRecording()V

    goto/16 :goto_c

    .line 2237
    :pswitch_d
    if-ne v4, v9, :cond_21

    .line 2238
    iget v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseCount:I

    if-nez v0, :cond_e

    .line 2239
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->stopRecording()V

    .line 2242
    :cond_e
    iget v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseCount:I

    add-int/2addr v0, v9

    iput v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseCount:I

    goto/16 :goto_c

    .line 2234
    :pswitch_e
    goto/16 :goto_c

    .line 2227
    :pswitch_f
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2228
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->stopRecording()V

    .line 2229
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/mediatek/ims/internal/VTSource;->setRecordSurface(Landroid/view/Surface;)V

    goto/16 :goto_c

    .line 2213
    :pswitch_10
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_LOCAL_BUFFER"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->stopRecording()V

    .line 2216
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    move-object/from16 v6, p7

    check-cast v6, Landroid/view/Surface;

    invoke-virtual {v0, v6}, Lcom/mediatek/ims/internal/VTSource;->setRecordSurface(Landroid/view/Surface;)V

    .line 2217
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->startRecording()V

    .line 2218
    iput v8, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseCount:I

    .line 2219
    goto/16 :goto_c

    .line 2196
    :pswitch_11
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_GET_CAP"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    sget-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-eqz v0, :cond_f

    .line 2200
    invoke-static {}, Lcom/mediatek/ims/internal/VTDummySource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    .restart local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    goto :goto_a

    .line 2202
    .end local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :cond_f
    invoke-static {}, Lcom/mediatek/ims/internal/VTSource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    .line 2204
    .restart local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :goto_a
    if-nez v0, :cond_10

    .line 2205
    const-string v6, "ImsVT"

    const-string v7, "Error: sensor resolution = NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    :cond_10
    invoke-static {v2, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCameraParameters(I[Lcom/mediatek/ims/internal/VTSource$Resolution;)I

    .line 2209
    goto/16 :goto_c

    .line 2270
    .end local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :pswitch_12
    const-string v0, "ImsVT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "postEventFromNative : msg = SESSION_EVENT_DEFAULT_LOCAL_SIZE, W="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", H="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v3, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    .line 2272
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v4, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    .line 2273
    goto/16 :goto_c

    .line 2333
    :pswitch_13
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = EVENT_DATA_PATH_CHANGED"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    sget-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-nez v0, :cond_21

    .line 2336
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_c

    .line 1940
    :pswitch_14
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_RECV_CANCEL_SESSION_IND"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v6, p5

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v0

    .line 1944
    .local v0, "IndicationProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v5, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 1946
    invoke-virtual {v5, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 1947
    goto/16 :goto_c

    .line 2079
    .end local v0    # "IndicationProfile":Landroid/telecom/VideoProfile;
    :pswitch_15
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_DATA_USAGE_CHANGED"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    goto/16 :goto_c

    .line 2058
    :pswitch_16
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_LOCAL_SIZE_CHANGED"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    if-ne v0, v3, :cond_11

    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    if-ne v0, v4, :cond_11

    .line 2061
    const-string v0, "ImsVT"

    const-string v6, "local size no change => Do not notify!"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    goto/16 :goto_c

    .line 2065
    :cond_11
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v3, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    .line 2066
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v4, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    .line 2067
    const-string v0, "ImsVT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update preview size, w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", h="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iget-boolean v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mHasRequestCamCap:Z

    if-ne v9, v0, :cond_12

    .line 2071
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->onRequestCameraCapabilities()V

    goto/16 :goto_c

    .line 2073
    :cond_12
    const-string v0, "ImsVT"

    const-string v6, "Not request yet, just only update default w/h"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    goto/16 :goto_c

    .line 2053
    :pswitch_17
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_PEER_SIZE_CHANGED"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    invoke-virtual {v5, v3, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->changePeerDimensions(II)V

    .line 2055
    goto/16 :goto_c

    .line 2047
    :pswitch_18
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_HANDLE_CALL_SESSION_EVT"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2050
    goto/16 :goto_c

    .line 1950
    :pswitch_19
    const-string v11, "ImsVT"

    const-string v12, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_RSP"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    iget v11, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    if-ne v11, v0, :cond_13

    .line 1953
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_RSP (call end)"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    return-void

    .line 1957
    :cond_13
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v11, p6

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v0

    .line 1958
    .local v0, "responseProfile":Landroid/telecom/VideoProfile;
    const/4 v11, 0x2

    .line 1961
    .local v11, "state":I
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v12

    sget-object v13, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v13}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getUpgradeCancelFlag()I

    move-result v13

    if-ne v12, v13, :cond_15

    .line 1963
    const/16 v7, 0xc8

    .line 1965
    .end local v11    # "state":I
    .local v7, "state":I
    if-eq v3, v6, :cond_14

    packed-switch v3, :pswitch_data_5

    .line 1978
    const/16 v6, 0xc8

    .line 1980
    .end local v7    # "state":I
    .local v6, "state":I
    goto :goto_b

    .line 1970
    .end local v6    # "state":I
    .restart local v7    # "state":I
    :pswitch_1a
    const/16 v6, 0xc9

    .line 1972
    .end local v7    # "state":I
    .restart local v6    # "state":I
    goto :goto_b

    .line 1967
    .end local v6    # "state":I
    .restart local v7    # "state":I
    :pswitch_1b
    const/4 v6, 0x1

    .line 1968
    .end local v7    # "state":I
    .restart local v6    # "state":I
    goto :goto_b

    .line 1974
    .end local v6    # "state":I
    .restart local v7    # "state":I
    :cond_14
    const/16 v6, 0xca

    .line 1976
    .end local v7    # "state":I
    .restart local v6    # "state":I
    goto :goto_b

    .line 1985
    .end local v6    # "state":I
    .restart local v11    # "state":I
    :cond_15
    if-eqz v3, :cond_18

    if-eq v3, v6, :cond_17

    packed-switch v3, :pswitch_data_6

    packed-switch v3, :pswitch_data_7

    .line 2033
    const/4 v6, 0x2

    .end local v11    # "state":I
    .restart local v6    # "state":I
    goto :goto_b

    .line 2028
    .end local v6    # "state":I
    .restart local v11    # "state":I
    :pswitch_1c
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->reSendLastSessionModify()V

    .line 2029
    return-void

    .line 2016
    :pswitch_1d
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringNotAppDowngrade()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 2017
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->reSendLastSessionModify()V

    .line 2018
    return-void

    .line 2021
    :cond_16
    const/4 v6, 0x5

    .line 2023
    .end local v11    # "state":I
    .restart local v6    # "state":I
    goto :goto_b

    .line 2011
    .end local v6    # "state":I
    .restart local v11    # "state":I
    :pswitch_1e
    const/4 v6, 0x4

    .line 2012
    .end local v11    # "state":I
    .restart local v6    # "state":I
    goto :goto_b

    .line 2008
    .end local v6    # "state":I
    .restart local v11    # "state":I
    :pswitch_1f
    const/4 v6, 0x3

    .line 2009
    .end local v11    # "state":I
    .restart local v6    # "state":I
    goto :goto_b

    .line 2003
    .end local v6    # "state":I
    .restart local v11    # "state":I
    :cond_17
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->reSendLastSessionModify()V

    .line 2004
    return-void

    .line 1987
    :cond_18
    sget-object v12, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v13, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v12, v13}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOn(I)Z

    move-result v12

    if-eqz v12, :cond_19

    iget v12, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 1988
    invoke-virtual {v5, v12, v9}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v9

    if-nez v9, :cond_19

    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 1989
    invoke-virtual {v5, v9, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v9

    if-nez v9, :cond_19

    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 1990
    invoke-virtual {v5, v9, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1991
    :cond_19
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v6

    invoke-static {v6}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1993
    new-instance v6, Landroid/telecom/VideoProfile;

    invoke-direct {v6, v8, v7}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1994
    .local v6, "audioProfile":Landroid/telecom/VideoProfile;
    iput-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1995
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->reSendLastSessionModify()V

    .line 1996
    return-void

    .line 1999
    .end local v6    # "audioProfile":Landroid/telecom/VideoProfile;
    :cond_1a
    const/4 v6, 0x1

    .line 2000
    .end local v11    # "state":I
    .local v6, "state":I
    nop

    .line 2038
    :goto_b
    sget-object v7, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v8, p5

    check-cast v8, Ljava/lang/String;

    .line 2040
    invoke-virtual {v7, v8}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v7

    sget-object v8, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v9, p6

    check-cast v9, Ljava/lang/String;

    .line 2041
    invoke-virtual {v8, v9}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v8

    .line 2038
    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 2043
    goto/16 :goto_c

    .line 1884
    .end local v0    # "responseProfile":Landroid/telecom/VideoProfile;
    .end local v6    # "state":I
    :pswitch_20
    const-string v0, "ImsVT"

    const-string v11, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_REQ"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    new-instance v0, Landroid/telecom/VideoProfile;

    const/4 v11, 0x3

    invoke-direct {v0, v11, v7}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1888
    .local v0, "currentProfile":Landroid/telecom/VideoProfile;
    sget-object v11, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v12, p5

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v11

    .line 1891
    .local v11, "requestProfile":Landroid/telecom/VideoProfile;
    sget-object v12, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v13, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v12, v13}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOn(I)Z

    move-result v12

    if-eqz v12, :cond_1b

    iget v12, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 1892
    invoke-virtual {v5, v12, v9}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v12

    if-nez v12, :cond_1b

    iget v12, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 1893
    invoke-virtual {v5, v12, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v12

    if-nez v12, :cond_1b

    iget v12, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 1894
    invoke-virtual {v5, v12, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1895
    :cond_1b
    invoke-virtual {v11}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v6

    invoke-static {v6}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1897
    new-instance v6, Landroid/telecom/VideoProfile;

    invoke-direct {v6, v8, v7}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1898
    .local v6, "audioProfile":Landroid/telecom/VideoProfile;
    iput-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1900
    iget-object v7, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v5, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 1901
    const-string v7, "ImsVT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] [onSendSessionModifyRequest] Reject it by state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    return-void

    .line 1905
    .end local v6    # "audioProfile":Landroid/telecom/VideoProfile;
    :cond_1c
    invoke-virtual {v5, v8, v0, v11}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v6

    .line 1907
    .local v6, "decision":I
    if-ne v9, v6, :cond_1d

    .line 1909
    invoke-virtual {v5, v9}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 1910
    iget-object v7, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v5, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    goto/16 :goto_c

    .line 1912
    :cond_1d
    if-nez v6, :cond_1f

    .line 1914
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 1917
    invoke-virtual {v11}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v7

    invoke-static {v7}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 1919
    const-string v7, "ImsVT"

    const-string v8, "Do onSendSessionModifyResponse directly for not upgrade case"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    invoke-virtual {v5, v9}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 1922
    invoke-virtual {v5, v11}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    goto/16 :goto_c

    .line 1925
    :cond_1e
    invoke-virtual {v5, v9}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 1926
    invoke-virtual {v5, v11}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto/16 :goto_c

    .line 1931
    :cond_1f
    const-string v7, "ImsVT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ID="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "] [onReceiveSessionModifyRequest] should not in this case"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    invoke-virtual {v5, v9}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 1933
    invoke-virtual {v5, v11}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 1936
    goto/16 :goto_c

    .line 1878
    .end local v0    # "currentProfile":Landroid/telecom/VideoProfile;
    .end local v6    # "decision":I
    .end local v11    # "requestProfile":Landroid/telecom/VideoProfile;
    :pswitch_21
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_LOCAL_BW_READY_IND"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1881
    goto/16 :goto_c

    .line 1872
    :pswitch_22
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = MSG_PEER_CAMERA_CLOSE"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1875
    goto/16 :goto_c

    .line 1866
    :pswitch_23
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = MSG_PEER_CAMERA_OPEN"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1869
    goto/16 :goto_c

    .line 1860
    :pswitch_24
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = MSG_START_COUNTER"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1863
    goto/16 :goto_c

    .line 1843
    :pswitch_25
    const-string v6, "ImsVT"

    const-string v7, "postEventFromNative : msg = SESSION_EVENT_CALL_END / SESSION_EVENT_CALL_ABNORMAL_END"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/ims/internal/VTSource;->release()V

    .line 1849
    sget-object v6, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v6, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordRemove(I)V

    .line 1850
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateDefaultId()V

    .line 1852
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1854
    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 1856
    iput v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 1857
    goto :goto_c

    .line 1835
    :pswitch_26
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_COMPLETE"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1839
    goto :goto_c

    .line 1828
    :pswitch_27
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_NO_I_FRAME"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1832
    goto :goto_c

    .line 1821
    :pswitch_28
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_FILESIZE"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1825
    goto :goto_c

    .line 1814
    :pswitch_29
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_DURATION"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1818
    goto :goto_c

    .line 1808
    :pswitch_2a
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_UNKNOWN"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1811
    goto :goto_c

    .line 1802
    :pswitch_2b
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_SNAPSHOT_DONE"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1805
    goto :goto_c

    .line 1796
    :pswitch_2c
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_RECEIVE_FIRSTFRAME"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1799
    goto :goto_c

    .line 2118
    :cond_20
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_BAD_DATA_BITRATE"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    sget-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-nez v0, :cond_21

    .line 2121
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2362
    :cond_21
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfa1
        :pswitch_20
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xfaa
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1f41
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x7
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xc
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method protected static updateDefaultId()V
    .locals 2

    .line 666
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    sget v1, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordContain(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 667
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordSize()I

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordPopId()I

    move-result v0

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 669
    return-void

    .line 671
    :cond_0
    const/16 v0, -0x2710

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 673
    :cond_1
    return-void
.end method


# virtual methods
.method public addVideoProviderStateListener(Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;

    .line 1685
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1686
    return-void
.end method

.method public doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I
    .locals 4
    .param p1, "new_action"    # I
    .param p2, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 1471
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_7

    .line 1473
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1475
    const-string v1, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : from APP, reject due to during roaming"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    return v0

    .line 1479
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1481
    const-string v1, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : from APP, reject due to during MA crash"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    return v0

    .line 1485
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1487
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1489
    const-string v1, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : from APP, reject due to during data off and not downgrade"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    return v0

    .line 1494
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringSessionModify()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1496
    const/4 v1, 0x0

    .line 1498
    .local v1, "isCancelUpgrade":Z
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    sget-object v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getUpgradeCancelFlag()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 1500
    const-string v2, "ImsVT"

    const-string v3, "doSessionModifyDecision : new_action : from APP, isCancelUpgrade is true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    const/4 v1, 0x1

    .line 1504
    :cond_3
    if-eqz v1, :cond_5

    .line 1506
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1507
    const-string v2, "ImsVT"

    const-string v3, "doSessionModifyDecision : new_action : from APP, reject due to during App action"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    return v0

    .line 1511
    :cond_4
    const-string v0, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : from APP, send cancel request"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    const/4 v0, 0x4

    return v0

    .line 1518
    :cond_5
    const-string v2, "ImsVT"

    const-string v3, "doSessionModifyDecision : new_action : from APP, reject due to during App action"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    return v0

    .line 1523
    .end local v1    # "isCancelUpgrade":Z
    :cond_6
    const-string v0, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : from APP, wait"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    return v1

    .line 1527
    :cond_7
    const/4 v2, 0x2

    const/4 v3, 0x3

    if-ne v0, p1, :cond_d

    .line 1529
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1531
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : Data off, skip due to during roaming"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    return v3

    .line 1535
    :cond_8
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1537
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : Data off, skip due to during MA crash"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    return v3

    .line 1541
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1543
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : Data off, reject due to data off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    return v3

    .line 1547
    :cond_a
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringSessionModify()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1549
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1551
    const-string v0, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : Data off, wait for App action"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    return v1

    .line 1555
    :cond_b
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1557
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : Data off, reject previous due to data off downgrade"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    return v2

    .line 1563
    :cond_c
    const-string v0, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : Data off, wait"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    return v1

    .line 1567
    :cond_d
    if-ne v2, p1, :cond_13

    .line 1569
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1571
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : Roaming, skip due to during roaming"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    return v3

    .line 1575
    :cond_e
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1577
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : Roaming, skip due to during MA crash"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    return v3

    .line 1581
    :cond_f
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1583
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : Roaming, skip due to during data off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    return v3

    .line 1587
    :cond_10
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringSessionModify()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1589
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1591
    const-string v0, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : Roaming, wait for App action"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    return v1

    .line 1595
    :cond_11
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1597
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : Roaming, reject previous due to roaming downgrade"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    return v2

    .line 1603
    :cond_12
    const-string v0, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : Roaming, wait"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    return v1

    .line 1607
    :cond_13
    if-ne v3, p1, :cond_19

    .line 1609
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1611
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : MA crash, skip due to during roaming"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    return v3

    .line 1615
    :cond_14
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1617
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : MA crash, skip due to during MA crash"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    return v3

    .line 1621
    :cond_15
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1623
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : MA crash, skip due to during data off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    return v3

    .line 1627
    :cond_16
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringSessionModify()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1629
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1631
    const-string v0, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : MA crash, wait for App action"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    return v1

    .line 1635
    :cond_17
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1637
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : MA crash, reject previous due to MA crash"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    return v2

    .line 1643
    :cond_18
    const-string v0, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : MA crash, wait"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    return v1

    .line 1649
    :cond_19
    const-string v0, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : wait"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    return v1
.end method

.method public getDataOff()Z
    .locals 1

    .line 557
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDataOff:Z

    return v0
.end method

.method public getDuringSessionRemoteRequest()Z
    .locals 1

    .line 535
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    return v0
.end method

.method public getDuringSessionRequest()Z
    .locals 1

    .line 523
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    return v0
.end method

.method public getId()I
    .locals 1

    .line 479
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    return v0
.end method

.method public getIsAudioCall()Z
    .locals 1

    .line 579
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsAudioCall:Z

    return v0
.end method

.method public getMaCrash()Z
    .locals 1

    .line 546
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsMaCrashed:Z

    return v0
.end method

.method public getRoaming()Z
    .locals 1

    .line 568
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsRoaming:Z

    return v0
.end method

.method protected getSessionModifyAction(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I
    .locals 3
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 1748
    const/4 v0, -0x1

    .line 1752
    .local v0, "result":I
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1753
    const/4 v0, 0x1

    goto :goto_0

    .line 1754
    :cond_0
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1755
    const/4 v0, 0x0

    .line 1757
    :cond_1
    :goto_0
    return v0
.end method

.method public getSimId()I
    .locals 1

    .line 490
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    return v0
.end method

.method public getSource()Lcom/mediatek/ims/internal/VTSource;
    .locals 2

    .line 646
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    return-object v0

    .line 649
    :cond_0
    const-string v0, "ImsVT"

    const-string v1, "Get dummy vtsource"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDummySource:Lcom/mediatek/ims/internal/VTDummySource;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 494
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    return v0
.end method

.method public handleMaErrorProcess()V
    .locals 8

    .line 584
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [handleMaErrorProcess] start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 587
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [handleMaErrorProcess] call end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return-void

    .line 592
    :cond_0
    new-instance v0, Landroid/telecom/VideoProfile;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 593
    .local v0, "currentProfile":Landroid/telecom/VideoProfile;
    new-instance v3, Landroid/telecom/VideoProfile;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 595
    .local v3, "reqestProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {p0, v1, v0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v5

    .line 597
    .local v5, "decision":I
    const/4 v6, 0x1

    if-ne v6, v5, :cond_1

    .line 599
    const-string v1, "ImsVT"

    const-string v2, "[handleMaErrorProcess] : should not in this case"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 601
    :cond_1
    if-ne v2, v5, :cond_2

    .line 604
    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-direct {v1, v4, v2}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 606
    .local v1, "audioResponseProfile":Landroid/telecom/VideoProfile;
    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v7, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 607
    invoke-virtual {v7, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v7

    .line 606
    invoke-static {v2, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->nResponseLocalConfig(ILjava/lang/String;)I

    .line 608
    invoke-virtual {p0, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 610
    invoke-virtual {p0, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->setMaCrash(Z)V

    .line 611
    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 612
    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v4, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v4, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 614
    .end local v1    # "audioResponseProfile":Landroid/telecom/VideoProfile;
    goto :goto_0

    :cond_2
    if-ne v1, v5, :cond_3

    .line 616
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ID="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] [sendSessionModifyRequestByImsInternal] skip"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 618
    :cond_3
    if-nez v5, :cond_4

    .line 620
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 622
    invoke-virtual {p0, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->setMaCrash(Z)V

    .line 623
    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 624
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v2, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 627
    :cond_4
    :goto_0
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ID="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] [handleMaErrorProcess] Finish"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return-void
.end method

.method public hasState(II)Z
    .locals 1
    .param p1, "state"    # I
    .param p2, "vtp_state"    # I

    .line 502
    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isDuringNotAppDowngrade()Z
    .locals 1

    .line 1738
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1739
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1740
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1743
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1741
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected isDuringSessionModify()Z
    .locals 1

    .line 1730
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1733
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1731
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public notifyResume()V
    .locals 0

    .line 1445
    return-void
.end method

.method public notifyVideoPauseStateChange()V
    .locals 6

    .line 1694
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [notifyVideoPauseStateChange] Start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    const/4 v0, 0x0

    .line 1698
    .local v0, "isVideoStatePause":Z
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    if-nez v1, :cond_0

    .line 1699
    const/4 v0, 0x0

    goto :goto_0

    .line 1700
    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    if-ne v1, v2, :cond_1

    .line 1701
    const/4 v0, 0x1

    .line 1704
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;

    .line 1705
    .local v2, "listener":Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;
    if-eqz v2, :cond_2

    .line 1706
    invoke-interface {v2, v0}, Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;->onReceivePauseState(Z)V

    .line 1707
    const-string v3, "ImsVT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] [notifyVideoPauseStateChange] isVideoStatePause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    .end local v2    # "listener":Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;
    :cond_2
    goto :goto_1

    .line 1711
    :cond_3
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] [notifyVideoPauseStateChange] Finish"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    return-void
.end method

.method public notifyWifiUsageChange(J)V
    .locals 3
    .param p1, "usage"    # J

    .line 1717
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [notifyWifiUsageChange] Start, usage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;

    .line 1720
    .local v1, "listener":Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;
    if-eqz v1, :cond_0

    .line 1721
    invoke-interface {v1, p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;->onReceiveWiFiUsage(J)V

    .line 1723
    .end local v1    # "listener":Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;
    :cond_0
    goto :goto_0

    .line 1725
    :cond_1
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [notifyWifiUsageChange] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    return-void
.end method

.method public onError()V
    .locals 3

    .line 1657
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onError] Start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleMaErrorProcess()V

    .line 1660
    const/16 v0, 0x1f43

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1662
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onError] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    return-void
.end method

.method public onOpenFail()V
    .locals 3

    .line 1677
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onOpenFail] Start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1681
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onOpenFail] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    return-void
.end method

.method public onOpenSuccess()V
    .locals 3

    .line 1668
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onOpenSuccess] Start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1672
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onOpenSuccess] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    return-void
.end method

.method public onReceiveCallSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .line 769
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 770
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 771
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2c2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 772
    return-void
.end method

.method public onRequestCallDataUsage()V
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 732
    return-void
.end method

.method public onRequestCameraCapabilities()V
    .locals 2

    .line 727
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 728
    return-void
.end method

.method public onResetWrapper()V
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0x2c0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 760
    return-void
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 715
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 716
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 717
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 718
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 719
    return-void
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 722
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 723
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 724
    return-void
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 695
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 696
    return-void
.end method

.method public onSetDeviceOrientation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .line 707
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 708
    return-void
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 703
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 704
    return-void
.end method

.method public onSetPauseImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 735
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 736
    return-void
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 699
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 700
    return-void
.end method

.method public onSetUIMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 739
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2bd

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 740
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_0

    .line 741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDestroying:Z

    .line 743
    :cond_0
    return-void
.end method

.method public onSetZoom(F)V
    .locals 3
    .param p1, "value"    # F

    .line 711
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 712
    return-void
.end method

.method public onSwitchFeature(IZ)V
    .locals 3
    .param p1, "feature"    # I
    .param p2, "on"    # Z

    .line 746
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 747
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 748
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 749
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2be

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 750
    return-void
.end method

.method public onSwitchRoaming(Z)V
    .locals 3
    .param p1, "isRoaming"    # Z

    .line 753
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 754
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 755
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2bf

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 756
    return-void
.end method

.method public onUpdateProfile(I)V
    .locals 3
    .param p1, "state"    # I

    .line 763
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 764
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 765
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2c1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 766
    return-void
.end method

.method public quitThread()V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 643
    return-void
.end method

.method protected reSendLastSessionModify()V
    .locals 3

    .line 1762
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [reSendLastSessionModify] Profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v2}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1767
    goto :goto_0

    .line 1766
    :catch_0
    move-exception v0

    .line 1769
    :goto_0
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v1, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 1770
    return-void
.end method

.method public receiveCallSessionEventInternal(I)V
    .locals 3
    .param p1, "event"    # I

    .line 1429
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [receiveCallSessionEventInternal] Start, event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    const/16 v0, 0x84

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1433
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyResume()V

    .line 1434
    nop

    .line 1440
    :goto_0
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [receiveCallSessionEventInternal] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    return-void
.end method

.method public receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 1099
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1101
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1102
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->setState(I)V

    .line 1103
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setMaCrash(Z)V

    .line 1106
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 1107
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    .line 1108
    .local v0, "responseState":I
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1111
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->resetState(I)V

    goto :goto_1

    .line 1109
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->setState(I)V

    .line 1113
    :goto_1
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDataOff(Z)V

    .line 1116
    .end local v0    # "responseState":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1117
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->setState(I)V

    .line 1118
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setRoaming(Z)V

    .line 1121
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1122
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRequest(Z)V

    .line 1126
    :cond_5
    if-ne p1, v2, :cond_7

    .line 1127
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1128
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->setIsAudioCall(Z)V

    goto :goto_2

    .line 1130
    :cond_6
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setIsAudioCall(Z)V

    .line 1133
    :cond_7
    :goto_2
    return-void
.end method

.method public rejectSessionModifyInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 1137
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1138
    return-void
.end method

.method public removeVideoProviderStateListener(Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;

    .line 1689
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1690
    return-void
.end method

.method public requestCallDataUsageInternal()V
    .locals 3

    .line 1182
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onRequestCallDataUsage] Start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1186
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 1187
    return-void

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->requestCallDataUsage()Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    move-result-object v0

    .line 1192
    .local v0, "usage":Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    if-eqz v0, :cond_1

    .line 1193
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->changeCallDataUsage(J)V

    .line 1194
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyWifiUsageChange(J)V

    .line 1196
    :cond_1
    return-void
.end method

.method public requestCameraCapabilitiesInternal()V
    .locals 7

    .line 1142
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onRequestCameraCapabilities] Start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1146
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 1147
    return-void

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1151
    const-string v0, "ImsVT"

    const-string v1, "onRequestCameraCapabilities: not set camera yet"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    return-void

    .line 1155
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1156
    .local v0, "zoom_max":F
    const/4 v1, 0x0

    .line 1158
    .local v1, "zoom_support":Z
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v2}, Lcom/mediatek/ims/internal/VTSource;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 1159
    .local v2, "camera_cs":Landroid/hardware/camera2/CameraCharacteristics;
    if-nez v2, :cond_2

    .line 1160
    const-string v3, "ImsVT"

    const-string v4, "onRequestCameraCapabilities: camera_cs null! Use default value."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1162
    :cond_2
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1164
    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    const/4 v4, 0x1

    if-lez v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    move v1, v3

    .line 1166
    const-string v3, "ImsVT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] [onRequestCameraCapabilities] Width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v6, v6, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v6, v6, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " zoom_support: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " zoom_max: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    new-instance v3, Landroid/telecom/VideoProfile$CameraCapabilities;

    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v5, v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    iget-object v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v6, v6, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    invoke-direct {v3, v5, v6, v1, v0}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(IIZF)V

    .line 1173
    .local v3, "camCap":Landroid/telecom/VideoProfile$CameraCapabilities;
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 1175
    iput-boolean v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mHasRequestCamCap:Z

    .line 1177
    const-string v4, "ImsVT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] [onRequestCameraCapabilities] Finish"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    return-void
.end method

.method public resetState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 507
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetState old mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 511
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetState new mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void
.end method

.method public resetWrapperInternal()V
    .locals 3

    .line 1400
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onResetWrapper] Start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1404
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 1405
    return-void

    .line 1408
    :cond_0
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 1409
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setUIModeInternal(IZ)V

    .line 1412
    :cond_1
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onResetWrapper] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    return-void
.end method

.method protected sendFgBgSessionModifyRequestInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;IZ)V
    .locals 0
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "mode"    # I
    .param p4, "needNotify"    # Z

    .line 1011
    invoke-virtual {p0, p3, p4}, Lcom/mediatek/ims/internal/ImsVTProvider;->setUIModeInternal(IZ)V

    .line 1012
    return-void
.end method

.method public sendSessionModifyRequestByImsInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 9
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 1016
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [sendSessionModifyRequestByImsInternal] Start, fromProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", toProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1016
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 1020
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [sendSessionModifyRequestByImsInternal] call end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    return-void

    .line 1024
    :cond_0
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    .line 1025
    .local v0, "newState":I
    sget-object v1, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getRealRequest(I)I

    move-result v1

    .line 1027
    .local v1, "realNewState":I
    new-instance v2, Landroid/telecom/VideoProfile;

    .line 1029
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v3

    invoke-direct {v2, v1, v3}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1031
    .local v2, "newToProfile":Landroid/telecom/VideoProfile;
    const/4 v3, 0x1

    invoke-virtual {p0, v3, p1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v4

    .line 1033
    .local v4, "decision":I
    const/4 v5, 0x2

    if-ne v5, v4, :cond_1

    .line 1035
    new-instance v6, Landroid/telecom/VideoProfile;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v5}, Landroid/telecom/VideoProfile;-><init>(II)V

    move-object v5, v6

    .line 1037
    .local v5, "audioResponseProfile":Landroid/telecom/VideoProfile;
    iget v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v8, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v8, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->nResponseLocalConfig(ILjava/lang/String;)I

    .line 1038
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 1040
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDataOff(Z)V

    .line 1041
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1042
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v6, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v6, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 1044
    .end local v5    # "audioResponseProfile":Landroid/telecom/VideoProfile;
    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    if-ne v5, v4, :cond_2

    .line 1046
    const-string v3, "ImsVT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] [sendSessionModifyRequestByImsInternal] skip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1048
    :cond_2
    if-nez v4, :cond_3

    .line 1050
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 1052
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDataOff(Z)V

    .line 1053
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1054
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v5, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    goto :goto_0

    .line 1058
    :cond_3
    const-string v3, "ImsVT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] [sendSessionModifyRequestByImsInternal] should not in this case"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :goto_0
    const-string v3, "ImsVT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] [onSendSessionModifyRequest] Finish"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    return-void
.end method

.method public sendSessionModifyRequestInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 6
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 932
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->isImsFwkRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSendSessionModifyRequest] requst from IMS FWK, swith handle function"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider;->sendSessionModifyRequestByImsInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 937
    return-void

    .line 940
    :cond_0
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSendSessionModifyRequest] Start, fromProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", toProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 940
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 945
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_1

    .line 946
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSendSessionModifyRequest] call end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    return-void

    .line 950
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSessionModifyAction(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v0

    .line 951
    .local v0, "mode":I
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    .line 952
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->sendFgBgSessionModifyRequestInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;IZ)V

    .line 953
    return-void

    .line 957
    :cond_2
    sget-object v1, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOn(I)Z

    move-result v1

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 958
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 959
    invoke-virtual {p0, v1, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 960
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 961
    :cond_3
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 963
    invoke-virtual {p0, v4, p2, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->rejectSessionModifyInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 967
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] [onSendSessionModifyRequest] Reject it by state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    return-void

    .line 971
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v1

    .line 973
    .local v1, "decision":I
    if-ne v2, v1, :cond_5

    .line 975
    invoke-virtual {p0, v4, p2, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->rejectSessionModifyInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 980
    :cond_5
    if-ne v3, v1, :cond_6

    .line 982
    const-string v3, "ImsVT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] [onSendSessionModifyRequest] send request immediately"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRequest(Z)V

    .line 984
    iput-object p2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 985
    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v3, p2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    goto :goto_0

    .line 987
    :cond_6
    if-nez v1, :cond_7

    .line 989
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 991
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRequest(Z)V

    .line 992
    iput-object p2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 993
    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v3, p2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    goto :goto_0

    .line 997
    :cond_7
    const-string v2, "ImsVT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] [onSendSessionModifyRequest] should not in this case"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    invoke-virtual {p0, v4, p2, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->rejectSessionModifyInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1006
    :goto_0
    const-string v2, "ImsVT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] [onSendSessionModifyRequest] Finish"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    return-void
.end method

.method public sendSessionModifyResponseInternal(Landroid/telecom/VideoProfile;)V
    .locals 4
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 1067
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSendSessionModifyResponse] Start, responseProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1067
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1072
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 1073
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSendSessionModifyResponse] call end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    return-void

    .line 1077
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1078
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v2, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v2, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->nResponseLocalConfig(ILjava/lang/String;)I

    .line 1079
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1080
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->setIsAudioCall(Z)V

    goto :goto_0

    .line 1082
    :cond_1
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setIsAudioCall(Z)V

    goto :goto_0

    .line 1089
    :cond_2
    const-string v0, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] [onSendSessionModifyResponse] Already response, skip it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 1094
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSendSessionModifyResponse] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    return-void
.end method

.method public setCameraInternal(Ljava/lang/String;)V
    .locals 4
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 776
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetCamera] id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 780
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 781
    return-void

    .line 785
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDestroying:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 786
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetCamera] UI mode is destroying"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    return-void

    .line 790
    :cond_1
    const/4 v0, 0x0

    .line 792
    .local v0, "count":I
    if-nez p1, :cond_2

    .line 793
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mHasRequestCamCap:Z

    .line 796
    :cond_2
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 797
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] [onSetCamera] onSetCamera, not set camera when in BG, only save id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 800
    :cond_3
    if-eqz p1, :cond_8

    .line 804
    :goto_0
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 806
    const/16 v1, 0xa

    if-ge v0, v1, :cond_4

    .line 807
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] [onSetCamera] onSetCamera, Call hold or held, wait and retry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const-wide/16 v1, 0xc8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    goto :goto_1

    .line 835
    :catch_0
    move-exception v1

    .line 837
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 812
    :cond_4
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] [onSetCamera] onSetCamera, Call hold or held, ignore setCamera"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/16 v1, 0x1f46

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 814
    return-void

    .line 817
    :cond_5
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkState:I

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    :cond_6
    if-lez v0, :cond_7

    .line 819
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] [onSetCamera] onSetCamera, recording stopped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    return-void

    .line 824
    :cond_7
    sget-object v1, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->updateCameraUsage(I)V

    .line 827
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/internal/VTSource;->open(Ljava/lang/String;)V

    .line 828
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/VTSource;->showMe()V

    .line 829
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCamera(II)I

    .line 830
    goto :goto_2

    .line 841
    :cond_8
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/VTSource;->hideMe()V

    .line 842
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/VTSource;->close()V

    .line 845
    :goto_2
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    .line 847
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] [onSetCamera] Finish"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return-void
.end method

.method public setDataOff(Z)V
    .locals 3
    .param p1, "b"    # Z

    .line 551
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDataOff:Z

    .line 552
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataOff : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDataOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return-void
.end method

.method public setDeviceOrientationInternal(I)V
    .locals 4
    .param p1, "rotation"    # I

    .line 889
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetDeviceOrientation] Start, rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 892
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetDeviceOrientation] call end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    return-void

    .line 896
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 898
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientation:I

    if-eq v0, p1, :cond_1

    .line 900
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetDeviceOrientation] device orientation change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientation:I

    .line 904
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 906
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientationRunnable:Ljava/lang/Runnable;

    const-string v2, "persist.vendor.vt.rotate_delay"

    const/16 v3, 0x1f4

    .line 907
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    .line 906
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 910
    :cond_1
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetDeviceOrientation] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    return-void
.end method

.method public setDisplaySurfaceInternal(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 872
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetDisplaySurface] Start, surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 876
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 877
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetDisplaySurface] call end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    return-void

    .line 881
    :cond_0
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetDisplaySurface(ILandroid/view/Surface;)I

    .line 883
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetDisplaySurface] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    return-void
.end method

.method public setDuringSessionRemoteRequest(Z)V
    .locals 4
    .param p1, "b"    # Z

    .line 528
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSessionOperationFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_0
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    .line 530
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDuringSessionRemoteRequest : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    monitor-exit v0

    .line 532
    return-void

    .line 531
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDuringSessionRequest(Z)V
    .locals 4
    .param p1, "b"    # Z

    .line 516
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSessionOperationFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    :try_start_0
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    .line 518
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDuringSessionRequest : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    monitor-exit v0

    .line 520
    return-void

    .line 519
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setId(I)V
    .locals 3
    .param p1, "id"    # I

    .line 468
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setId id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    .line 471
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->setId(I)V

    .line 473
    sget v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 474
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 476
    :cond_0
    return-void
.end method

.method public setIsAudioCall(Z)V
    .locals 3
    .param p1, "result"    # Z

    .line 573
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsAudioCall:Z

    .line 574
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsAudioCall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsAudioCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return-void
.end method

.method public setMaCrash(Z)V
    .locals 3
    .param p1, "b"    # Z

    .line 540
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsMaCrashed:Z

    .line 541
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaCrash : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsMaCrashed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void
.end method

.method public setPauseImageInternal(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1200
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetPauseImage] Start, uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1204
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 1205
    return-void

    .line 1208
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/VTSource;->setReplacePicture(Landroid/net/Uri;)V

    .line 1210
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetPauseImage] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    return-void
.end method

.method public setPreviewSurfaceInternal(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 853
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetPreviewSurface] Start, surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 857
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 858
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetPreviewSurface] call end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return-void

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/VTSource;->setPreviewSurface(Landroid/view/Surface;)V

    .line 864
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetPreviewSurface(ILandroid/view/Surface;)I

    .line 866
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetPreviewSurface] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    return-void
.end method

.method public setRoaming(Z)V
    .locals 3
    .param p1, "b"    # Z

    .line 562
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsRoaming:Z

    .line 563
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRoaming : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void
.end method

.method public setSimId(I)V
    .locals 3
    .param p1, "simid"    # I

    .line 483
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimId mSimId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    .line 486
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->setSimId(I)V

    .line 487
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 498
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 499
    return-void
.end method

.method public setUIModeInternal(IZ)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "needNotify"    # Z

    .line 1217
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetUIMode] Start, mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 1220
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetUIMode] call end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    return-void

    .line 1224
    :cond_0
    const/4 v0, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_7

    if-eq p1, v1, :cond_5

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 1248
    :pswitch_0
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDuringResetMode:Z

    if-eqz v0, :cond_1

    .line 1249
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetUIMode] reset mode (voice call) should not recv BG, skip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    goto/16 :goto_1

    .line 1253
    :cond_1
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 1254
    if-eqz p2, :cond_2

    .line 1255
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyVideoPauseStateChange()V

    .line 1259
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->hideMe()V

    .line 1260
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->close()V

    .line 1262
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 1263
    goto :goto_1

    .line 1226
    :pswitch_1
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 1227
    if-eqz p2, :cond_3

    .line 1228
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyVideoPauseStateChange()V

    .line 1231
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1233
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->updateCameraUsage(I)V

    .line 1236
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/VTSource;->open(Ljava/lang/String;)V

    .line 1237
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->showMe()V

    .line 1238
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCamera(II)I

    goto :goto_0

    .line 1240
    :cond_4
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->hideMe()V

    .line 1241
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->close()V

    .line 1244
    :goto_0
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 1245
    goto :goto_1

    .line 1297
    :cond_5
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    if-ne v3, v0, :cond_6

    .line 1298
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->requestCallDataUsageInternal()V

    .line 1301
    :cond_6
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 1302
    iput-boolean v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDestroying:Z

    .line 1303
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->nFinalization(I)I

    .line 1305
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->quitThread()V

    .line 1306
    goto :goto_1

    .line 1267
    :cond_7
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    if-eq v0, v1, :cond_8

    .line 1268
    iput v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 1271
    :cond_8
    iput-boolean v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDuringResetMode:Z

    .line 1272
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/ims/internal/ImsVTProvider$3;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/ImsVTProvider$3;-><init>(Lcom/mediatek/ims/internal/ImsVTProvider;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1285
    .local v0, "resetModeRecoverThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1287
    if-eqz p2, :cond_9

    .line 1288
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyVideoPauseStateChange()V

    .line 1312
    .end local v0    # "resetModeRecoverThread":Ljava/lang/Thread;
    :cond_9
    :goto_1
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetUIMode] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setZoomInternal(F)V
    .locals 3
    .param p1, "value"    # F

    .line 916
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetZoom] Start, value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 920
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 921
    return-void

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/VTSource;->setZoom(F)V

    .line 926
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetZoom] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    return-void
.end method

.method public switchFeatureInternal(IZ)V
    .locals 3
    .param p1, "feature"    # I
    .param p2, "on"    # Z

    .line 1317
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSwitchFeature] Start, feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1321
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 1322
    return-void

    .line 1325
    :cond_0
    if-eqz p2, :cond_1

    .line 1326
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSwitchFeature(III)I

    .line 1327
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->resetState(I)V

    goto :goto_0

    .line 1330
    :cond_1
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSwitchFeature(III)I

    .line 1333
    :goto_0
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSwitchFeature] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    return-void
.end method

.method public switchRoamingInternal(Z)V
    .locals 7
    .param p1, "isRoaming"    # Z

    .line 1338
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSwitchRoaming] Start, phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1343
    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 1345
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->resetState(I)V

    goto :goto_0

    .line 1349
    :cond_0
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_1

    .line 1350
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSwitchRoaming] call end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    return-void

    .line 1355
    :cond_1
    new-instance v1, Landroid/telecom/VideoProfile;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1356
    .local v1, "currentProfile":Landroid/telecom/VideoProfile;
    new-instance v3, Landroid/telecom/VideoProfile;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1358
    .local v3, "reqestProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {p0, v0, v1, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v4

    .line 1360
    .local v4, "decision":I
    const/4 v5, 0x1

    if-ne v5, v4, :cond_2

    .line 1362
    const-string v0, "ImsVT"

    const-string v2, "onSwitchRoaming() : should not in this case"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    return-void

    .line 1365
    :cond_2
    if-ne v0, v4, :cond_3

    .line 1367
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    iget-object v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v0, v2, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1372
    invoke-virtual {p0, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->setRoaming(Z)V

    .line 1373
    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1374
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v2, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 1376
    return-void

    .line 1378
    :cond_3
    if-ne v2, v4, :cond_4

    .line 1380
    return-void

    .line 1382
    :cond_4
    if-nez v4, :cond_5

    .line 1384
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 1386
    invoke-virtual {p0, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->setRoaming(Z)V

    .line 1387
    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1388
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v2, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 1390
    invoke-virtual {p0, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->setRoaming(Z)V

    .line 1394
    .end local v1    # "currentProfile":Landroid/telecom/VideoProfile;
    .end local v3    # "reqestProfile":Landroid/telecom/VideoProfile;
    .end local v4    # "decision":I
    :cond_5
    :goto_0
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSwitchRoaming] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    return-void
.end method

.method public updateProfileInternal(I)V
    .locals 4
    .param p1, "state"    # I

    .line 1418
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [updateCurrentProfile] Start, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    new-instance v0, Landroid/telecom/VideoProfile;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1421
    .local v0, "newVideoprofile":Landroid/telecom/VideoProfile;
    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCurrentProfile:Landroid/telecom/VideoProfile;

    .line 1423
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] [updateCurrentProfile] Finish"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    return-void
.end method

.method public waitInitComplete()V
    .locals 2

    .line 655
    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_0

    .line 657
    :try_start_0
    const-string v0, "ImsVT"

    const-string v1, "Wait for initialization complete!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 659
    :catch_0
    move-exception v0

    .line 660
    :goto_1
    goto :goto_0

    .line 662
    :cond_0
    return-void
.end method

.method public waitSessionOperationComplete()V
    .locals 2

    .line 632
    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    if-ne v1, v0, :cond_0

    goto :goto_1

    .line 639
    :cond_0
    return-void

    .line 634
    :cond_1
    :goto_1
    :try_start_0
    const-string v0, "ImsVT"

    const-string v1, "Wait for Session operation complete!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 636
    :catch_0
    move-exception v0

    .line 637
    :goto_2
    goto :goto_0
.end method
