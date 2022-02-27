.class public Lcom/mediatek/ims/internal/WfcDispatcher;
.super Ljava/lang/Object;
.source "WfcDispatcher.java"

# interfaces
.implements Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/WfcDispatcher$SettingsObserver;,
        Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;
    }
.end annotation


# static fields
.field private static final AID_SETTING_URI:Landroid/net/Uri;

.field private static final AID_SETTING_URI_STR:Ljava/lang/String; = "wfc_aid_value"

.field private static final DEBUG:Z = false

.field private static final EVENT_MSG_HANDLE_NETWORK_LOCATION_RESPONSE:I = 0x2

.field private static final EVENT_MSG_REQUEST_GEO_LOCATION:I = 0x0

.field private static final EVENT_MSG_REQUEST_NETWORK_LOCATION:I = 0x1

.field private static final EVENT_MSG_RESPONSE_GEO_LOCATION:I = 0x4

.field private static final EVENT_MSG_UPDATE_AID_INFORMATION:I = 0x5

.field private static final MSG_REG_IMSA_REQUEST_GEO_LOCATION_INFO:I = 0x17709

.field private static final MSG_REG_IMSA_RESPONSE_GETO_LOCATION_INFO:I = 0x16396

.field private static final NETWORK_LOCATION_UPDATE_TIME:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "Wfc-IMSA"

.field private static final sPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private mAid:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImsEnabled:Z

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNetworkLocationTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;",
            ">;"
        }
    .end annotation
.end field

.field private mPlmnCountryCode:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 72
    const-string v0, "wfc_aid_value"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/internal/WfcDispatcher;->AID_SETTING_URI:Landroid/net/Uri;

    .line 116
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    sput-object v0, Lcom/mediatek/ims/internal/WfcDispatcher;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 117
    new-instance v0, Lcom/mediatek/ims/internal/WfcDispatcher$1;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/WfcDispatcher$1;-><init>()V

    sput-object v0, Lcom/mediatek/ims/internal/WfcDispatcher;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 123
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/mediatek/ims/internal/WfcDispatcher;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/mediatek/ims/internal/WfcDispatcher;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-wide/16 v4, 0x1e

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/mediatek/ims/internal/WfcDispatcher;->sPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "IO"    # Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mNetworkLocationTasks:Ljava/util/List;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mImsEnabled:Z

    .line 135
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mPlmnCountryCode:Ljava/lang/String;

    .line 137
    new-instance v0, Lcom/mediatek/ims/internal/WfcDispatcher$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/WfcDispatcher$2;-><init>(Lcom/mediatek/ims/internal/WfcDispatcher;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationListener:Landroid/location/LocationListener;

    .line 195
    new-instance v0, Lcom/mediatek/ims/internal/WfcDispatcher$3;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/WfcDispatcher$3;-><init>(Lcom/mediatek/ims/internal/WfcDispatcher;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 223
    new-instance v0, Lcom/mediatek/ims/internal/WfcDispatcher$4;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/WfcDispatcher$4;-><init>(Lcom/mediatek/ims/internal/WfcDispatcher;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mHandler:Landroid/os/Handler;

    .line 312
    const-string v0, "WfcDispatcher()"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 313
    iput-object p1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mContext:Landroid/content/Context;

    .line 314
    iput-object p2, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 315
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationManager:Landroid/location/LocationManager;

    .line 317
    new-instance v0, Lcom/mediatek/ims/internal/WfcDispatcher$SettingsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher$SettingsObserver;-><init>(Lcom/mediatek/ims/internal/WfcDispatcher;Landroid/os/Handler;)V

    invoke-static {v0}, Lcom/mediatek/ims/internal/WfcDispatcher$SettingsObserver;->access$1300(Lcom/mediatek/ims/internal/WfcDispatcher$SettingsObserver;)V

    .line 319
    invoke-direct {p0}, Lcom/mediatek/ims/internal/WfcDispatcher;->registerForBroadcast()V

    .line 321
    const-string v0, "WfcDispatcher() end"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/internal/WfcDispatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;

    .line 66
    invoke-direct {p0}, Lcom/mediatek/ims/internal/WfcDispatcher;->cancelNetworkGeoLocationRequest()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/internal/WfcDispatcher;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;

    .line 66
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/internal/WfcDispatcher;Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;
    .param p1, "x1"    # Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/WfcDispatcher;->getLastKnownLocation(Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/internal/WfcDispatcher;Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;
    .param p1, "x1"    # Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/WfcDispatcher;->handleGeoLocationResponse(Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/internal/WfcDispatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;

    .line 66
    invoke-direct {p0}, Lcom/mediatek/ims/internal/WfcDispatcher;->handleAidInfoUpdate()V

    return-void
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .line 66
    sget-object v0, Lcom/mediatek/ims/internal/WfcDispatcher;->AID_SETTING_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/internal/WfcDispatcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;

    .line 66
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/internal/WfcDispatcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;

    .line 66
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/ims/internal/WfcDispatcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mAid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/ims/internal/WfcDispatcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;

    .line 66
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mPlmnCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/ims/internal/WfcDispatcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mPlmnCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/ims/internal/WfcDispatcher;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;
    .param p1, "x1"    # I

    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/WfcDispatcher;->handlerEventMsgToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/internal/WfcDispatcher;Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;
    .param p1, "x1"    # Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/WfcDispatcher;->updateGeoLocationFromLatLong(Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)V

    return-void
.end method

.method static synthetic access$800()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 66
    sget-object v0, Lcom/mediatek/ims/internal/WfcDispatcher;->sPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/ims/internal/WfcDispatcher;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;

    .line 66
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mNetworkLocationTasks:Ljava/util/List;

    return-object v0
.end method

.method private cancelNetworkGeoLocationRequest()V
    .locals 2

    .line 568
    const-string v0, "cancelNetworkGeoLocationRequest"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 570
    const-string v0, "cancelNetworkGeoLocationRequest: empty locationManager, return"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 571
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 574
    return-void
.end method

.method private getLastKnownLocation(Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)Z
    .locals 6
    .param p1, "locationReq"    # Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    .line 496
    const-string v0, "getLastKnownLocation"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 499
    const-string v0, "getLastKnownLocation: empty locationManager, return"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 500
    return v1

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    .line 505
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 507
    .local v0, "gpsLocation":Landroid/location/Location;
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 508
    const-string v1, "GPS"

    iput-object v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->method:Ljava/lang/String;

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPS location: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 512
    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 513
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 514
    return v2

    .line 518
    :cond_1
    iget-object v4, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationManager:Landroid/location/LocationManager;

    const-string v5, "network"

    .line 519
    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .line 521
    .local v4, "networkLocation":Landroid/location/Location;
    if-eqz v4, :cond_2

    .line 522
    const-string v1, "Network"

    iput-object v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->method:Ljava/lang/String;

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network location: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 527
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 528
    return v2

    .line 531
    :cond_2
    const-string v2, "getLastKnownLocation: no last known location"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 532
    return v1
.end method

.method private handleAidInfoUpdate()V
    .locals 3

    .line 577
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    if-nez v0, :cond_0

    .line 578
    const-string v0, "handleAidInfoUpdate: socket is null, can\'t send AID info."

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 579
    return-void

    .line 582
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0xdbd38

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->imsaMsgToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") to IMSM: AID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mAid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 586
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 587
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter$Util;->getDefaultVoltePhoneId()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 589
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mAid:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mAid:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 590
    .local v1, "aid":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 591
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->writeEventToSocket(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 592
    return-void
.end method

.method private handleGeoLocationRequest(ILcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 5
    .param p1, "transactionId"    # I
    .param p2, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 396
    new-instance v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;-><init>(Lcom/mediatek/ims/internal/WfcDispatcher$1;)V

    .line 397
    .local v0, "locationReq":Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;
    invoke-virtual {p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v1

    iput v1, v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->phoneId:I

    .line 398
    iput p1, v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->transactionId:I

    .line 399
    invoke-virtual {p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDouble()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->latitude:D

    .line 400
    invoke-virtual {p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDouble()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->longitude:D

    .line 401
    invoke-virtual {p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->accuracy:I

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGeoLocationRequest: get UA\'s request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 404
    iget-wide v1, v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->latitude:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->longitude:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send EVENT_MSG_REQUEST_GEO_LOCATION for transactionId-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->transactionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 408
    const-string v1, "GPS"

    iput-object v1, v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->method:Ljava/lang/String;

    .line 409
    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 411
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send EVENT_MSG_REQUEST_NETWORK_LOCATION for transactionId-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->transactionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 414
    const-string v1, "Network"

    iput-object v1, v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->method:Ljava/lang/String;

    .line 415
    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 417
    :goto_0
    return-void
.end method

.method private handleGeoLocationResponse(Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)V
    .locals 7
    .param p1, "locationResult"    # Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0xdbd37

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->imsaMsgToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") to IMSM: result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 424
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    iget v2, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->phoneId:I

    invoke-direct {v0, v2, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 426
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    iget v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->transactionId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 427
    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 429
    const v1, 0x16396

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 430
    iget-wide v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->latitude:D

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putDouble(D)I

    .line 431
    iget-wide v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->longitude:D

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putDouble(D)I

    .line 432
    iget v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->accuracy:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 434
    iget-object v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->method:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->method:Ljava/lang/String;

    .line 435
    .local v1, "method":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 437
    iget-object v2, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->city:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->city:Ljava/lang/String;

    .line 438
    .local v2, "city":Ljava/lang/String;
    :goto_1
    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 440
    iget-object v4, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->state:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, "Unknown"

    goto :goto_2

    :cond_2
    iget-object v4, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->state:Ljava/lang/String;

    .line 441
    .local v4, "state":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v4, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 443
    iget-object v3, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->zip:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, ""

    goto :goto_3

    :cond_3
    iget-object v3, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->zip:Ljava/lang/String;

    .line 444
    .local v3, "zip":Ljava/lang/String;
    :goto_3
    const/16 v5, 0x8

    invoke-virtual {v0, v3, v5}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 446
    iget-object v6, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->countryCode:Ljava/lang/String;

    if-nez v6, :cond_4

    const-string v6, ""

    goto :goto_4

    :cond_4
    iget-object v6, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->countryCode:Ljava/lang/String;

    .line 447
    .local v6, "countryCode":Ljava/lang/String;
    :goto_4
    invoke-virtual {v0, v6, v5}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 449
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->writeEventToSocket(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 450
    return-void
.end method

.method private handlerEventMsgToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "eventMsg"    # I

    .line 627
    packed-switch p1, :pswitch_data_0

    .line 639
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_MSG_ID-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 637
    :pswitch_1
    const-string v0, "EVENT_MSG_UPDATE_AID_INFORMATION"

    return-object v0

    .line 635
    :pswitch_2
    const-string v0, "EVENT_MSG_RESPONSE_GEO_LOCATION"

    return-object v0

    .line 633
    :pswitch_3
    const-string v0, "EVENT_MSG_HANDLE_NETWORK_LOCATION_RESPONSE"

    return-object v0

    .line 631
    :pswitch_4
    const-string v0, "EVENT_MSG_REQUEST_NETWORK_LOCATION"

    return-object v0

    .line 629
    :pswitch_5
    const-string v0, "EVENT_MSG_REQUEST_GEO_LOCATION"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private imsaMsgToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "msgId"    # I

    .line 603
    packed-switch p1, :pswitch_data_0

    .line 611
    const-string v0, "Unknown Msg"

    return-object v0

    .line 609
    :pswitch_0
    const-string v0, "MSG_ID_UPDATE_IMCB_AID_INFO"

    return-object v0

    .line 607
    :pswitch_1
    const-string v0, "MSG_ID_RESPONSE_VOWIFI_RELATED_INFO"

    return-object v0

    .line 605
    :pswitch_2
    const-string v0, "MSG_ID_REQUEST_VOWIFI_RELATED_INFO"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xdbd36
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseRequestDataPayload(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 376
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v0

    .line 377
    .local v0, "transactionId":I
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 378
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v1

    .line 380
    .local v1, "uaMsgId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseRequestDataPayload: transaction-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uaMsgId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->uaMsgIdToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 380
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 382
    const v2, 0x17709

    if-eq v1, v2, :cond_0

    .line 387
    const-string v2, "parseRequestDataPayload: unknown msgId"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/internal/WfcDispatcher;->handleGeoLocationRequest(ILcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 385
    nop

    .line 390
    :goto_0
    return-void
.end method

.method private registerForBroadcast()V
    .locals 3

    .line 325
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 326
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 328
    return-void
.end method

.method private requestGeoLocationFromNetworkLocation()Z
    .locals 9

    .line 536
    const-string v0, "requestGeoLocationFromNetworkLocation"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 538
    const-string v0, "getGeoLocationFromNetworkLocation: empty locationManager, return"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 539
    return v1

    .line 542
    :cond_0
    const-string v0, "persist.vendor.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "optr":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "OP08"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 545
    iget-object v2, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 546
    goto :goto_0

    .line 548
    :cond_1
    const-string v2, "requestGeoLocationFromNetworkLocation:getProvider() is null!"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 549
    return v1

    .line 553
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 554
    const-string v2, "requestGeoLocationFromNetworkLocation:this system has no networkProvider implementation!"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 556
    return v1

    .line 560
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationManager:Landroid/location/LocationManager;

    const-string v4, "network"

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 562
    const-string v1, "requestGeoLocationFromNetworkLocation: request networkLocation update"

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 564
    const/4 v1, 0x1

    return v1
.end method

.method private uaMsgIdToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "uaMsgId"    # I

    .line 616
    const v0, 0x16396

    if-eq p1, v0, :cond_1

    const v0, 0x17709

    if-eq p1, v0, :cond_0

    .line 622
    const-string v0, "Unknown Msg"

    return-object v0

    .line 618
    :cond_0
    const-string v0, "MSG_REG_IMSA_REQUEST_GEO_LOCATION_INFO"

    return-object v0

    .line 620
    :cond_1
    const-string v0, "MSG_REG_IMSA_RESPONSE_GETO_LOCATION_INFO"

    return-object v0
.end method

.method private updateGeoLocationFromLatLong(Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)V
    .locals 7
    .param p1, "location"    # Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    .line 456
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    const-string v0, "getGeoLocationFromLatLong: this system has no GeoCoder implementation!!"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 458
    return-void

    .line 461
    :cond_0
    const/4 v0, 0x0

    .line 463
    .local v0, "lstAddress":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 464
    .local v1, "geocoder":Landroid/location/Geocoder;
    iget-wide v2, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->latitude:D

    iget-wide v4, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->longitude:D

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 467
    .end local v1    # "geocoder":Landroid/location/Geocoder;
    goto :goto_0

    .line 465
    :catch_0
    move-exception v1

    .line 466
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Wfc-IMSA"

    const-string v3, "geocoder.getFromLocation throw exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 475
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    .line 476
    .local v2, "address":Landroid/location/Address;
    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->city:Ljava/lang/String;

    .line 477
    iget-object v3, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->city:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->city:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 478
    :cond_2
    invoke-virtual {v2}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->city:Ljava/lang/String;

    .line 480
    :cond_3
    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->state:Ljava/lang/String;

    .line 481
    iget-object v3, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->state:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->state:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 482
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->state:Ljava/lang/String;

    .line 484
    :cond_5
    invoke-virtual {v2}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->zip:Ljava/lang/String;

    .line 485
    invoke-virtual {v2}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->countryCode:Ljava/lang/String;

    .line 488
    iget-object v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->countryCode:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->countryCode:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 489
    iget-object v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->countryCode:Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mPlmnCountryCode:Ljava/lang/String;

    .line 492
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGeoLocationFromLatLong: location="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 493
    return-void

    .line 470
    .end local v2    # "address":Landroid/location/Address;
    :cond_7
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGeoLocationFromLatLong: get empty address, fill plmn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mPlmnCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 471
    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mPlmnCountryCode:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->countryCode:Ljava/lang/String;

    .line 472
    return-void
.end method

.method private writeEventToSocket(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 595
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mImsEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 596
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    goto :goto_0

    .line 598
    :cond_0
    const-string v0, "Wfc-IMSA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event discarded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :goto_0
    return-void
.end method


# virtual methods
.method public disableRequest(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 341
    const-string v0, "disableRequest()"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mImsEnabled:Z

    .line 345
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mNetworkLocationTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 347
    return-void
.end method

.method public enableRequest(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 331
    const-string v0, "enableRequest()"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mImsEnabled:Z

    .line 335
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wfc_aid_value"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mAid:Ljava/lang/String;

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trigger AID information update to IMCB, AID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mAid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 338
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 373
    return-void
.end method

.method public vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 351
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v0

    .line 352
    .local v0, "requestId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vaEventCallback: ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->imsaMsgToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 354
    const v1, 0xdbd36

    if-eq v0, v1, :cond_0

    .line 361
    const-string v1, "Unknown request, return directly "

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .end local v0    # "requestId":I
    goto :goto_0

    .line 356
    .restart local v0    # "requestId":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/WfcDispatcher;->parseRequestDataPayload(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    nop

    .line 366
    .end local v0    # "requestId":I
    :goto_0
    goto :goto_1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Wfc-IMSA"

    const-string v2, "Event exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
