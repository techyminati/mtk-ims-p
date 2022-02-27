.class public final Lcom/mediatek/ims/ril/ImsRILAdapter;
.super Lcom/mediatek/ims/ril/ImsBaseCommands;
.source "ImsRILAdapter.java"

# interfaces
.implements Lcom/mediatek/ims/ril/ImsCommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;,
        Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;,
        Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACK_WAKE_LOCK_TIMEOUT_MS:I = 0xc8

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT_MS:I = 0xea60

.field static final EVENT_ACK_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final EVENT_BLOCKING_RESPONSE_TIMEOUT:I = 0x5

.field static final EVENT_RADIO_PROXY_DEAD:I = 0x6

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field public static final FOR_ACK_WAKELOCK:I = 0x1

.field public static final FOR_WAKELOCK:I = 0x0

.field static final IMSRIL_LOGD:Z = true

.field static final IMSRIL_LOGV:Z = false

.field static final IMSRIL_LOG_TAG:Ljava/lang/String; = "IMS_RILA"

.field static final IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

.field static final IMS_RILA_LOGD:Z = true

.field public static final INVALID_WAKELOCK:I = -0x1

.field static final IRADIO_GET_SERVICE_DELAY_MILLIS:I = 0xfa0

.field static final PROPERTY_WAKE_LOCK_TIMEOUT:Ljava/lang/String; = "ro.ril.wake_lock_timeout"

.field static final RILJ_ACK_WAKELOCK_NAME:Ljava/lang/String; = "IMSRIL_ACK_WL"

.field static final RIL_HISTOGRAM_BUCKET_COUNT:I = 0x5

.field static mRilTimeHistograms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAckWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mAckWakeLockTimeout:I

.field volatile mAckWlSequenceNum:I

.field private mActiveWakelockWorkSource:Landroid/os/WorkSource;

.field private final mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

.field mContext:Landroid/content/Context;

.field private mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

.field mIsMobileNetworkSupported:Z

.field mLastNITZTimeInfo:[Ljava/lang/Object;

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field private mOpCI:Lcom/mediatek/ims/ril/OpImsCommandsInterface;

.field final mPhoneId:Ljava/lang/Integer;

.field private mRILDefaultWorkSource:Landroid/os/WorkSource;

.field mRadioIndication:Lcom/mediatek/ims/ril/ImsRadioIndication;

.field volatile mRadioProxy:Lvendor/mediatek/hardware/radio/V3_0/IRadio;

.field final mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field final mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

.field mRadioResponse:Lcom/mediatek/ims/ril/ImsRadioResponse;

.field mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/ril/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field final mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field final mWakeLockTimeout:I

.field volatile mWlSequenceNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 437
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    .line 483
    const-string v0, "imsrild1"

    const-string v1, "imsrild2"

    const-string v2, "imsrild3"

    const-string v3, "imsrild4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instanceId"    # I

    .line 779
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ril/ImsBaseCommands;-><init>(Landroid/content/Context;I)V

    .line 421
    new-instance v0, Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-direct {v0}, Lcom/android/internal/telephony/ClientWakelockTracker;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    .line 434
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    .line 435
    iput v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    .line 436
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    .line 443
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 454
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 461
    new-instance v1, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 469
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    .line 471
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ims-RIL: init phone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 784
    iput-object p1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mContext:Landroid/content/Context;

    .line 785
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 787
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 789
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsMobileNetworkSupported:Z

    .line 791
    new-instance v3, Lcom/mediatek/ims/ril/ImsRadioResponse;

    invoke-direct {v3, p0, p2}, Lcom/mediatek/ims/ril/ImsRadioResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioResponse:Lcom/mediatek/ims/ril/ImsRadioResponse;

    .line 792
    new-instance v3, Lcom/mediatek/ims/ril/ImsRadioIndication;

    invoke-direct {v3, p0, p2}, Lcom/mediatek/ims/ril/ImsRadioIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioIndication:Lcom/mediatek/ims/ril/ImsRadioIndication;

    .line 794
    new-instance v3, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    invoke-direct {v3, p0}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 795
    new-instance v3, Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    invoke-direct {v3, p0}, Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    .line 796
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 797
    .local v3, "pm":Landroid/os/PowerManager;
    const-string v4, "IMS_RILA"

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 798
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 799
    const-string v4, "IMSRIL_ACK_WL"

    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 800
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 801
    const-string v4, "ro.ril.wake_lock_timeout"

    const v6, 0xea60

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockTimeout:I

    .line 803
    const-string v4, "ro.ril.wake_lock_timeout"

    const/16 v6, 0xc8

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLockTimeout:I

    .line 805
    iput v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 806
    new-instance v4, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 807
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 811
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v1

    .line 813
    .local v1, "proxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ims-RIL: proxy = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    move v0, v5

    nop

    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 816
    invoke-static {p1, p2}, Lcom/mediatek/ims/ril/OpImsRILUtil;->makeCommandInterface(Landroid/content/Context;I)Lcom/mediatek/ims/ril/OpImsCommandsInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mOpCI:Lcom/mediatek/ims/ril/OpImsCommandsInterface;

    .line 817
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ril/ImsRILAdapter;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # I

    .line 399
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->clearWakeLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ril/ImsRILAdapter;I)Lcom/mediatek/ims/ril/RILRequest;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # I

    .line 399
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->findAndRemoveRequestFromList(I)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/ril/RILRequest;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 399
    invoke-static {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getResponseForTimedOutRILRequest(Lcom/mediatek/ims/ril/RILRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/ril/ImsRILAdapter;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 399
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/ril/ImsRILAdapter;Lcom/mediatek/ims/ril/RILRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 399
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/ims/ril/ImsRILAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 399
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->resetProxyAndRequestList()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/ims/ril/ImsRILAdapter;Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # Landroid/os/Message;

    .line 399
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    return-object v0
.end method

.method private acquireWakeLock(Lcom/mediatek/ims/ril/RILRequest;I)V
    .locals 7
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "wakeLockType"    # I

    .line 3817
    monitor-enter p1

    .line 3818
    :try_start_0
    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3819
    const-string v0, "IMS_RILA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to aquire wakelock for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    monitor-exit p1

    return-void

    .line 3823
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 3859
    const-string v0, "IMS_RILA"

    goto/16 :goto_2

    .line 3849
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3850
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3851
    iget v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    .line 3853
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3854
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 3855
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3856
    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 3857
    goto :goto_1

    .line 3856
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 3825
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3826
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3827
    iget v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 3828
    iget v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    .line 3830
    iget-object v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v1

    .line 3831
    .local v1, "clientId":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3832
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_1

    .line 3833
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_0

    .line 3835
    :cond_1
    iget-object v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    iput-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 3837
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3840
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mClientId:Ljava/lang/String;

    iget v4, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    iget v5, p1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    iget v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/ClientWakelockTracker;->startTracking(Ljava/lang/String;III)V

    .line 3843
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3844
    .local v2, "msg":Landroid/os/Message;
    iget v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 3845
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockTimeout:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3846
    .end local v1    # "clientId":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3847
    nop

    .line 3862
    :goto_1
    :try_start_4
    iput p2, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    .line 3863
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3864
    return-void

    .line 3846
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1

    .line 3859
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquiring Invalid Wakelock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3860
    monitor-exit p1

    return-void

    .line 3863
    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addRequest(Lcom/mediatek/ims/ril/RILRequest;)V
    .locals 3
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 820
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->acquireWakeLock(Lcom/mediatek/ims/ril/RILRequest;I)V

    .line 821
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 822
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mStartTimeMs:J

    .line 823
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    iget v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 824
    monitor-exit v0

    .line 825
    return-void

    .line 824
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addToRilHistogram(Lcom/mediatek/ims/ril/RILRequest;)V
    .locals 9
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 3966
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3967
    .local v0, "endTime":J
    iget-wide v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mStartTimeMs:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 3969
    .local v2, "totalTime":I
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v3

    .line 3970
    :try_start_0
    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget v5, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    .line 3971
    .local v4, "entry":Landroid/telephony/TelephonyHistogram;
    if-nez v4, :cond_0

    .line 3973
    new-instance v5, Landroid/telephony/TelephonyHistogram;

    const/4 v6, 0x1

    iget v7, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/4 v8, 0x5

    invoke-direct {v5, v6, v7, v8}, Landroid/telephony/TelephonyHistogram;-><init>(III)V

    move-object v4, v5

    .line 3975
    sget-object v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget v6, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3977
    :cond_0
    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyHistogram;->addTimeTaken(I)V

    .line 3978
    .end local v4    # "entry":Landroid/telephony/TelephonyHistogram;
    monitor-exit v3

    .line 3979
    return-void

    .line 3978
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private clearRequestList(IZ)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .line 3932
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3933
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3934
    .local v1, "count":I
    if-eqz p2, :cond_0

    .line 3935
    const-string v2, "IMS_RILA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearRequestList  mWakeLockCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mRequestList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3939
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3940
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/RILRequest;

    .line 3941
    .local v3, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz p2, :cond_1

    .line 3942
    const-string v4, "IMS_RILA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3943
    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3942
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3945
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/mediatek/ims/ril/RILRequest;->onError(ILjava/lang/Object;)V

    .line 3946
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 3947
    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 3939
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3949
    .end local v2    # "i":I
    .end local v3    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 3950
    .end local v1    # "count":I
    monitor-exit v0

    .line 3951
    return-void

    .line 3950
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearWakeLock(I)Z
    .locals 6
    .param p1, "wakeLockType"    # I

    .line 3905
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 3906
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 3907
    :try_start_0
    iget v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2

    return v1

    .line 3908
    :cond_0
    const-string v3, "IMS_RILA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NOTE: mWakeLockCount is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "at time of clearing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3910
    iput v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 3911
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3912
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTrackingAll()V

    .line 3913
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 3914
    monitor-exit v2

    return v0

    .line 3915
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3917
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 3918
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v2

    return v1

    .line 3919
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3920
    monitor-exit v2

    return v0

    .line 3921
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private constructGsmSendSmsRilRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;
    .locals 2
    .param p1, "smscPdu"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;

    .line 3674
    new-instance v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3675
    .local v0, "msg":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;->smscPdu:Ljava/lang/String;

    .line 3676
    if-nez p2, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    iput-object v1, v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;->pdu:Ljava/lang/String;

    .line 3677
    return-object v0
.end method

.method private decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V
    .locals 8
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 3867
    monitor-enter p1

    .line 3868
    :try_start_0
    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    packed-switch v0, :pswitch_data_0

    .line 3898
    const-string v0, "IMS_RILA"

    goto :goto_2

    .line 3894
    :pswitch_0
    goto/16 :goto_3

    .line 3870
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3871
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mClientId:Ljava/lang/String;

    iget v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    iget v4, p1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3873
    iget v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le v5, v7, :cond_0

    iget v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    sub-int/2addr v5, v7

    goto :goto_0

    .line 3871
    :cond_0
    move v5, v6

    :goto_0
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTracking(Ljava/lang/String;III)V

    .line 3874
    iget-object v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v1

    .line 3875
    .local v1, "clientId":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_2

    .line 3877
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->remove(Landroid/os/WorkSource;)Z

    .line 3878
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 3879
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 3881
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3884
    :cond_2
    iget v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    if-le v2, v7, :cond_3

    .line 3885
    iget v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    sub-int/2addr v2, v7

    iput v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    goto :goto_1

    .line 3887
    :cond_3
    iput v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 3888
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3890
    .end local v1    # "clientId":Ljava/lang/String;
    :goto_1
    monitor-exit v0

    .line 3891
    goto :goto_3

    .line 3890
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 3896
    :pswitch_2
    goto :goto_3

    .line 3898
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decrementing Invalid Wakelock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3900
    :goto_3
    const/4 v0, -0x1

    iput v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    .line 3901
    monitor-exit p1

    .line 3902
    return-void

    .line 3901
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findAndRemoveRequestFromList(I)Lcom/mediatek/ims/ril/RILRequest;
    .locals 3
    .param p1, "serial"    # I

    .line 3954
    const/4 v0, 0x0

    .line 3955
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3956
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ril/RILRequest;

    move-object v0, v2

    .line 3957
    if-eqz v0, :cond_0

    .line 3958
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3960
    :cond_0
    monitor-exit v1

    .line 3962
    return-object v0

    .line 3960
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getDeafultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 0
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 3657
    if-nez p1, :cond_0

    .line 3658
    iget-object p1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 3661
    :cond_0
    return-object p1
.end method

.method private getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    .locals 7
    .param p1, "result"    # Landroid/os/Message;

    .line 709
    iget-boolean v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsMobileNetworkSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 711
    return-object v1

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    return-object v0

    .line 719
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    aget-object v2, v2, v3

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->getService(Ljava/lang/String;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    .line 720
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    if-eqz v2, :cond_6

    .line 721
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 722
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    .line 721
    invoke-interface {v2, v3, v4, v5}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 724
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioResponse:Lcom/mediatek/ims/ril/ImsRadioResponse;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioIndication:Lcom/mediatek/ims/ril/ImsRadioIndication;

    invoke-interface {v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setResponseFunctionsIms(Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;)V

    .line 725
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioResponse:Lcom/mediatek/ims/ril/ImsRadioResponse;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioIndication:Lcom/mediatek/ims/ril/ImsRadioIndication;

    invoke-interface {v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 727
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    if-eqz v2, :cond_7

    .line 728
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queue size  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 731
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v3

    sub-int/2addr v3, v0

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 732
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(I)V

    .line 731
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 734
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queue size  after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 735
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 736
    const-string v4, "reset pending switch request"

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 738
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 739
    invoke-virtual {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 740
    .local v4, "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v5, v4, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 741
    .local v5, "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v6, v5, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_4

    .line 742
    iget-object v6, v5, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v1, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 743
    iget-object v6, v5, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 746
    :cond_4
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->resetSendChldRequest()V

    .line 747
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setPendingRequest(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 749
    .end local v3    # "i":I
    .end local v4    # "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v5    # "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    :cond_5
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    .line 752
    :cond_6
    const-string v2, "getRadioProxy: mRadioProxy == null"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 757
    :cond_7
    :goto_2
    goto :goto_3

    .line 754
    :catch_0
    move-exception v2

    .line 755
    .local v2, "e":Ljava/lang/Exception;
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    .line 756
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RadioProxy getService/setResponseFunctions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 759
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    if-nez v2, :cond_9

    .line 760
    if-eqz p1, :cond_8

    .line 761
    nop

    .line 762
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 761
    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 763
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 767
    :cond_8
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 769
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 768
    invoke-virtual {v1, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    .line 767
    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 773
    :cond_9
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    return-object v0
.end method

.method private static getResponseForTimedOutRILRequest(Lcom/mediatek/ims/ril/RILRequest;)Ljava/lang/Object;
    .locals 11
    .param p0, "rr"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 666
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 668
    :cond_0
    const/4 v0, 0x0

    .line 669
    .local v0, "timeoutResponse":Ljava/lang/Object;
    iget v1, p0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v2, 0x87

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 671
    :cond_1
    new-instance v1, Landroid/telephony/ModemActivityInfo;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x5

    new-array v8, v2, [I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    move-object v0, v1

    .line 675
    :goto_0
    return-object v0
.end method

.method public static getTelephonyRILTimingHistograms()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    .line 495
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v0

    .line 496
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 497
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 498
    new-instance v3, Landroid/telephony/TelephonyHistogram;

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    invoke-direct {v3, v4}, Landroid/telephony/TelephonyHistogram;-><init>(Landroid/telephony/TelephonyHistogram;)V

    .line 499
    .local v3, "entry":Landroid/telephony/TelephonyHistogram;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    .end local v3    # "entry":Landroid/telephony/TelephonyHistogram;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 501
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    move-object v0, v1

    .line 502
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    return-object v0

    .line 501
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;
    .locals 3
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 3665
    if-eqz p1, :cond_0

    .line 3666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3669
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V
    .locals 11
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 3322
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 3323
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v1

    .line 3325
    .local v1, "queueSize":I
    if-lez v1, :cond_5

    .line 3326
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->get()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 3327
    .local v2, "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v3, v2, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 3328
    .local v3, "rr2":Lcom/mediatek/ims/ril/RILRequest;
    iget v4, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v5, 0x31

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    .line 3330
    const-string v4, "DTMF queue isn\'t 0, first request is START, send stop dtmf and pending switch"

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3332
    const/4 v4, 0x1

    if-le v1, v4, :cond_0

    .line 3333
    const/4 v5, 0x2

    .local v5, "j":I
    goto :goto_0

    .line 3336
    .end local v5    # "j":I
    :cond_0
    move v5, v4

    .line 3338
    .restart local v5    # "j":I
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "queue size  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v8}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3339
    add-int/lit8 v7, v1, -0x1

    .local v7, "i":I
    :goto_1
    if-lt v7, v5, :cond_1

    .line 3340
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v8, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(I)V

    .line 3339
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 3342
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "queue size  after "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v9}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3343
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v8}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v8

    if-ne v8, v4, :cond_3

    .line 3345
    const-string v8, "add dummy stop dtmf request"

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3346
    const/16 v8, 0x32

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v8, v6, v9}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v8

    .line 3349
    .local v8, "rr3":Lcom/mediatek/ims/ril/RILRequest;
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, v8, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v9

    .line 3350
    .local v4, "myParam":[Ljava/lang/Object;
    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v9, v8, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v9

    .line 3352
    .local v9, "dqrr3":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v10, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v10}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->stop()V

    .line 3353
    iget-object v10, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v10, v9}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->add(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3354
    .end local v4    # "myParam":[Ljava/lang/Object;
    .end local v8    # "rr3":Lcom/mediatek/ims/ril/RILRequest;
    .end local v9    # "dqrr3":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    goto :goto_3

    .line 3359
    .end local v5    # "j":I
    .end local v7    # "i":I
    :cond_2
    const-string v4, "DTMF queue isn\'t 0, first request is STOP, penging switch"

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3360
    const/4 v5, 0x1

    .line 3361
    .restart local v5    # "j":I
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_2
    move v7, v4

    .end local v4    # "i":I
    .restart local v7    # "i":I
    if-lt v7, v5, :cond_3

    .line 3362
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(I)V

    .line 3361
    add-int/lit8 v4, v7, -0x1

    .end local v7    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 3368
    .end local v4    # "i":I
    .restart local v7    # "i":I
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 3369
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 3370
    .local v4, "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v8, v4, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 3371
    .local v8, "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v9, v8, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v9, :cond_4

    .line 3372
    iget-object v9, v8, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v9, v6, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3373
    iget-object v6, v8, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 3377
    .end local v4    # "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v8    # "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    :cond_4
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4, p1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 3378
    .local v4, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setPendingRequest(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3379
    .end local v2    # "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v3    # "rr2":Lcom/mediatek/ims/ril/RILRequest;
    .end local v4    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    goto :goto_4

    .line 3380
    .end local v5    # "j":I
    .end local v7    # "i":I
    :cond_5
    const-string v2, "DTMF queue is 0, send switch Immediately"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3381
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setSendChldRequest()V

    .line 3382
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 3383
    .local v2, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3385
    .end local v1    # "queueSize":I
    .end local v2    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :goto_4
    monitor-exit v0

    .line 3386
    return-void

    .line 3385
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 835
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->resetProxyAndRequestList()V

    .line 839
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 841
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 840
    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 839
    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 843
    return-void
.end method

.method private internalAddConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .param p1, "confCallId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callIdToAdd"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 3236
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 3237
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 3238
    const/16 v1, 0x82a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3242
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3243
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " confCallId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callIdToAdd ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3242
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3249
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2, p3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->addImsConferenceCallMember(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3253
    goto :goto_0

    .line 3251
    :catch_0
    move-exception v2

    .line 3252
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "addImsConferenceCallMember"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3255
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private internalImsEct(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 3296
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 3297
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 3298
    const/16 v1, 0x823

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3302
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3306
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->imsEctCommand(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3309
    goto :goto_0

    .line 3307
    :catch_0
    move-exception v2

    .line 3308
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "imsEctCommand"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3311
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private internalRemoveConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .param p1, "confCallId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callIdToRemove"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 3267
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 3268
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 3269
    const/16 v1, 0x82b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3273
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3274
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " confCallId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callIdToRemove ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3273
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3280
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2, p3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->removeImsConferenceCallMember(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3284
    goto :goto_0

    .line 3282
    :catch_0
    move-exception v2

    .line 3283
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "removeImsConferenceCallMember"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3286
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;
    .locals 1
    .param p1, "request"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 828
    invoke-static {p1, p2, p3}, Lcom/mediatek/ims/ril/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 829
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->addRequest(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 830
    return-object v0
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # I

    .line 4041
    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    packed-switch p0, :pswitch_data_7

    packed-switch p0, :pswitch_data_8

    packed-switch p0, :pswitch_data_9

    packed-switch p0, :pswitch_data_a

    sparse-switch p0, :sswitch_data_0

    .line 4146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown request>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4118
    :sswitch_0
    const-string v0, "CDMA_SMS_ACKNOWLEDGE_EX"

    return-object v0

    .line 4117
    :sswitch_1
    const-string v0, "RIL_REQUEST_SMS_ACKNOWLEDGE_EX"

    return-object v0

    .line 4116
    :sswitch_2
    const-string v0, "RIL_REQUEST_IMS_SEND_SMS_EX"

    return-object v0

    .line 4093
    :sswitch_3
    const-string v0, "SET_ECC_LIST"

    return-object v0

    .line 4092
    :sswitch_4
    const-string v0, "SET_ECC_SERVICE_CATEGORY"

    return-object v0

    .line 4111
    :sswitch_5
    const-string v0, "RIL_REQUEST_SET_CALL_INDICATION"

    return-object v0

    .line 4051
    :sswitch_6
    const-string v0, "GET_ACTIVITY_INFO"

    return-object v0

    .line 4055
    :sswitch_7
    const-string v0, "SHUTDOWN"

    return-object v0

    .line 4049
    :sswitch_8
    const-string v0, "EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 4050
    :sswitch_9
    const-string v0, "EXPLICIT_CALL_TRANSFER"

    return-object v0

    .line 4130
    :sswitch_a
    const-string v0, "QUERY_CLIP"

    return-object v0

    .line 4054
    :sswitch_b
    const-string v0, "SET_MUTE"

    return-object v0

    .line 4042
    :sswitch_c
    const-string v0, "ANSWER"

    return-object v0

    .line 4045
    :sswitch_d
    const-string v0, "DTMF"

    return-object v0

    .line 4053
    :sswitch_e
    const-string v0, "LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 4052
    :sswitch_f
    const-string v0, "HANGUP"

    return-object v0

    .line 4044
    :sswitch_10
    const-string v0, "DIAL"

    return-object v0

    .line 4142
    :pswitch_0
    const-string v0, "SETUP_XCAP_USER_AGENT_STRING"

    return-object v0

    .line 4144
    :pswitch_1
    const-string v0, "RIL_REQUEST_SET_RCS_UA_ENABLE"

    return-object v0

    .line 4141
    :pswitch_2
    const-string v0, "RIL_REQUEST_RESET_SUPP_SERV"

    return-object v0

    .line 4140
    :pswitch_3
    const-string v0, "RIL_REQUEST_GET_XCAP_STATUS"

    return-object v0

    .line 4080
    :pswitch_4
    const-string v0, "IMS_CONFIG_GET_RESOURCE_CAP"

    return-object v0

    .line 4078
    :pswitch_5
    const-string v0, "IMS_CONFIG_SET_RESOURCE_CAP"

    return-object v0

    .line 4076
    :pswitch_6
    const-string v0, "IMS_CONFIG_GET_PROVISION"

    return-object v0

    .line 4074
    :pswitch_7
    const-string v0, "IMS_CONFIG_SET_PROVISION"

    return-object v0

    .line 4072
    :pswitch_8
    const-string v0, "IMS_CONFIG_GET_FEATURE"

    return-object v0

    .line 4070
    :pswitch_9
    const-string v0, "IMS_CONFIG_SET_FEATURE"

    return-object v0

    .line 4086
    :pswitch_a
    const-string v0, "RIL_REQUEST_SET_IMS_BEARER_NOTIFICATION"

    return-object v0

    .line 4114
    :pswitch_b
    const-string v0, "RIL_REQUEST_SET_MD_IMSCFG"

    return-object v0

    .line 4139
    :pswitch_c
    const-string v0, "RIL_REQUEST_RUN_GBA"

    return-object v0

    .line 4138
    :pswitch_d
    const-string v0, "SET_CALL_FORWARD_IN_TIME_SLOT"

    return-object v0

    .line 4137
    :pswitch_e
    const-string v0, "QUERY_CALL_FORWARD_IN_TIME_SLOT"

    return-object v0

    .line 4135
    :pswitch_f
    const-string v0, "SET_COLR"

    return-object v0

    .line 4133
    :pswitch_10
    const-string v0, "SET_COLP"

    return-object v0

    .line 4113
    :pswitch_11
    const-string v0, "RIL_REQUEST_SET_VOICE_DOMAIN_PREFERENCE"

    return-object v0

    .line 4134
    :pswitch_12
    const-string v0, "GET_COLR"

    return-object v0

    .line 4132
    :pswitch_13
    const-string v0, "GET_COLP"

    return-object v0

    .line 4131
    :pswitch_14
    const-string v0, "SET_CLIP"

    return-object v0

    .line 4102
    :pswitch_15
    const-string v0, "IMS_VT_DIAL"

    return-object v0

    .line 4101
    :pswitch_16
    const-string v0, "IMS_DIAL"

    return-object v0

    .line 4099
    :pswitch_17
    const-string v0, "SET_IMS_REGISTRATION_REPORT"

    return-object v0

    .line 4100
    :pswitch_18
    const-string v0, "PULL_CALL"

    return-object v0

    .line 4097
    :pswitch_19
    const-string v0, "SET_WFC_PROFILE"

    return-object v0

    .line 4096
    :pswitch_1a
    const-string v0, "CANCEL_USSI"

    return-object v0

    .line 4095
    :pswitch_1b
    const-string v0, "SEND_USSI"

    return-object v0

    .line 4094
    :pswitch_1c
    const-string v0, "VT_DIAL_WITH_SIP_URI"

    return-object v0

    .line 4109
    :pswitch_1d
    const-string v0, "RIL_REQUEST_REMOVE_IMS_CONFERENCE_CALL_MEMBER"

    return-object v0

    .line 4107
    :pswitch_1e
    const-string v0, "RIL_REQUEST_ADD_IMS_CONFERENCE_CALL_MEMBER"

    return-object v0

    .line 4105
    :pswitch_1f
    const-string v0, "RIL_REQUEST_CONFERENCE_DIAL"

    return-object v0

    .line 4104
    :pswitch_20
    const-string v0, "RIL_REQUEST_SET_IMS_RTP_REPORT"

    return-object v0

    .line 4103
    :pswitch_21
    const-string v0, "IMS_EMERGENCY_DIAL"

    return-object v0

    .line 4090
    :pswitch_22
    const-string v0, "RESUME_CALL"

    return-object v0

    .line 4089
    :pswitch_23
    const-string v0, "HOLD_CALL"

    return-object v0

    .line 4088
    :pswitch_24
    const-string v0, "IMS_ECT"

    return-object v0

    .line 4087
    :pswitch_25
    const-string v0, "IMS_DEREG_NOTIFICATION"

    return-object v0

    .line 4084
    :pswitch_26
    const-string v0, "IMS_BEARER_DEACTIVATION_DONE"

    return-object v0

    .line 4082
    :pswitch_27
    const-string v0, "IMS_BEARER_ACTIVATION_DONE"

    return-object v0

    .line 4068
    :pswitch_28
    const-string v0, "SET_PROVISION_VALUE"

    return-object v0

    .line 4067
    :pswitch_29
    const-string v0, "GET_PROVISION_VALUE"

    return-object v0

    .line 4066
    :pswitch_2a
    const-string v0, "SET_IMSCFG"

    return-object v0

    .line 4065
    :pswitch_2b
    const-string v0, "VIDEO_CALL_ACCEPT"

    return-object v0

    .line 4064
    :pswitch_2c
    const-string v0, "SET_IMS_VIDEO_ENABLE"

    return-object v0

    .line 4063
    :pswitch_2d
    const-string v0, "SET_IMS_VOICE_ENABLE"

    return-object v0

    .line 4062
    :pswitch_2e
    const-string v0, "SET_VIWIFI_ENABLE"

    return-object v0

    .line 4061
    :pswitch_2f
    const-string v0, "SET_VILTE_ENABLE"

    return-object v0

    .line 4060
    :pswitch_30
    const-string v0, "SET_WFC_ENABLE"

    return-object v0

    .line 4059
    :pswitch_31
    const-string v0, "SET_VOLTE_ENABLE"

    return-object v0

    .line 4058
    :pswitch_32
    const-string v0, "SET_IMS_ENABLE"

    return-object v0

    .line 4047
    :pswitch_33
    const-string v0, "DTMF_STOP"

    return-object v0

    .line 4046
    :pswitch_34
    const-string v0, "DTMF_START"

    return-object v0

    .line 4129
    :pswitch_35
    const-string v0, "CHANGE_BARRING_PASSWORD"

    return-object v0

    .line 4128
    :pswitch_36
    const-string v0, "SET_FACILITY_LOCK"

    return-object v0

    .line 4127
    :pswitch_37
    const-string v0, "QUERY_FACILITY_LOCK"

    return-object v0

    .line 4126
    :pswitch_38
    const-string v0, "SET_CALL_WAITING"

    return-object v0

    .line 4125
    :pswitch_39
    const-string v0, "QUERY_CALL_WAITING"

    return-object v0

    .line 4122
    :pswitch_3a
    const-string v0, "SET_CALL_FORWARD"

    return-object v0

    .line 4121
    :pswitch_3b
    const-string v0, "QUERY_CALL_FORWARD_STATUS"

    return-object v0

    .line 4124
    :pswitch_3c
    const-string v0, "SET_CLIR"

    return-object v0

    .line 4123
    :pswitch_3d
    const-string v0, "GET_CLIR"

    return-object v0

    .line 4043
    :pswitch_3e
    const-string v0, "CONFERENCE"

    return-object v0

    .line 4057
    :pswitch_3f
    const-string v0, "SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_3f
        :pswitch_3e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2a
        :pswitch_37
        :pswitch_36
        :pswitch_35
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x31
        :pswitch_34
        :pswitch_33
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x815
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x827
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x837
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x84a
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x857
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x873
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x876
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_10
        0xc -> :sswitch_f
        0x12 -> :sswitch_e
        0x18 -> :sswitch_d
        0x28 -> :sswitch_c
        0x35 -> :sswitch_b
        0x37 -> :sswitch_a
        0x48 -> :sswitch_9
        0x63 -> :sswitch_8
        0x81 -> :sswitch_7
        0x87 -> :sswitch_6
        0x7e0 -> :sswitch_5
        0x7e2 -> :sswitch_4
        0x7ee -> :sswitch_3
        0x855 -> :sswitch_2
        0x87a -> :sswitch_1
        0x87c -> :sswitch_0
    .end sparse-switch
.end method

.method private resetProxyAndRequestList()V
    .locals 2

    .line 692
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    .line 695
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 697
    sget-object v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setRadioState(Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;)V

    .line 699
    invoke-static {}, Lcom/mediatek/ims/ril/RILRequest;->resetSerial()V

    .line 701
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->clearRequestList(IZ)V

    .line 706
    return-void
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "response"    # I

    .line 3982
    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_4

    const/16 v0, 0xbc7

    if-eq p0, v0, :cond_3

    const/16 v0, 0xbd0

    if-eq p0, v0, :cond_2

    const/16 v0, 0xbd3

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc0d

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    .line 4036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown response>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4035
    :pswitch_0
    const-string v0, "RIL_UNSOL_NO_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 4033
    :pswitch_1
    const-string v0, "UNSOL_CDMA_NEW_SMS_EX"

    return-object v0

    .line 4031
    :pswitch_2
    const-string v0, "RIL_UNSOL_RESPONSE_NEW_SMS_EX"

    return-object v0

    .line 4029
    :pswitch_3
    const-string v0, "RIL_UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT_EX"

    return-object v0

    .line 4018
    :pswitch_4
    const-string v0, "RIL_UNSOL_IMS_DATA_INFO_NOTIFY"

    return-object v0

    .line 4000
    :pswitch_5
    const-string v0, "RIL_UNSOL_ON_VOLTE_SUBSCRIPTION"

    return-object v0

    .line 4027
    :pswitch_6
    const-string v0, "IMS_CONFIG_LOADED"

    return-object v0

    .line 4023
    :pswitch_7
    const-string v0, "IMS_CONFIG_CHANGED"

    return-object v0

    .line 4025
    :pswitch_8
    const-string v0, "IMS_FEATURE_CHANGED"

    return-object v0

    .line 4021
    :pswitch_9
    const-string v0, "DYNAMIC_IMS_SWITCH_COMPLETE"

    return-object v0

    .line 4010
    :pswitch_a
    const-string v0, "IMS_DEREG_DONE"

    return-object v0

    .line 4017
    :pswitch_b
    const-string v0, "RIL_UNSOL_IMS_BEARER_INIT"

    return-object v0

    .line 4016
    :pswitch_c
    const-string v0, "IMS_BEARER_DEACTIVATION"

    return-object v0

    .line 4014
    :pswitch_d
    const-string v0, "IMS_BEARER_ACTIVATION"

    return-object v0

    .line 4012
    :pswitch_e
    const-string v0, "VOLTE_SETTING"

    return-object v0

    .line 4011
    :pswitch_f
    const-string v0, "ECT_INDICATION"

    return-object v0

    .line 4009
    :pswitch_10
    const-string v0, "IMS_DISABLE_START"

    return-object v0

    .line 4008
    :pswitch_11
    const-string v0, "IMS_ENABLE_START"

    return-object v0

    .line 4007
    :pswitch_12
    const-string v0, "IMS_DISABLE_DONE"

    return-object v0

    .line 4006
    :pswitch_13
    const-string v0, "IMS_ENABLE_DONE"

    return-object v0

    .line 4004
    :pswitch_14
    const-string v0, "IMS_REGISTRATION_INFO"

    return-object v0

    .line 4002
    :pswitch_15
    const-string v0, "IMS_EVENT_PACKAGE_INDICATION"

    return-object v0

    .line 3998
    :pswitch_16
    const-string v0, "ON_XUI"

    return-object v0

    .line 3997
    :pswitch_17
    const-string v0, "UNSOL_IMS_RTP_INFO"

    return-object v0

    .line 3996
    :pswitch_18
    const-string v0, "GET_PROVISION_DONE"

    return-object v0

    .line 3995
    :pswitch_19
    const-string v0, "ON_USSI"

    return-object v0

    .line 3994
    :pswitch_1a
    const-string v0, "VIDEO_CAPABILITY_INDICATOR"

    return-object v0

    .line 3992
    :pswitch_1b
    const-string v0, "CALLMOD_CHANGE_INDICATOR"

    return-object v0

    .line 3990
    :pswitch_1c
    const-string v0, "SIP_CALL_PROGRESS_INDICATOR"

    return-object v0

    .line 3988
    :pswitch_1d
    const-string v0, "ECONF_RESULT_INDICATION"

    return-object v0

    .line 3984
    :pswitch_1e
    const-string v0, "CALL_INFO_INDICATION"

    return-object v0

    .line 4019
    :cond_0
    const-string v0, "IMS_MULTIIMS_COUNT"

    return-object v0

    .line 4005
    :cond_1
    const-string v0, "SPEECH_CODEC_INFO"

    return-object v0

    .line 3987
    :cond_2
    const-string v0, "CIPHER_INDICATION"

    return-object v0

    .line 3986
    :cond_3
    const-string v0, "INCOMING_CALL_INDICATION"

    return-object v0

    .line 3983
    :cond_4
    const-string v0, "RADIO_STATE_CHANGED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xbd7
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xbe9
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc13
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc26
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc2c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "req"    # I
    .param p1, "ret"    # Ljava/lang/Object;

    .line 4151
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 4156
    :cond_0
    instance-of v0, p1, [I

    if-eqz v0, :cond_2

    .line 4157
    move-object v0, p1

    check-cast v0, [I

    .line 4158
    .local v0, "intArray":[I
    array-length v1, v0

    .line 4159
    .local v1, "length":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4160
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-lez v1, :cond_1

    .line 4161
    const/4 v3, 0x0

    .line 4162
    .local v3, "i":I
    add-int/lit8 v4, v3, 0x1

    .local v4, "i":I
    aget v3, v0, v3

    .end local v3    # "i":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4163
    :goto_0
    if-ge v4, v1, :cond_1

    .line 4164
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i":I
    aget v4, v0, v4

    .end local v4    # "i":I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4163
    move v4, v3

    goto :goto_0

    .line 4167
    .end local v3    # "i":I
    :cond_1
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4169
    .local v0, "s":Ljava/lang/String;
    goto :goto_2

    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "length":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 4170
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 4171
    .local v0, "strings":[Ljava/lang/String;
    array-length v1, v0

    .line 4172
    .restart local v1    # "length":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4173
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    if-lez v1, :cond_3

    .line 4174
    const/4 v3, 0x0

    .line 4175
    .restart local v3    # "i":I
    add-int/lit8 v4, v3, 0x1

    .restart local v4    # "i":I
    aget-object v3, v0, v3

    .end local v3    # "i":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4176
    :goto_1
    if-ge v4, v1, :cond_3

    .line 4177
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i":I
    aget-object v4, v0, v4

    .end local v4    # "i":I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4176
    move v4, v3

    goto :goto_1

    .line 4180
    .end local v3    # "i":I
    :cond_3
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4181
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4182
    .local v0, "s":Ljava/lang/String;
    goto :goto_2

    .line 4183
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "length":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4185
    .restart local v0    # "s":Ljava/lang/String;
    :goto_2
    return-object v0
.end method

.method private sendAck()V
    .locals 5

    .line 3639
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    const/16 v2, 0x320

    invoke-static {v2, v1, v0}, Lcom/mediatek/ims/ril/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 3641
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->acquireWakeLock(Lcom/mediatek/ims/ril/RILRequest;I)V

    .line 3642
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v1

    .line 3643
    .local v1, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v1, :cond_0

    .line 3645
    :try_start_0
    invoke-interface {v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->responseAcknowledgement()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3649
    :goto_0
    goto :goto_1

    .line 3646
    :catch_0
    move-exception v2

    .line 3647
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendAck"

    invoke-direct {p0, v0, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3648
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendAck: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 3651
    :cond_0
    const-string v2, "IMS_RILA"

    const-string v3, "Error trying to send ack, radioProxy = null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    :goto_1
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 3654
    return-void
.end method

.method private sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V
    .locals 7
    .param p1, "dqrr"    # Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    .line 3392
    iget-object v0, p1, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 3393
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v1

    .line 3394
    .local v1, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-nez v1, :cond_0

    .line 3395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get RadioProxy null. (["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3396
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3395
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 3397
    return-void

    .line 3400
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (by DtmfQueueRR)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3403
    const/4 v2, 0x0

    .line 3404
    .local v2, "params":[Ljava/lang/Object;
    :try_start_0
    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 3438
    new-instance v3, Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3422
    :sswitch_0
    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->explicitCallTransfer(I)V

    .line 3423
    goto/16 :goto_1

    .line 3412
    :sswitch_1
    iget-object v3, p1, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->params:[Ljava/lang/Object;

    move-object v2, v3

    .line 3413
    array-length v3, v2

    if-eq v3, v5, :cond_1

    .line 3414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " params error. ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3415
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3414
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3417
    :cond_1
    aget-object v3, v2, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3418
    .local v3, "gsmIndex":I
    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v1, v4, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->separateConnection(II)V

    .line 3420
    .end local v3    # "gsmIndex":I
    goto/16 :goto_1

    .line 3435
    :sswitch_2
    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->stopDtmf(I)V

    .line 3436
    goto/16 :goto_1

    .line 3425
    :sswitch_3
    iget-object v3, p1, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->params:[Ljava/lang/Object;

    move-object v2, v3

    .line 3426
    array-length v3, v2

    if-eq v3, v5, :cond_2

    .line 3427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " params error. ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3428
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3427
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    goto :goto_1

    .line 3430
    :cond_2
    aget-object v3, v2, v4

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 3431
    .local v3, "c":C
    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->startDtmf(ILjava/lang/String;)V

    .line 3433
    .end local v3    # "c":C
    goto :goto_1

    .line 3409
    :sswitch_4
    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->conference(I)V

    .line 3410
    goto :goto_1

    .line 3406
    :sswitch_5
    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->switchWaitingOrHoldingAndActive(I)V

    .line 3407
    goto :goto_1

    .line 3438
    :goto_0
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get RadioProxy null. (["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3439
    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3438
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3444
    .end local v2    # "params":[Ljava/lang/Object;
    :goto_1
    goto :goto_2

    .line 3441
    :catch_0
    move-exception v2

    .line 3442
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DtmfQueueRR("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3443
    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3442
    invoke-direct {p0, v0, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3445
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_5
        0x10 -> :sswitch_4
        0x31 -> :sswitch_3
        0x32 -> :sswitch_2
        0x34 -> :sswitch_1
        0x48 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public accept()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4229
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->accept(Landroid/os/Message;)V

    .line 4230
    return-void
.end method

.method public accept(Landroid/os/Message;)V
    .locals 5
    .param p1, "response"    # Landroid/os/Message;

    .line 944
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 945
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 946
    const/16 v1, 0x28

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 949
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 952
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->acceptCall(I)V

    .line 953
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilAnswer(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    goto :goto_0

    .line 954
    :catch_0
    move-exception v2

    .line 955
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "acceptCall"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 958
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public acceptVideoCall(II)V
    .locals 1
    .param p1, "videoMode"    # I
    .param p2, "callId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4341
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->acceptVideoCall(IILandroid/os/Message;)V

    .line 4342
    return-void
.end method

.method public acceptVideoCall(IILandroid/os/Message;)V
    .locals 4
    .param p1, "videoMode"    # I
    .param p2, "callId"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 971
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 972
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 973
    const/16 v1, 0x81c

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 977
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 978
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " videoMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 977
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 982
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->videoCallAccept(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    goto :goto_0

    .line 983
    :catch_0
    move-exception v2

    .line 984
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "acceptCall"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 987
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSmsEx(ZILandroid/os/Message;)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 3784
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 3785
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 3786
    const/16 v1, 0x87c

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3790
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3794
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 3795
    .local v2, "msg":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    xor-int/lit8 v3, p1, 0x1

    iput v3, v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;->errorClass:I

    .line 3796
    iput p2, v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;->smsCauseCode:I

    .line 3799
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3802
    goto :goto_0

    .line 3800
    :catch_0
    move-exception v3

    .line 3801
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "acknowledgeLastIncomingCdmaSms"

    invoke-direct {p0, v1, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3804
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 3764
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 3765
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 3766
    const/16 v1, 0x87a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3770
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3775
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->acknowledgeLastIncomingGsmSmsEx(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3778
    goto :goto_0

    .line 3776
    :catch_0
    move-exception v2

    .line 3777
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "acknowledgeLastIncomingGsmSms"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3780
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public cancelPendingUssi(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 2409
    const-string v0, "persist.vendor.ims.ussi.ap"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2411
    const-string v0, "Wrap cancelPendingUssi"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2414
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2415
    return-void

    .line 2418
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2419
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_1

    .line 2420
    const/16 v1, 0x82e

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2424
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2425
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2424
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2429
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->cancelUssi(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2432
    goto :goto_0

    .line 2430
    :catch_0
    move-exception v2

    .line 2431
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "cancelUssi"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2434
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 1103
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1104
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1105
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1108
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1111
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V

    .line 1113
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    return-void
.end method

.method public conferenceDial([Ljava/lang/String;IZLandroid/os/Message;)V
    .locals 8
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "result"    # Landroid/os/Message;

    .line 2244
    if-nez p1, :cond_0

    .line 2245
    const-string v0, "Participants MUST NOT be null in conferenceDial"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 2246
    return-void

    .line 2249
    :cond_0
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2250
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_2

    .line 2251
    const/16 v1, 0x829

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2255
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2256
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " clirMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isVideoCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2255
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2260
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;-><init>()V

    .line 2261
    .local v2, "dialInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    iput p2, v2, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;->clir:I

    .line 2262
    iput-boolean p3, v2, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;->isVideoCall:Z

    .line 2263
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p1, v4

    .line 2264
    .local v5, "dialNumber":Ljava/lang/String;
    iget-object v6, v2, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;->dialNumbers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2266
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "conferenceDial: dialNumber "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2263
    .end local v5    # "dialNumber":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2271
    :cond_1
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->conferenceDial(ILvendor/mediatek/hardware/radio/V3_0/ConferenceDial;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2275
    goto :goto_1

    .line 2272
    :catch_0
    move-exception v3

    .line 2273
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "IMS_RILA"

    const-string v5, "conferenceDial failed"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    const-string v4, "conferenceDial"

    invoke-direct {p0, v1, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2277
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "dialInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method protected constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V
    .locals 8
    .param p1, "msg"    # Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    .param p2, "pdu"    # [B

    .line 3684
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3685
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3688
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->teleserviceId:I

    .line 3689
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->isServicePresent:Z

    .line 3690
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->serviceCategory:I

    .line 3691
    iget-object v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v5

    iput v5, v2, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digitMode:I

    .line 3692
    iget-object v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v5

    iput v5, v2, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberMode:I

    .line 3693
    iget-object v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v5

    iput v5, v2, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberType:I

    .line 3694
    iget-object v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v5

    iput v5, v2, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberPlan:I

    .line 3695
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    .line 3696
    .local v2, "addrNbrOfDigits":I
    move v5, v3

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 3697
    iget-object v6, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3696
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3699
    .end local v5    # "i":I
    :cond_1
    iget-object v5, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v6

    iput v6, v5, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->subaddressType:I

    .line 3700
    iget-object v5, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v6

    int-to-byte v6, v6

    if-ne v6, v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    iput-boolean v4, v5, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->odd:Z

    .line 3701
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v4

    int-to-byte v4, v4

    .line 3702
    .local v4, "subaddrNbrOfDigits":I
    move v5, v3

    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v4, :cond_3

    .line 3703
    iget-object v6, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3702
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3706
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v5

    .line 3707
    .local v5, "bearerDataLength":I
    nop

    .local v3, "i":I
    :goto_4
    if-ge v3, v5, :cond_4

    .line 3708
    iget-object v6, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3707
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3715
    .end local v3    # "i":I
    :cond_4
    goto :goto_5

    .line 3710
    .end local v2    # "addrNbrOfDigits":I
    .end local v4    # "subaddrNbrOfDigits":I
    .end local v5    # "bearerDataLength":I
    :catch_0
    move-exception v2

    .line 3712
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSmsCdma: conversion from input stream to object failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3716
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_5
    return-void
.end method

.method protected convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 852
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public deregisterIms(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 1254
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->deregisterImsWithCause(ILandroid/os/Message;)V

    .line 1255
    return-void
.end method

.method public deregisterImsWithCause(ILandroid/os/Message;)V
    .locals 4
    .param p1, "cause"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1266
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1267
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1268
    const/16 v1, 0x822

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1272
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1273
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1272
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1277
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->imsDeregNotification(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1280
    goto :goto_0

    .line 1278
    :catch_0
    move-exception v2

    .line 1279
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "imsDeregNotification"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1282
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2135
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 2136
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "response"    # Landroid/os/Message;

    .line 2150
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2151
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_2

    .line 2152
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2153
    const/16 v1, 0x832

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2155
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 2156
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    .line 2157
    iput p2, v2, Landroid/hardware/radio/V1_0/Dial;->clir:I

    .line 2158
    if-eqz p3, :cond_0

    .line 2159
    new-instance v3, Landroid/hardware/radio/V1_0/UusInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/UusInfo;-><init>()V

    .line 2160
    .local v3, "info":Landroid/hardware/radio/V1_0/UusInfo;
    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v4

    iput v4, v3, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    .line 2161
    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v4

    iput v4, v3, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    .line 2162
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v3, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    .line 2163
    iget-object v4, v2, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2167
    .end local v3    # "info":Landroid/hardware/radio/V1_0/UusInfo;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2170
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->dial(ILandroid/hardware/radio/V1_0/Dial;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2173
    goto :goto_0

    .line 2171
    :catch_0
    move-exception v3

    .line 2172
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "dial"

    invoke-direct {p0, v1, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2174
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 2176
    :cond_1
    const/16 v1, 0x826

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2181
    .restart local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2184
    :try_start_1
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->dialWithSipUri(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2187
    goto :goto_1

    .line 2185
    :catch_1
    move-exception v2

    .line 2186
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "dialWithSipUri"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2190
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method public emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "response"    # Landroid/os/Message;

    .line 2203
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2204
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_1

    .line 2206
    const/16 v1, 0x827

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2209
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 2210
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    .line 2211
    iput p2, v2, Landroid/hardware/radio/V1_0/Dial;->clir:I

    .line 2212
    if-eqz p3, :cond_0

    .line 2213
    new-instance v3, Landroid/hardware/radio/V1_0/UusInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/UusInfo;-><init>()V

    .line 2214
    .local v3, "info":Landroid/hardware/radio/V1_0/UusInfo;
    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v4

    iput v4, v3, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    .line 2215
    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v4

    iput v4, v3, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    .line 2216
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v3, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    .line 2217
    iget-object v4, v2, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2222
    .end local v3    # "info":Landroid/hardware/radio/V1_0/UusInfo;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2225
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2228
    goto :goto_0

    .line 2226
    :catch_0
    move-exception v3

    .line 2227
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "emergencyDial"

    invoke-direct {p0, v1, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2230
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 1021
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1022
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1023
    const/16 v1, 0x48

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1027
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1030
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V

    .line 1032
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    return-void
.end method

.method public forceHangup(I)V
    .locals 1
    .param p1, "callId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4335
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->forceHangup(ILandroid/os/Message;)V

    .line 4336
    return-void
.end method

.method public forceHangup(ILandroid/os/Message;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 3023
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 3024
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 3025
    const/16 v1, 0x7f2

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3028
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3033
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->forceReleaseCall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3036
    goto :goto_0

    .line 3034
    :catch_0
    move-exception v2

    .line 3035
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "forceHangup"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3038
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2616
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2617
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 2618
    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2620
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2622
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->getClir(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2625
    goto :goto_0

    .line 2623
    :catch_0
    move-exception v2

    .line 2624
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getCLIR"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2627
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getCOLP(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2744
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2745
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 2746
    const/16 v1, 0x838

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2750
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2754
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->getColp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2757
    goto :goto_0

    .line 2755
    :catch_0
    move-exception v2

    .line 2756
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getCOLP"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2759
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2697
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2698
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 2699
    const/16 v1, 0x839

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2703
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2707
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->getColr(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2710
    goto :goto_0

    .line 2708
    :catch_0
    move-exception v2

    .line 2709
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getCOLR"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2712
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsCfgFeatureValue(IILandroid/os/Message;)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1851
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1852
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1853
    const/16 v1, 0x859

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1857
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " featureId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " network = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1861
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->getImsCfgFeatureValue(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1864
    goto :goto_0

    .line 1862
    :catch_0
    move-exception v2

    .line 1863
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getImsCfgFeatureValue"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1866
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsCfgProvisionValue(ILandroid/os/Message;)V
    .locals 4
    .param p1, "configId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1900
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1901
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1902
    const/16 v1, 0x85b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1906
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " configId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1910
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->getImsCfgProvisionValue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1913
    goto :goto_0

    .line 1911
    :catch_0
    move-exception v2

    .line 1912
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getImsCfgProvisionValue"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1915
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsCfgResourceCapValue(ILandroid/os/Message;)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1949
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1950
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1951
    const/16 v1, 0x85d    # 3.0E-42f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1955
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->getImsCfgResourceCapValue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1958
    goto :goto_0

    .line 1956
    :catch_0
    move-exception v2

    .line 1957
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getImsCfgResourceCapValue"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1960
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getLastCallFailCause(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4287
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getLastCallFailCause(Landroid/os/Message;)V

    .line 4288
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2035
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2036
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 2037
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2041
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2042
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2041
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2046
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->getLastCallFailCause(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2049
    goto :goto_0

    .line 2047
    :catch_0
    move-exception v2

    .line 2048
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getLastCallFailCause"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2051
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getOpCommandsInterface()Lcom/mediatek/ims/ril/OpImsCommandsInterface;
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mOpCI:Lcom/mediatek/ims/ril/OpImsCommandsInterface;

    return-object v0
.end method

.method public getProvisionValue(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "provisionStr"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4236
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getProvisionValue(Ljava/lang/String;Landroid/os/Message;)V

    .line 4237
    return-void
.end method

.method public getProvisionValue(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "provisionStr"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1768
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1769
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1770
    const/16 v1, 0x81e

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1774
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1775
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provisionStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1774
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1779
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->getProvisionValue(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1782
    goto :goto_0

    .line 1780
    :catch_0
    move-exception v2

    .line 1781
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getProvisionValue"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1784
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getXcapStatus(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2920
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2921
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 2922
    const/16 v1, 0x873

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2926
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2927
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2926
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2931
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->getXcapStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2934
    goto :goto_0

    .line 2932
    :catch_0
    move-exception v2

    .line 2933
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getXcapStatus"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2936
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method handleDtmfQueueNext(I)V
    .locals 6
    .param p1, "serial"    # I

    .line 3453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDtmfQueueNext (serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3455
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 3456
    const/4 v1, 0x0

    .line 3457
    .local v1, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->access$700(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3458
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 3459
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->access$700(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    .line 3460
    .local v3, "adqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    iget v4, v4, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    if-ne v4, p1, :cond_0

    .line 3461
    move-object v1, v3

    .line 3462
    goto :goto_1

    .line 3457
    .end local v3    # "adqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3465
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 3466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find serial "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from mDtmfQueue. (size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 3467
    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3466
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    goto :goto_2

    .line 3469
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove first item in dtmf queue done. (size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3475
    :goto_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 3476
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->get()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 3477
    .local v2, "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v3, v2, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 3479
    .local v3, "rr2":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3481
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3482
    .end local v2    # "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v3    # "rr2":Lcom/mediatek/ims/ril/RILRequest;
    goto :goto_3

    .line 3483
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3484
    const-string v2, "send pending switch request"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3485
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 3486
    .local v2, "pendingReq":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3487
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setSendChldRequest()V

    .line 3488
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setPendingRequest(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3491
    .end local v1    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v2    # "pendingReq":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_4
    :goto_3
    monitor-exit v0

    .line 3492
    return-void

    .line 3491
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hangup(ILandroid/os/Message;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 997
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 998
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 999
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1003
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1004
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1003
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1007
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->hangup(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    goto :goto_0

    .line 1008
    :catch_0
    move-exception v2

    .line 1009
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "hangup"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1012
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public hangupAllCall(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2059
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2060
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 2061
    const/16 v1, 0x7e3

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2065
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2066
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2065
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2070
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->hangupAll(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2073
    goto :goto_0

    .line 2071
    :catch_0
    move-exception v2

    .line 2072
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "hangupAll"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2075
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public hold(ILandroid/os/Message;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1051
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1052
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1053
    const/16 v1, 0x824

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1057
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1058
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1057
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1062
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->holdCall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    goto :goto_0

    .line 1063
    :catch_0
    move-exception v2

    .line 1064
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "holdCall"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1067
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "confCallId"    # I
    .param p2, "participant"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 1972
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1973
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->getParticipantCallId(Ljava/lang/String;)I

    move-result v0

    .line 1976
    .local v0, "participantCallId":I
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalAddConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 1978
    return-void
.end method

.method public inviteParticipantsByCallId(ILjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "confCallId"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 2009
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v0

    .line 2010
    .local v0, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v0, :cond_0

    .line 2011
    const-string v1, "IMS_RILA"

    const-string v2, "Invite participants failed, call info is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    return-void

    .line 2015
    :cond_0
    const/4 v1, -0x1

    .line 2017
    .local v1, "id":I
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 2022
    nop

    .line 2024
    iget-object v2, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v1, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalAddConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 2025
    return-void

    .line 2018
    :catch_0
    move-exception v2

    .line 2019
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "IMS_RILA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invite participants failed: id is not integer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    return-void
.end method

.method public merge(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4329
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->conference(Landroid/os/Message;)V

    .line 4330
    return-void
.end method

.method processIndication(I)V
    .locals 1
    .param p1, "indicationType"    # I

    .line 3502
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3503
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendAck()V

    .line 3508
    :cond_0
    return-void
.end method

.method processRequestAck(I)V
    .locals 4
    .param p1, "serial"    # I

    .line 3512
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3513
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ril/RILRequest;

    .line 3514
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3515
    if-nez v1, :cond_0

    .line 3516
    const-string v0, "IMS_RILA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRequestAck: Unexpected solicited ack response! serial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3520
    :cond_0
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 3522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Ack < "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3525
    :goto_0
    return-void

    .line 3514
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/mediatek/ims/ril/RILRequest;
    .locals 7
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 3535
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    .line 3536
    .local v0, "serial":I
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 3537
    .local v1, "error":I
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    .line 3539
    .local v2, "type":I
    const/4 v3, 0x0

    .line 3541
    .local v3, "rr":Lcom/mediatek/ims/ril/RILRequest;
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 3542
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v4

    .line 3543
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ims/ril/RILRequest;

    move-object v3, v5

    .line 3544
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3545
    if-nez v3, :cond_0

    .line 3546
    const-string v4, "IMS_RILA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected solicited ack response! sn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3548
    :cond_0
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 3550
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Ack < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3553
    :goto_0
    return-object v3

    .line 3544
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 3556
    :cond_1
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->findAndRemoveRequestFromList(I)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v3

    .line 3557
    if-nez v3, :cond_2

    .line 3558
    const-string v4, "IMS_RILA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processResponse: Unexpected response! serial: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3560
    const/4 v4, 0x0

    return-object v4

    .line 3564
    :cond_2
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->addToRilHistogram(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 3566
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 3567
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendAck()V

    .line 3569
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response received for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3570
    invoke-static {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Sending ack to ril.cpp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3569
    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3579
    :cond_3
    iget v4, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v5, 0x81

    if-eq v4, v5, :cond_4

    goto :goto_1

    .line 3581
    :cond_4
    sget-object v4, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setRadioState(Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;)V

    .line 3585
    :goto_1
    nop

    .line 3590
    return-object v3
.end method

.method processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 7
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p3, "ret"    # Ljava/lang/Object;

    .line 3602
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v0, :cond_0

    .line 3604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3605
    invoke-static {v1, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3604
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 3609
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3612
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {p1, v0, p3}, Lcom/mediatek/ims/ril/RILRequest;->onError(ILjava/lang/Object;)V

    .line 3614
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    iget v4, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget v5, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V

    .line 3617
    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v1, 0x34

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v1, 0x48

    if-ne v0, v1, :cond_2

    .line 3621
    :cond_1
    const-string v0, "clear mIsSendChldRequest"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3622
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->resetSendChldRequest()V

    .line 3625
    :cond_2
    if-eqz p1, :cond_4

    .line 3626
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    if-nez v0, :cond_3

    .line 3627
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 3629
    :cond_3
    invoke-virtual {p1}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 3631
    :cond_4
    return-void
.end method

.method public pullCall(Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "isVideoCall"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .line 3127
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 3128
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 3129
    const/16 v1, 0x830

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3132
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " target = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isVideoCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3138
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->pullCall(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3141
    goto :goto_0

    .line 3139
    :catch_0
    move-exception v2

    .line 3140
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "pullCall"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3143
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2654
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2655
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 2656
    const/16 v1, 0x37

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2658
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2660
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->getClip(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2663
    goto :goto_0

    .line 2661
    :catch_0
    move-exception v2

    .line 2662
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "queryCLIP"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2665
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V
    .locals 8
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2790
    const-string v0, ""

    .line 2791
    .local v0, "number":Ljava/lang/String;
    const-string v1, ""

    .line 2792
    .local v1, "timeSlotBegin":Ljava/lang/String;
    const-string v2, ""

    .line 2794
    .local v2, "timeSlotEnd":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v3

    .line 2795
    .local v3, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v3, :cond_0

    .line 2796
    const/16 v4, 0x84d

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v4, p3, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v4

    .line 2800
    .local v4, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " cfreason = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " serviceClass = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2804
    new-instance v5, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v5}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 2806
    .local v5, "cfInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    iput p1, v5, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->reason:I

    .line 2807
    iput p2, v5, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->serviceClass:I

    .line 2808
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->toa:I

    .line 2809
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 2810
    const/4 v6, 0x0

    iput v6, v5, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->timeSeconds:I

    .line 2811
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 2812
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 2815
    :try_start_0
    iget v6, v4, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v3, v6, v5}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2818
    goto :goto_0

    .line 2816
    :catch_0
    move-exception v6

    .line 2817
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "queryCallForwardInTimeSlotStatus"

    invoke-direct {p0, v4, v7, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2820
    .end local v4    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v5    # "cfInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 2546
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2547
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 2548
    const/16 v1, 0x21

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2551
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cfreason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2554
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 2556
    .local v2, "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    iput p1, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    .line 2557
    iput p2, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    .line 2558
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    .line 2559
    invoke-virtual {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    .line 2560
    const/4 v3, 0x0

    iput v3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    .line 2562
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2565
    goto :goto_0

    .line 2563
    :catch_0
    move-exception v3

    .line 2564
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "queryCallForwardStatus"

    invoke-direct {p0, v1, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2567
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 4
    .param p1, "serviceClass"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2574
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2575
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 2576
    const/16 v1, 0x23

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2579
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2583
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->getCallWaiting(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2586
    goto :goto_0

    .line 2584
    :catch_0
    move-exception v2

    .line 2585
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "queryCallWaiting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2588
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 2442
    const-string v4, "A0000000871002"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 2443
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/Message;

    .line 2451
    invoke-direct {p0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v6

    .line 2452
    .local v6, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v6, :cond_0

    .line 2453
    const/16 v0, 0x2a

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p5, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 2456
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " facility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2461
    :try_start_0
    iget v1, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2462
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2463
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2465
    invoke-virtual {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2461
    move-object v0, v6

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2468
    goto :goto_0

    .line 2466
    :catch_0
    move-exception v0

    .line 2467
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "getFacilityLockForApp"

    invoke-direct {p0, v7, v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2470
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public reject(I)V
    .locals 1
    .param p1, "callId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4317
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->hangup(ILandroid/os/Message;)V

    .line 4318
    return-void
.end method

.method public removeParticipants(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "confCallId"    # I
    .param p2, "participant"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 1990
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1991
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->getParticipantCallId(Ljava/lang/String;)I

    move-result v0

    .line 1993
    .local v0, "participantCallId":I
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalRemoveConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 1995
    return-void
.end method

.method public requestExitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 2996
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2997
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 2998
    const/16 v1, 0x63

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3002
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3003
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3002
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3007
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->exitEmergencyCallbackMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3010
    goto :goto_0

    .line 3008
    :catch_0
    move-exception v2

    .line 3009
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "exitEmergencyCallbackMode"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3012
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public resetSuppServ(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2944
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2945
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 2946
    const/16 v1, 0x874

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2950
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2951
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2950
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2955
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->resetSuppServ(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2958
    goto :goto_0

    .line 2956
    :catch_0
    move-exception v2

    .line 2957
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getXcapStatus"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2960
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public responseBearerActivationDone(III)V
    .locals 1
    .param p1, "phoneid"    # I
    .param p2, "aid"    # I
    .param p3, "status"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4255
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseBearerActivationDone(IILandroid/os/Message;)V

    .line 4256
    return-void
.end method

.method public responseBearerActivationDone(IILandroid/os/Message;)V
    .locals 4
    .param p1, "aid"    # I
    .param p2, "status"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 3049
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 3050
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 3051
    const/16 v1, 0x820

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3054
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " aid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3059
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->imsBearerActivationDone(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3062
    goto :goto_0

    .line 3060
    :catch_0
    move-exception v2

    .line 3061
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "imsBearerActivationDone"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3064
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public responseBearerDeactivationDone(III)V
    .locals 1
    .param p1, "phoneid"    # I
    .param p2, "aid"    # I
    .param p3, "status"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4261
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseBearerDeactivationDone(IILandroid/os/Message;)V

    .line 4262
    return-void
.end method

.method public responseBearerDeactivationDone(IILandroid/os/Message;)V
    .locals 4
    .param p1, "aid"    # I
    .param p2, "status"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 3076
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 3077
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 3078
    const/16 v1, 0x821

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3081
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " aid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3086
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->imsBearerDeactivationDone(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3089
    goto :goto_0

    .line 3087
    :catch_0
    move-exception v2

    .line 3088
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "imsBearerDeactivationDone"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3091
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public resume(ILandroid/os/Message;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1077
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1078
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1079
    const/16 v1, 0x825

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1083
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1084
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1083
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1088
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->resumeCall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    goto :goto_0

    .line 1089
    :catch_0
    move-exception v2

    .line 1090
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "resumeCall"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1094
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method riljLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 4189
    const-string v0, "IMS_RILA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4190
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [SUB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4189
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4191
    return-void
.end method

.method riljLoge(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 4194
    const-string v0, "IMS_RILA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4195
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [SUB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4194
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4196
    return-void
.end method

.method riljLoge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 4199
    const-string v0, "IMS_RILA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4200
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [SUB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4199
    invoke-static {v0, v1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4201
    return-void
.end method

.method riljLogv(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 4204
    const-string v0, "IMS_RILA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4205
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [SUB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4204
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4206
    return-void
.end method

.method public runGbaAuthentication(Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Message;)V
    .locals 8
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecureProtocolId"    # Ljava/lang/String;
    .param p3, "forceRun"    # Z
    .param p4, "netId"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 2891
    invoke-direct {p0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v6

    .line 2892
    .local v6, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v6, :cond_0

    .line 2893
    const/16 v0, 0x84f

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p5, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 2896
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2897
    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " nafFqdn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " nafSecureProtocolId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " forceRun = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " netId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2896
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2905
    :try_start_0
    iget v1, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2909
    goto :goto_0

    .line 2907
    :catch_0
    move-exception v0

    .line 2908
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "runGbaAuthentication"

    invoke-direct {p0, v7, v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2912
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 5
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1123
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1124
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1125
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1130
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1134
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->sendDtmf(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    goto :goto_0

    .line 1135
    :catch_0
    move-exception v2

    .line 1136
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendDtmf"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1139
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[BLandroid/os/Message;)V
    .locals 17
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B
    .param p7, "response"    # Landroid/os/Message;

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    .line 3725
    move-object/from16 v3, p7

    invoke-direct {v1, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v4

    .line 3726
    .local v4, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v4, :cond_3

    .line 3727
    const/16 v0, 0x855

    iget-object v5, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v0, v3, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v5

    .line 3730
    .local v5, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "> "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v5, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3732
    new-instance v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    move-object v6, v0

    .line 3733
    .local v6, "msg":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    move/from16 v7, p5

    iput-boolean v7, v6, Landroid/hardware/radio/V1_0/ImsSmsMessage;->retry:Z

    .line 3734
    move/from16 v8, p2

    iput v8, v6, Landroid/hardware/radio/V1_0/ImsSmsMessage;->messageRef:I

    .line 3736
    const-string v0, "3gpp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    .line 3737
    iput v10, v6, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    .line 3738
    nop

    .line 3739
    invoke-static/range {p6 .. p6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 3738
    move-object/from16 v11, p4

    invoke-direct {v1, v11, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->constructGsmSendSmsRilRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object v0

    .line 3740
    .local v0, "gsmMsg":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    iget-object v12, v6, Landroid/hardware/radio/V1_0/ImsSmsMessage;->gsmMessage:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3741
    .end local v0    # "gsmMsg":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    nop

    .line 3751
    move-object/from16 v12, p6

    goto :goto_0

    .line 3741
    :cond_0
    move-object/from16 v11, p4

    const-string v0, "3gpp2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3742
    iput v9, v6, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    .line 3743
    new-instance v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 3744
    .local v0, "cdmaMsg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    move-object/from16 v12, p6

    invoke-virtual {v1, v0, v12}, Lcom/mediatek/ims/ril/ImsRILAdapter;->constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V

    .line 3745
    iget-object v13, v6, Landroid/hardware/radio/V1_0/ImsSmsMessage;->cdmaMessage:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3746
    .end local v0    # "cdmaMsg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    nop

    .line 3751
    :goto_0
    :try_start_0
    iget v0, v5, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v4, v0, v6}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 3752
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v13, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget v14, v5, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v15, 0x3

    .line 3753
    const-string v9, "3gpp"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3754
    goto :goto_1

    .line 3755
    :cond_1
    nop

    .line 3752
    const/4 v10, 0x2

    :goto_1
    invoke-virtual {v0, v13, v14, v15, v10}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3758
    goto :goto_2

    .line 3756
    :catch_0
    move-exception v0

    .line 3757
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "sendImsGsmSms"

    invoke-direct {v1, v5, v9, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v6    # "msg":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    goto :goto_2

    .line 3747
    .restart local v5    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .restart local v6    # "msg":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :cond_2
    move-object/from16 v12, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "> SMS format Error"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3748
    return-void

    .line 3760
    .end local v5    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v6    # "msg":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :cond_3
    move/from16 v8, p2

    move-object/from16 v11, p4

    move/from16 v7, p5

    move-object/from16 v12, p6

    :goto_2
    return-void
.end method

.method public sendUSSI(ILjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "action"    # I
    .param p2, "ussiString"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 2372
    const-string v0, "persist.vendor.ims.ussi.ap"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrap sendUSSI, action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ussiString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2378
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 2379
    return-void

    .line 2382
    :cond_0
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2383
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_1

    .line 2384
    const/16 v1, 0x82d

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2388
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2389
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ussiString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2388
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2394
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->sendUssi(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2397
    goto :goto_0

    .line 2395
    :catch_0
    move-exception v2

    .line 2396
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendUssi"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2399
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public sendWfcProfileInfo(IILandroid/os/Message;)V
    .locals 0
    .param p1, "wfcPreference"    # I
    .param p2, "phoneid"    # I
    .param p3, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4249
    invoke-virtual {p0, p1, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendWfcProfileInfo(ILandroid/os/Message;)V

    .line 4250
    return-void
.end method

.method public sendWfcProfileInfo(ILandroid/os/Message;)V
    .locals 4
    .param p1, "wfcPreference"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2106
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2107
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 2108
    const/16 v1, 0x82f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2112
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2113
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " wfcPreference = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2112
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2118
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setWfcProfile(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2121
    goto :goto_0

    .line 2119
    :catch_0
    move-exception v2

    .line 2120
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setWfcProfile"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2123
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCLIP(ILandroid/os/Message;)V
    .locals 4
    .param p1, "clipEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2673
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2674
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 2675
    const/16 v1, 0x837

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2679
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " clipEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2684
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setClip(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2687
    goto :goto_0

    .line 2685
    :catch_0
    move-exception v2

    .line 2686
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCLIP"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2689
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 4
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2634
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2635
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 2636
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2638
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " clirMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2642
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setClir(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2645
    goto :goto_0

    .line 2643
    :catch_0
    move-exception v2

    .line 2644
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCLIR"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2647
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCOLP(ILandroid/os/Message;)V
    .locals 4
    .param p1, "colpEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2767
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2768
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 2769
    const/16 v1, 0x84b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2773
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " colpEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2778
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setColp(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2781
    goto :goto_0

    .line 2779
    :catch_0
    move-exception v2

    .line 2780
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCOLP"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2783
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .locals 4
    .param p1, "colrEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2720
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2721
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 2722
    const/16 v1, 0x84c

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2726
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " colrEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2731
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setColr(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2734
    goto :goto_0

    .line 2732
    :catch_0
    move-exception v2

    .line 2733
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCOLR"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2736
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 5
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "result"    # Landroid/os/Message;

    .line 2515
    invoke-direct {p0, p6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2516
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 2517
    const/16 v1, 0x22

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p6, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2520
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cfReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " timeSeconds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2524
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 2526
    .local v2, "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    iput p1, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->status:I

    .line 2527
    iput p2, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    .line 2528
    iput p3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    .line 2529
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    .line 2530
    invoke-virtual {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    .line 2531
    iput p5, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    .line 2533
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2536
    goto :goto_0

    .line 2534
    :catch_0
    move-exception v3

    .line 2535
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setCallForward"

    invoke-direct {p0, v1, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2538
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V
    .locals 7
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "timeSlot"    # [J
    .param p7, "result"    # Landroid/os/Message;

    .line 2828
    const-string v0, ""

    .line 2829
    .local v0, "timeSlotBegin":Ljava/lang/String;
    const-string v1, ""

    .line 2832
    .local v1, "timeSlotEnd":Ljava/lang/String;
    if-eqz p6, :cond_1

    array-length v2, p6

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 2833
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p6

    if-ge v2, v3, :cond_1

    .line 2834
    new-instance v3, Ljava/util/Date;

    aget-wide v4, p6, v2

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 2835
    .local v3, "date":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2836
    .local v4, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v5, "GMT+8"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2838
    if-nez v2, :cond_0

    .line 2839
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2841
    :cond_0
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2833
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2846
    .end local v2    # "i":I
    :cond_1
    invoke-direct {p0, p7}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v2

    .line 2847
    .local v2, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v2, :cond_2

    .line 2848
    const/16 v3, 0x84e

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v3, p7, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v3

    .line 2852
    .local v3, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " cfReason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " serviceClass = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " timeSeconds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "timeSlot = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2858
    new-instance v4, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v4}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 2860
    .local v4, "cfInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    iput p1, v4, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->status:I

    .line 2861
    iput p2, v4, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->reason:I

    .line 2862
    iput p3, v4, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->serviceClass:I

    .line 2863
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->toa:I

    .line 2864
    invoke-virtual {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 2865
    iput p5, v4, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->timeSeconds:I

    .line 2866
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 2867
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 2870
    :try_start_0
    iget v5, v3, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v2, v5, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2874
    goto :goto_2

    .line 2871
    :catch_0
    move-exception v5

    .line 2872
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "setCallForwardInTimeSlot"

    invoke-direct {p0, v3, v6, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2876
    .end local v3    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v4    # "cfInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void
.end method

.method public setCallIndication(III)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "callId"    # I
    .param p3, "seqNum"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4347
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setCallIndication(IIILandroid/os/Message;)V

    .line 4348
    return-void
.end method

.method public setCallIndication(IIILandroid/os/Message;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "callId"    # I
    .param p3, "seqNum"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 1226
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1227
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1228
    const/16 v1, 0x7e0

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1232
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1233
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " seqNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1232
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1238
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2, p3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setCallIndication(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    goto :goto_0

    .line 1239
    :catch_0
    move-exception v2

    .line 1240
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCallIndication"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1243
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2595
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2596
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 2597
    const/16 v1, 0x24

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2600
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2604
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setCallWaiting(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2607
    goto :goto_0

    .line 2605
    :catch_0
    move-exception v2

    .line 2606
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCallWaiting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2609
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setEccServiceCategory(ILandroid/os/Message;)V
    .locals 4
    .param p1, "serviceCategory"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2288
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2289
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 2290
    const/16 v1, 0x7e2

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2294
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2295
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " serviceCategory = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2294
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2300
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setEccServiceCategory(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2303
    goto :goto_0

    .line 2301
    :catch_0
    move-exception v2

    .line 2302
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setEccServiceCategory"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2305
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 2478
    const-string v5, "A0000000871002"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 2479
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .line 2487
    invoke-direct {p0, p6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v7

    .line 2488
    .local v7, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v7, :cond_0

    .line 2489
    const/16 v0, 0x2b

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p6, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v8

    .line 2492
    .local v8, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " facility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lockstate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2497
    :try_start_0
    iget v1, v8, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2498
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2500
    invoke-virtual {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2502
    invoke-virtual {p0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2497
    move-object v0, v7

    move v3, p2

    move v5, p4

    invoke-interface/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2505
    goto :goto_0

    .line 2503
    :catch_0
    move-exception v0

    .line 2504
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "setFacilityLockForApp"

    invoke-direct {p0, v8, v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2507
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsBearerNotification(II)V
    .locals 1
    .param p1, "phoneid"    # I
    .param p2, "enable"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4267
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setImsBearerNotification(ILandroid/os/Message;)V

    .line 4268
    return-void
.end method

.method public setImsBearerNotification(ILandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 3101
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 3102
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 3103
    const/16 v1, 0x857

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3106
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3111
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setImsBearerNotification(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3114
    goto :goto_0

    .line 3112
    :catch_0
    move-exception v2

    .line 3113
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsBearerNotification"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3116
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsCfg([IILandroid/os/Message;)V
    .locals 0
    .param p1, "params"    # [I
    .param p2, "phoneid"    # I
    .param p3, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4293
    invoke-virtual {p0, p1, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setImsCfg([ILandroid/os/Message;)V

    .line 4294
    return-void
.end method

.method public setImsCfg([ILandroid/os/Message;)V
    .locals 16
    .param p1, "params"    # [I
    .param p2, "response"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 1293
    move-object/from16 v2, p2

    const/4 v0, 0x0

    aget v3, p1, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v0

    .line 1294
    .local v7, "volteEnable":Z
    :goto_0
    aget v3, p1, v4

    if-ne v3, v4, :cond_1

    move v8, v4

    goto :goto_1

    :cond_1
    move v8, v0

    .line 1295
    .local v8, "vilteEnable":Z
    :goto_1
    const/4 v3, 0x2

    aget v5, p1, v3

    if-ne v5, v4, :cond_2

    move v9, v4

    goto :goto_2

    :cond_2
    move v9, v0

    .line 1296
    .local v9, "vowifiEnable":Z
    :goto_2
    const/4 v5, 0x3

    aget v6, p1, v5

    if-ne v6, v4, :cond_3

    move v10, v4

    goto :goto_3

    :cond_3
    move v10, v0

    .line 1297
    .local v10, "viwifiEnable":Z
    :goto_3
    const/4 v6, 0x4

    aget v11, p1, v6

    if-ne v11, v4, :cond_4

    move v11, v4

    goto :goto_4

    :cond_4
    move v11, v0

    .line 1298
    .local v11, "smsEnable":Z
    :goto_4
    const/4 v13, 0x5

    aget v12, p1, v13

    if-ne v12, v4, :cond_5

    move v12, v4

    goto :goto_5

    :cond_5
    move v12, v0

    .line 1300
    .local v12, "eimsEnable":Z
    :goto_5
    invoke-direct {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v14

    .line 1301
    .local v14, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v14, :cond_6

    .line 1302
    const/16 v13, 0x81d

    iget-object v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v13, v2, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v13

    .line 1306
    .local v13, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ">  "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v13, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1307
    invoke-static {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " volteEnable = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " vilteEnable = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " vowifiEnable = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " viwifiEnable = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    aget v0, p1, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " smsEnable = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    aget v0, p1, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " eimsEnable = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    aget v0, p1, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1306
    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1317
    :try_start_0
    iget v6, v13, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    move-object v5, v14

    invoke-interface/range {v5 .. v12}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setImscfg(IZZZZZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1326
    goto :goto_6

    .line 1324
    :catch_0
    move-exception v0

    .line 1325
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "setImsCfg"

    invoke-direct {v1, v13, v3, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1328
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v13    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_6
    :goto_6
    return-void
.end method

.method public setImsCfgFeatureValue(IIIILandroid/os/Message;)V
    .locals 8
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "isLast"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 1824
    invoke-direct {p0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v6

    .line 1825
    .local v6, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v6, :cond_0

    .line 1826
    const/16 v0, 0x858

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p5, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 1830
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " featureId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " network = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isLast = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1835
    :try_start_0
    iget v1, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setImsCfgFeatureValue(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1839
    goto :goto_0

    .line 1837
    :catch_0
    move-exception v0

    .line 1838
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "setImsCfgFeatureValue"

    invoke-direct {p0, v7, v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1841
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsCfgProvisionValue(ILjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "configId"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1876
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1877
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1878
    const/16 v1, 0x85a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1882
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " configId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1886
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setImsCfgProvisionValue(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1889
    goto :goto_0

    .line 1887
    :catch_0
    move-exception v2

    .line 1888
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsCfgProvisionValue"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1891
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsCfgResourceCapValue(IILandroid/os/Message;)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "value"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1925
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1926
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1927
    const/16 v1, 0x85c

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1931
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " featureId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1935
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setImsCfgResourceCapValue(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1938
    goto :goto_0

    .line 1936
    :catch_0
    move-exception v2

    .line 1937
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsCfgResourceCapValue"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1940
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsRegistrationReport(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4299
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setImsRegistrationReport(Landroid/os/Message;)V

    .line 4300
    return-void
.end method

.method public setImsRegistrationReport(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 3154
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 3155
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 3156
    const/16 v1, 0x831

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3160
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3164
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setImsRegistrationReport(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3167
    goto :goto_0

    .line 3165
    :catch_0
    move-exception v2

    .line 3166
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsRegistrationReport"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3169
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsRtpInfo(IIILandroid/os/Message;)V
    .locals 4
    .param p1, "pdnId"    # I
    .param p2, "networkId"    # I
    .param p3, "timer"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 3181
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 3182
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 3183
    const/16 v1, 0x828

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3186
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " PDN id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " network Id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Timer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3192
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2, p3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setImsRtpReport(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3195
    goto :goto_0

    .line 3193
    :catch_0
    move-exception v2

    .line 3194
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsRtpReport"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3197
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setModemImsCfg(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .param p1, "keys"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 1339
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1340
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1341
    const/16 v1, 0x850

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1345
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1346
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " keys = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " values = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1345
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1353
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2, p3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    goto :goto_0

    .line 1354
    :catch_0
    move-exception v2

    .line 1355
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendModemImsCfg"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1358
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enableMute"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 873
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v1

    .line 874
    .local v1, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v1, :cond_0

    .line 875
    const/16 v2, 0x35

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, v0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 879
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 880
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mute = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 879
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 885
    :try_start_0
    iget v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setMute(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    goto :goto_0

    .line 886
    :catch_0
    move-exception v2

    .line 887
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setMute"

    invoke-direct {p0, v0, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 890
    .end local v0    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setProvisionValue(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "provisionStr"    # Ljava/lang/String;
    .param p3, "provisionValue"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4243
    invoke-virtual {p0, p2, p3, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setProvisionValue(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 4244
    return-void
.end method

.method public setProvisionValue(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "provisionStr"    # Ljava/lang/String;
    .param p2, "provisionValue"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1796
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1797
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1798
    const/16 v1, 0x81f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1802
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1803
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provisionStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provisionValue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1802
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1807
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1810
    goto :goto_0

    .line 1808
    :catch_0
    move-exception v2

    .line 1809
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setProvisionValue"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1812
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setVoiceDomainPreference(ILandroid/os/Message;)V
    .locals 4
    .param p1, "vdp"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 3206
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 3207
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 3208
    const/16 v1, 0x84a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3211
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " vdp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3215
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setVoiceDomainPreference(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3218
    goto :goto_0

    .line 3216
    :catch_0
    move-exception v2

    .line 3217
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVoiceDomainPreference"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3220
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setupXcapUserAgentString(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 2969
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2970
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 2971
    const/16 v1, 0x877

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2975
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2976
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userAgent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2975
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2981
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setupXcapUserAgentString(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2984
    goto :goto_0

    .line 2982
    :catch_0
    move-exception v2

    .line 2983
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setupXcapUserAgentString"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2986
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public start(Ljava/lang/String;IZZILandroid/os/Message;)V
    .locals 6
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isEmergency"    # Z
    .param p4, "isVideoCall"    # Z
    .param p5, "phoneid"    # I
    .param p6, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4274
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->start(Ljava/lang/String;IZZLandroid/os/Message;)V

    .line 4275
    return-void
.end method

.method public start(Ljava/lang/String;IZZLandroid/os/Message;)V
    .locals 3
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isEmergency"    # Z
    .param p4, "isVideoCall"    # Z
    .param p5, "result"    # Landroid/os/Message;

    .line 906
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 907
    invoke-virtual {p0, p1, p2, v0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_0

    .line 908
    :cond_0
    if-eqz p3, :cond_1

    .line 910
    invoke-static {}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeExtensionPluginFactory()Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    move-result-object v1

    .line 912
    .local v1, "facotry":Lcom/mediatek/ims/plugin/ExtensionPluginFactory;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/mediatek/ims/plugin/ExtensionPluginFactory;->makeImsCallPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getServiceCategoryFromEcc(Ljava/lang/String;)I

    move-result v2

    .line 914
    .local v2, "serviceCategory":I
    invoke-virtual {p0, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setEccServiceCategory(ILandroid/os/Message;)V

    .line 915
    invoke-virtual {p0, p1, p2, v0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 916
    .end local v1    # "facotry":Lcom/mediatek/ims/plugin/ExtensionPluginFactory;
    .end local v2    # "serviceCategory":I
    goto :goto_0

    .line 917
    :cond_1
    invoke-virtual {p0, p1, p2, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    .line 919
    :goto_0
    return-void
.end method

.method public startConference([Ljava/lang/String;IZILandroid/os/Message;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "phoneid"    # I
    .param p5, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4281
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->startConference([Ljava/lang/String;IZLandroid/os/Message;)V

    .line 4282
    return-void
.end method

.method public startConference([Ljava/lang/String;IZLandroid/os/Message;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "result"    # Landroid/os/Message;

    .line 935
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->conferenceDial([Ljava/lang/String;IZLandroid/os/Message;)V

    .line 936
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 7
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1150
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 1151
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->hasSendChldRequest()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1152
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x20

    if-ge v1, v2, :cond_2

    .line 1153
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1154
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v1

    .line 1155
    .local v1, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v1, :cond_0

    .line 1156
    const/16 v2, 0x31

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v2

    .line 1158
    .local v2, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->start()V

    .line 1159
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1160
    .local v4, "param":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5, v2, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v5

    .line 1162
    .local v5, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->add(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 1163
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v6

    if-ne v6, v3, :cond_0

    .line 1164
    const-string v3, "send start dtmf"

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "> "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1168
    invoke-direct {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 1171
    .end local v1    # "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    .end local v2    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v4    # "param":[Ljava/lang/Object;
    .end local v5    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_0
    goto :goto_0

    .line 1172
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMF status conflict, want to start DTMF when status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1173
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1172
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1176
    :cond_2
    :goto_0
    monitor-exit v0

    .line 1177
    return-void

    .line 1176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 7
    .param p1, "result"    # Landroid/os/Message;

    .line 1188
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 1189
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->hasSendChldRequest()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1190
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x20

    if-ge v1, v2, :cond_2

    .line 1191
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1192
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v1

    .line 1193
    .local v1, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v1, :cond_0

    .line 1194
    const/16 v2, 0x32

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p1, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v2

    .line 1196
    .local v2, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->stop()V

    .line 1197
    const/4 v3, 0x0

    .line 1198
    .local v3, "param":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 1200
    .local v4, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->add(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 1201
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1202
    const-string v5, "send stop dtmf"

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1205
    invoke-direct {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 1208
    .end local v1    # "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    .end local v2    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v3    # "param":[Ljava/lang/Object;
    .end local v4    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_0
    goto :goto_0

    .line 1209
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMF status conflict, want to start DTMF when status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1210
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1209
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1213
    :cond_2
    :goto_0
    monitor-exit v0

    .line 1214
    return-void

    .line 1213
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public swap(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 2084
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2085
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 2086
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2091
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2094
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V

    .line 2096
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    return-void
.end method

.method public terminate(I)V
    .locals 1
    .param p1, "callId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4323
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->hangup(ILandroid/os/Message;)V

    .line 4324
    return-void
.end method

.method public turnOffIms(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4305
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->turnOffIms(Landroid/os/Message;)V

    .line 4306
    return-void
.end method

.method public turnOffIms(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1392
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1393
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1394
    const/16 v1, 0x815

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1398
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1399
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1398
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1403
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setImsEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1406
    goto :goto_0

    .line 1404
    :catch_0
    move-exception v2

    .line 1405
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsEnable"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1409
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffImsVideo(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1742
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1743
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1744
    const/16 v1, 0x81b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1748
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1749
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1748
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1753
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setImsVideoEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1756
    goto :goto_0

    .line 1754
    :catch_0
    move-exception v2

    .line 1755
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsVideoEnable"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1758
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffImsVoice(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1692
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1693
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1694
    const/16 v1, 0x81a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1698
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1699
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1698
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1703
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setImsVoiceEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1706
    goto :goto_0

    .line 1704
    :catch_0
    move-exception v2

    .line 1705
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsVoiceEnable"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1708
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffRcsUa(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1642
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1643
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1644
    const/16 v1, 0x876

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1648
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1649
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1648
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1653
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setRcsUaEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1656
    goto :goto_0

    .line 1654
    :catch_0
    move-exception v2

    .line 1655
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setRcsUaEnable"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1658
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffVilte(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1542
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1543
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1544
    const/16 v1, 0x818

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1548
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1549
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1548
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1553
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setVilteEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1556
    goto :goto_0

    .line 1554
    :catch_0
    move-exception v2

    .line 1555
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVilteEnable"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1558
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffViwifi(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1592
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1593
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1594
    const/16 v1, 0x819

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1598
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1599
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1598
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1603
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setViWifiEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1606
    goto :goto_0

    .line 1604
    :catch_0
    move-exception v2

    .line 1605
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setViWifiEnable"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1608
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffVolte(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1442
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1443
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1444
    const/16 v1, 0x816

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1448
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1449
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1448
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1453
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setVolteEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1456
    goto :goto_0

    .line 1454
    :catch_0
    move-exception v2

    .line 1455
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVolteEnable"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1458
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffWfc(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1492
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1493
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1494
    const/16 v1, 0x817

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1498
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1499
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1498
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1503
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setWfcEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1506
    goto :goto_0

    .line 1504
    :catch_0
    move-exception v2

    .line 1505
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setWfcEnable"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1508
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnIms(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4311
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->turnOnIms(Landroid/os/Message;)V

    .line 4312
    return-void
.end method

.method public turnOnIms(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1367
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1368
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1369
    const/16 v1, 0x815

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1373
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1374
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1373
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1378
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setImsEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1381
    goto :goto_0

    .line 1379
    :catch_0
    move-exception v2

    .line 1380
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsEnable"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1383
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnImsVideo(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1717
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1718
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1719
    const/16 v1, 0x81b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1723
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1724
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1723
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1728
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setImsVideoEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1731
    goto :goto_0

    .line 1729
    :catch_0
    move-exception v2

    .line 1730
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsVideoEnable"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1733
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnImsVoice(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1667
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1668
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1669
    const/16 v1, 0x81a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1673
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1674
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1673
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1678
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setImsVoiceEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1681
    goto :goto_0

    .line 1679
    :catch_0
    move-exception v2

    .line 1680
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsVoiceEnable"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1683
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnRcsUa(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1617
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1618
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1619
    const/16 v1, 0x876

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1623
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1624
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1623
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1628
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setRcsUaEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1631
    goto :goto_0

    .line 1629
    :catch_0
    move-exception v2

    .line 1630
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setRcsUaEnable"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1633
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnVilte(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1517
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1518
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1519
    const/16 v1, 0x818

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1523
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1524
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1523
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1528
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setVilteEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1531
    goto :goto_0

    .line 1529
    :catch_0
    move-exception v2

    .line 1530
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVilteEnable"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1533
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnViwifi(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1567
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1568
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1569
    const/16 v1, 0x819

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1573
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1574
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1573
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1578
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setViWifiEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1581
    goto :goto_0

    .line 1579
    :catch_0
    move-exception v2

    .line 1580
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setViWifiEnable"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1583
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnVolte(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1417
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1418
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1419
    const/16 v1, 0x816

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1423
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1424
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1423
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1428
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setVolteEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1431
    goto :goto_0

    .line 1429
    :catch_0
    move-exception v2

    .line 1430
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVolteEnable"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1433
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnWfc(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1467
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 1468
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_0

    .line 1469
    const/16 v1, 0x817

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1473
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1474
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1473
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1478
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->setWfcEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1481
    goto :goto_0

    .line 1479
    :catch_0
    move-exception v2

    .line 1480
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setWfcEnable"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1483
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public unattendedCallTransfer(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1040
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalImsEct(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1041
    return-void
.end method

.method unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .line 4209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4210
    return-void
.end method

.method unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    .line 4213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4214
    return-void
.end method

.method unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 4217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4218
    return-void
.end method

.method unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 4221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogv(Ljava/lang/String;)V

    .line 4222
    return-void
.end method

.method public vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "response"    # Landroid/os/Message;

    .line 2320
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/radio/V3_0/IRadio;

    move-result-object v0

    .line 2321
    .local v0, "radioProxy":Lvendor/mediatek/hardware/radio/V3_0/IRadio;
    if-eqz v0, :cond_2

    .line 2322
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2323
    const/16 v1, 0x833

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2325
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 2326
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    .line 2327
    iput p2, v2, Landroid/hardware/radio/V1_0/Dial;->clir:I

    .line 2328
    if-eqz p3, :cond_0

    .line 2329
    new-instance v3, Landroid/hardware/radio/V1_0/UusInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/UusInfo;-><init>()V

    .line 2330
    .local v3, "info":Landroid/hardware/radio/V1_0/UusInfo;
    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v4

    iput v4, v3, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    .line 2331
    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v4

    iput v4, v3, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    .line 2332
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v3, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    .line 2333
    iget-object v4, v2, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2337
    .end local v3    # "info":Landroid/hardware/radio/V1_0/UusInfo;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2340
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2343
    goto :goto_0

    .line 2341
    :catch_0
    move-exception v3

    .line 2342
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "vtDial"

    invoke-direct {p0, v1, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2344
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 2346
    :cond_1
    const/16 v1, 0x82c

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2351
    .restart local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2354
    :try_start_1
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio;->vtDialWithSipUri(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2357
    goto :goto_1

    .line 2355
    :catch_1
    move-exception v2

    .line 2356
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "vtDialWithSipUri"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2360
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method
