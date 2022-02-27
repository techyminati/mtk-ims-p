.class public Lcom/mediatek/ims/ImsConferenceHandler;
.super Lcom/mediatek/ims/DefaultConferenceHandler;
.source "ImsConferenceHandler.java"


# static fields
.field private static final ANONYMOUS_URI:Ljava/lang/String; = "sip:anonymous@anonymous.invalid"

.field private static final CEP_TIMEOUT:I = 0x1388

.field private static final CONFERENCE_STATE_ACTIVE:I = 0x1

.field private static final CONFERENCE_STATE_CLOSED:I = 0x0

.field private static final CONF_HOST:Ljava/lang/String; = "host"

.field private static final DBG:Z = true

.field private static final EVENT_CLOSE_CONFERENCE:I = 0x1

.field private static final EVENT_TRY_UPDATE_WITH_LOCAL_CACHE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "ImsConferenceHandler"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final SENLOG:Z

.field private static final TELDBG:Z

.field private static final USER_ENTITY:Ljava/lang/String; = "user-entity"

.field private static final VDBG:Z

.field private static mConfHdler:Lcom/mediatek/ims/DefaultConferenceHandler;

.field private static mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;


# instance fields
.field private mAddingParticipant:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCepVersion:I

.field private mConfCallId:I

.field private mConfParticipants:Ljava/util/LinkedHashMap;

.field private mConfParticipantsAddr:Ljava/util/LinkedHashMap;

.field private mConfState:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHostAddr:Ljava/lang/String;

.field private mIsCepNotified:Z

.field private mIsFirstCep:Z

.field private mLatestRemovedParticipant:Ljava/lang/String;

.field private mLocalParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field private mRemoveParticipantsByUserEntity:Z

.field private mRemovingParticipant:Ljava/lang/String;

.field private mRestoreParticipantsAddr:Z

.field private mUnknowParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 91
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/ImsConferenceHandler;->SENLOG:Z

    .line 92
    const-string v0, "persist.vendor.log.tel_dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    sput-boolean v1, Lcom/mediatek/ims/ImsConferenceHandler;->TELDBG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 166
    invoke-direct {p0}, Lcom/mediatek/ims/DefaultConferenceHandler;-><init>()V

    .line 104
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfCallId:I

    .line 114
    iput v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCepVersion:I

    .line 115
    iput v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mPhoneId:I

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfState:I

    .line 117
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsFirstCep:Z

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHostAddr:Ljava/lang/String;

    .line 120
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsCepNotified:Z

    .line 121
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRestoreParticipantsAddr:Z

    .line 122
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemoveParticipantsByUserEntity:Z

    .line 132
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipantsAddr:Ljava/util/LinkedHashMap;

    .line 134
    new-instance v0, Lcom/mediatek/ims/ImsConferenceHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsConferenceHandler$1;-><init>(Lcom/mediatek/ims/ImsConferenceHandler;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    .line 375
    new-instance v0, Lcom/mediatek/ims/ImsConferenceHandler$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsConferenceHandler$2;-><init>(Lcom/mediatek/ims/ImsConferenceHandler;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 167
    const-string v0, "ImsConferenceHandler"

    const-string v1, "ImsConferenceHandler()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ImsConferenceHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 83
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsCepNotified:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/ims/ImsConferenceHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;
    .param p1, "x1"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsCepNotified:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ImsConferenceHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 83
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->updateConferenceStateWithLocalCache()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/ImsConferenceHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 83
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRestoreParticipantsAddr:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->isSelfAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/ImsConferenceHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 83
    iget v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfCallId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/ims/ImsConferenceHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 83
    iget v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCepVersion:I

    return v0
.end method

.method static synthetic access$1302(Lcom/mediatek/ims/ImsConferenceHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;
    .param p1, "x1"    # I

    .line 83
    iput p1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCepVersion:I

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/ims/ImsConferenceHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 83
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->shouldAutoTerminateConf()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/ims/ImsConferenceHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 83
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsFirstCep:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/mediatek/ims/ImsConferenceHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;
    .param p1, "x1"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsFirstCep:Z

    return p1
.end method

.method static synthetic access$1600()Lcom/mediatek/ims/DefaultConferenceHandler$Listener;
    .locals 1

    .line 83
    sget-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/ims/ImsConferenceHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 83
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->notifyConfStateUpdate()V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 83
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipantsAddr:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 83
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLatestRemovedParticipant:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/ImsConferenceHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;
    .param p1, "x1"    # I

    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->closeConferenceInternal(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->getUserNameFromSipTelUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 83
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;
    .param p1, "x1"    # Ljava/util/List;

    .line 83
    iput-object p1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 83
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->getBooleanFromCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 83
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 83
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHostAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHostAddr:Ljava/lang/String;

    return-object p1
.end method

.method private closeConferenceInternal(I)V
    .locals 4
    .param p1, "callId"    # I

    .line 202
    const-string v0, "ImsConferenceHandler"

    const-string v1, "closeConferenceInternal()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfState:I

    .line 204
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    .line 205
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 207
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 211
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    .line 212
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    .line 213
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfCallId:I

    .line 214
    iput v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCepVersion:I

    .line 215
    iput v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mPhoneId:I

    .line 216
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHostAddr:Ljava/lang/String;

    .line 217
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 218
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipantsAddr:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 219
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 220
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsCepNotified:Z

    .line 221
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 222
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLatestRemovedParticipant:Ljava/lang/String;

    .line 223
    return-void
.end method

.method private createFakeInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "addr"    # Ljava/lang/String;

    .line 342
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 343
    .local v0, "userInfo":Landroid/os/Bundle;
    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v1, "display-text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v1, "endpoint"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v1, "status"

    const-string v2, "connected"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-object v0
.end method

.method private getBooleanFromCarrierConfig(Ljava/lang/String;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .line 778
    iget v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 779
    .local v0, "subId":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    .line 780
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 781
    .local v1, "configMgr":Landroid/telephony/CarrierConfigManager;
    nop

    .line 782
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 783
    .local v2, "carrierConfig":Landroid/os/PersistableBundle;
    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 784
    .local v3, "result":Z
    const-string v4, "ImsConferenceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBooleanFromCarrierConfig() key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    return v3
.end method

.method public static getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;
    .locals 1

    .line 156
    sget-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfHdler:Lcom/mediatek/ims/DefaultConferenceHandler;

    if-nez v0, :cond_1

    .line 157
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Lcom/mediatek/ims/DefaultConferenceHandler;

    invoke-direct {v0}, Lcom/mediatek/ims/DefaultConferenceHandler;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfHdler:Lcom/mediatek/ims/DefaultConferenceHandler;

    goto :goto_0

    .line 160
    :cond_0
    new-instance v0, Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-direct {v0}, Lcom/mediatek/ims/ImsConferenceHandler;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfHdler:Lcom/mediatek/ims/DefaultConferenceHandler;

    .line 163
    :cond_1
    :goto_0
    sget-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfHdler:Lcom/mediatek/ims/DefaultConferenceHandler;

    return-object v0
.end method

.method private getUserNameFromSipTelUriString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "uriString"    # Ljava/lang/String;

    .line 724
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 725
    return-object v0

    .line 728
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 733
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, "address":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 735
    return-object v0

    .line 740
    :cond_1
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 741
    .local v3, "userName":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 742
    return-object v0

    .line 747
    :cond_2
    const/16 v0, 0x3b

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 748
    .local v0, "pIndex":I
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 750
    .local v4, "wIndex":I
    const/4 v5, 0x0

    if-ltz v0, :cond_3

    if-ltz v4, :cond_3

    .line 751
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 752
    :cond_3
    if-ltz v0, :cond_4

    .line 753
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 754
    :cond_4
    if-ltz v4, :cond_5

    .line 755
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 757
    :cond_5
    return-object v3
.end method

.method private isSelfAddress(Ljava/lang/String;)Z
    .locals 2
    .param p1, "addr"    # Ljava/lang/String;

    .line 770
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHostAddr:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    const-string v0, "ImsConferenceHandler"

    const-string v1, "isSelfAddress(): true, meet host info in xml"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/4 v0, 0x1

    return v0

    .line 774
    :cond_0
    iget v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->isSelfAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .line 230
    const-string v0, "*31#"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#31#"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyConfStateUpdate()V
    .locals 8

    .line 351
    const-string v0, "ImsConferenceHandler"

    const-string v1, "notifyConfStateUpdate()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v0, Landroid/telephony/ims/ImsConferenceState;

    invoke-direct {v0}, Landroid/telephony/ims/ImsConferenceState;-><init>()V

    .line 355
    .local v0, "confState":Landroid/telephony/ims/ImsConferenceState;
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 356
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 358
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    iget-object v3, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v3, "ImsConferenceHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "submit participants: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    goto :goto_0

    .line 362
    :cond_0
    const/4 v2, 0x0

    .line 363
    .local v2, "key":I
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 364
    .local v4, "userInfo":Landroid/os/Bundle;
    iget-object v5, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v5, "ImsConferenceHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "submit unknow participants: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 365
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    add-int/lit8 v2, v2, 0x1

    .line 368
    .end local v4    # "userInfo":Landroid/os/Bundle;
    goto :goto_1

    .line 370
    :cond_1
    sget-object v3, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    if-eqz v3, :cond_2

    .line 371
    sget-object v3, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    invoke-virtual {v3, v0}, Lcom/mediatek/ims/DefaultConferenceHandler$Listener;->onParticipantsUpdate(Landroid/telephony/ims/ImsConferenceState;)V

    .line 373
    :cond_2
    return-void
.end method

.method private sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 762
    sget-boolean v0, Lcom/mediatek/ims/ImsConferenceHandler;->SENLOG:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/mediatek/ims/ImsConferenceHandler;->TELDBG:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 765
    :cond_0
    const-string v0, "[hidden]"

    return-object v0

    .line 763
    :cond_1
    :goto_0
    return-object p1
.end method

.method private shouldAutoTerminateConf()Z
    .locals 4

    .line 718
    const/4 v0, 0x1

    .line 719
    .local v0, "shouldTerminate":Z
    const-string v1, "ImsConferenceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldTerminate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return v0
.end method

.method private updateConferenceStateWithLocalCache()V
    .locals 7

    .line 318
    const-string v0, "ImsConferenceHandler"

    const-string v1, "updateConferenceStateWithLocalCache()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->shouldAutoTerminateConf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    sget-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    if-eqz v0, :cond_0

    .line 322
    sget-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    invoke-virtual {v0}, Lcom/mediatek/ims/DefaultConferenceHandler$Listener;->onAutoTerminate()V

    .line 324
    :cond_0
    const-string v0, "ImsConferenceHandler"

    const-string v1, "no participants"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void

    .line 328
    :cond_1
    new-instance v0, Landroid/telephony/ims/ImsConferenceState;

    invoke-direct {v0}, Landroid/telephony/ims/ImsConferenceState;-><init>()V

    .line 330
    .local v0, "confState":Landroid/telephony/ims/ImsConferenceState;
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 331
    .local v2, "addr":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsConferenceHandler;->createFakeInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 332
    .local v3, "userInfo":Landroid/os/Bundle;
    iget-object v4, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v4, "ImsConferenceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "submit participants:  uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v2    # "addr":Ljava/lang/String;
    .end local v3    # "userInfo":Landroid/os/Bundle;
    goto :goto_0

    .line 336
    :cond_2
    sget-object v1, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    if-eqz v1, :cond_3

    .line 337
    sget-object v1, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/DefaultConferenceHandler$Listener;->onParticipantsUpdate(Landroid/telephony/ims/ImsConferenceState;)V

    .line 339
    :cond_3
    return-void
.end method


# virtual methods
.method public addLocalCache([Ljava/lang/String;)V
    .locals 5
    .param p1, "participants"    # [Ljava/lang/String;

    .line 241
    if-nez p1, :cond_0

    .line 242
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 245
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 246
    .local v2, "participant":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsConferenceHandler;->normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v2    # "participant":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_1
    return-void
.end method

.method public closeConference(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;

    .line 193
    const-string v0, "ImsConferenceHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeConference() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfCallId:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 199
    return-void

    .line 195
    :cond_1
    :goto_0
    return-void
.end method

.method public firstMerge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "num_1"    # Ljava/lang/String;
    .param p2, "num_2"    # Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 235
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsConferenceHandler;->normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method public getConfParticipantUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "addr"    # Ljava/lang/String;

    .line 290
    if-nez p1, :cond_0

    .line 291
    const-string v0, "sip:anonymous@anonymous.invalid"

    return-object v0

    .line 293
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRestoreParticipantsAddr:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemoveParticipantsByUserEntity:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipantsAddr:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 295
    .local v0, "confParticipantUri":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 296
    const-string v1, "ImsConferenceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeParticipants confParticipantUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " addr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    move-object p1, v0

    .line 302
    .end local v0    # "confParticipantUri":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 303
    .local v0, "confInfo":Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 304
    return-object p1

    .line 306
    :cond_2
    const-string v1, "user-entity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "participantUri":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v2, "sip:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 308
    :cond_3
    move-object v1, p1

    .line 311
    :cond_4
    const-string v2, "ImsConferenceHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeParticipants uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " addr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 311
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-object v1
.end method

.method public isConferenceActive()Z
    .locals 2

    .line 226
    iget v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public modifyParticipantComplete()V
    .locals 6

    .line 259
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 260
    .local v0, "isFirstMerge":Z
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 261
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 264
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 265
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    iput-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLatestRemovedParticipant:Ljava/lang/String;

    .line 267
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    .line 268
    iput-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    .line 269
    const-string v3, "ImsConferenceHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modifyParticipantComplete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    .line 270
    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 269
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v3, "mtk_key_conference_management_supported"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->getBooleanFromCarrierConfig(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 273
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 275
    :cond_3
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsCepNotified:Z

    if-ne v1, v2, :cond_4

    if-ne v0, v2, :cond_4

    .line 276
    const-string v1, "ImsConferenceHandler"

    const-string v2, "CEP is notify before merge complete, notify again"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->notifyConfStateUpdate()V

    .line 279
    :cond_4
    return-void
.end method

.method public modifyParticipantFailed()V
    .locals 3

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    .line 283
    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    .line 284
    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLatestRemovedParticipant:Ljava/lang/String;

    .line 285
    const-string v0, "ImsConferenceHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modifyParticipantFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    .line 286
    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method

.method public startConference(Landroid/content/Context;Lcom/mediatek/ims/DefaultConferenceHandler$Listener;Ljava/lang/String;I)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mediatek/ims/DefaultConferenceHandler$Listener;
    .param p3, "callId"    # Ljava/lang/String;
    .param p4, "phoneId"    # I

    .line 172
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "ImsConferenceHandler"

    const-string v1, "startConference() failed, a conference is ongoing"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void

    .line 176
    :cond_0
    const-string v0, "ImsConferenceHandler"

    const-string v1, "startConference()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sput-object p2, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    .line 178
    iput-object p1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    .line 179
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ims.conference"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfCallId:I

    .line 183
    iput p4, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mPhoneId:I

    .line 184
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsFirstCep:Z

    .line 185
    iput v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfState:I

    .line 186
    const-string v1, "mtk_key_restore_address_for_ims_conference_participants"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsConferenceHandler;->getBooleanFromCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRestoreParticipantsAddr:Z

    .line 188
    const-string v1, "mtk_key_operate_ims_conference_participants_by_user_entity"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsConferenceHandler;->getBooleanFromCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemoveParticipantsByUserEntity:Z

    .line 190
    return-void
.end method

.method public tryAddParticipant(Ljava/lang/String;)V
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;

    .line 251
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public tryRemoveParticipant(Ljava/lang/String;)V
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;

    .line 255
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    .line 256
    return-void
.end method
