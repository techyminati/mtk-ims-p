.class public Lcom/mediatek/ims/feature/MtkImsSmsImpl;
.super Landroid/telephony/ims/stub/ImsSmsImplBase;
.source "MtkImsSmsImpl.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final ENG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "MtkImsSmsImpl"

.field private static sMtkImsSmsImpltances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/feature/MtkImsSmsImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImsServiceImpl:Lcom/mediatek/ims/ImsService;

.field private mInboundSmsFormat:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsReady:Z

.field private mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPhoneId:I

.field private mToken:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->ENG:Z

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->sMtkImsSmsImpltances:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 83
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsSmsImplBase;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    .line 59
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mIsReady:Z

    .line 64
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mToken:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mInboundSmsFormat:Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    invoke-virtual {p0, v0, p1, v0}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->configure(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "service"    # Lcom/mediatek/ims/ImsService;

    .line 79
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsSmsImplBase;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mIsReady:Z

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mToken:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mInboundSmsFormat:Ljava/util/concurrent/ConcurrentHashMap;

    .line 80
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->configure(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)V

    .line 81
    return-void
.end method

.method public static getInstance(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/feature/MtkImsSmsImpl;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "service"    # Lcom/mediatek/ims/ImsService;

    .line 70
    sget-object v0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->sMtkImsSmsImpltances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->sMtkImsSmsImpltances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;

    .line 72
    .local v0, "m":Lcom/mediatek/ims/feature/MtkImsSmsImpl;
    return-object v0

    .line 74
    .end local v0    # "m":Lcom/mediatek/ims/feature/MtkImsSmsImpl;
    :cond_0
    sget-object v0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->sMtkImsSmsImpltances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ims/feature/MtkImsSmsImpl;

    invoke-direct {v2, p0, p1, p2}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;-><init>(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->sMtkImsSmsImpltances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 272
    const-string v0, "MtkImsSmsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 276
    const-string v0, "MtkImsSmsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method

.method private static resultToCauseForCdma(I)I
    .locals 1
    .param p0, "rc"    # I

    .line 280
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 290
    const/16 v0, 0x27

    return v0

    .line 287
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 285
    :pswitch_1
    const/16 v0, 0x23

    return v0

    .line 283
    :cond_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static resultToCauseForGsm(I)I
    .locals 1
    .param p0, "rc"    # I

    .line 295
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 303
    const/16 v0, 0xff

    return v0

    .line 300
    :cond_0
    const/16 v0, 0xd3

    return v0

    .line 298
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public acknowledgeSms(III)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 199
    iget-boolean v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mIsReady:Z

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mInboundSmsFormat:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    .local v0, "format":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 204
    .local v1, "ok":Z
    :goto_0
    const-string v2, "3gpp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    invoke-static {p3}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->resultToCauseForGsm(I)I

    move-result v2

    .line 206
    .local v2, "cause":I
    iget-object v3, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    iget v4, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    invoke-virtual {v3, v4, v1, v2}, Lcom/mediatek/ims/ImsService;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 207
    .end local v2    # "cause":I
    goto :goto_1

    :cond_1
    const-string v2, "3gpp2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    invoke-static {p3}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->resultToCauseForCdma(I)I

    move-result v2

    .line 209
    .restart local v2    # "cause":I
    iget-object v3, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    iget v4, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    invoke-virtual {v3, v4, v1, v2}, Lcom/mediatek/ims/ImsService;->acknowledgeLastIncomingCdmaSms(IZI)V

    .line 211
    .end local v2    # "cause":I
    goto :goto_1

    .line 212
    :cond_2
    const-string v2, "SMS format error."

    invoke-direct {p0, v2}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->loge(Ljava/lang/String;)V

    .line 214
    :goto_1
    return-void

    .line 200
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "ok":Z
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "onReady is not called yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public acknowledgeSmsReport(III)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 186
    iget-boolean v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mIsReady:Z

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeSmsReport toke="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",messageRef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->log(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mToken:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->acknowledgeSms(III)V

    .line 195
    return-void

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "onReady is not called yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public configure(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "service"    # Lcom/mediatek/ims/ImsService;

    .line 88
    iput-object p3, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    .line 89
    iput p2, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    .line 90
    iput-object p1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mContext:Landroid/content/Context;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configure phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->log(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 7

    .line 224
    iget-boolean v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mIsReady:Z

    if-eqz v0, :cond_6

    .line 227
    const-string v0, "persist.vendor.radio.smsformat"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "smsFormat":Ljava/lang/String;
    const-string v1, "3gpp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    const-string v0, "3gpp"

    goto :goto_2

    .line 231
    :cond_0
    const-string v1, "3gpp2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    const-string v0, "3gpp2"

    goto :goto_2

    .line 234
    :cond_1
    iget v1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 235
    .local v1, "subIds":[I
    const/4 v2, -0x1

    .line 236
    .local v2, "subId":I
    if-eqz v1, :cond_2

    .line 237
    const/4 v3, 0x0

    aget v2, v1, v3

    .line 239
    :cond_2
    const/4 v3, -0x1

    .line 240
    .local v3, "dataNwType":I
    const/4 v4, 0x0

    .line 241
    .local v4, "ss":Landroid/telephony/ServiceState;
    iget-object v5, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_3

    .line 242
    iget-object v5, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v4

    goto :goto_0

    .line 244
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v4

    .line 246
    :goto_0
    if-eqz v4, :cond_4

    .line 247
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    .line 249
    :cond_4
    invoke-static {v3}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 250
    const-string v0, "3gpp2"

    goto :goto_1

    .line 252
    :cond_5
    const-string v0, "3gpp"

    .line 254
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSmsFormat, phone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", subId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", smsFormat="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->log(Ljava/lang/String;)V

    .line 257
    .end local v1    # "subIds":[I
    .end local v2    # "subId":I
    .end local v3    # "dataNwType":I
    .end local v4    # "ss":Landroid/telephony/ServiceState;
    :goto_2
    return-object v0

    .line 225
    .end local v0    # "smsFormat":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "onReady is not called yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newImsSmsInd([BLjava/lang/String;)V
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 169
    .local v0, "token":I
    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mInboundSmsFormat:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-virtual {p0, v0, p2, p1}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->onSmsReceived(ILjava/lang/String;[B)V

    .line 171
    return-void
.end method

.method public newStatusReportInd([BLjava/lang/String;)V
    .locals 6
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "sms":Lcom/android/internal/telephony/SmsMessageBase;
    const-string v1, "3gpp"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    nop

    .line 133
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_0
    const-string v1, "3gpp2"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    nop

    .line 136
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 138
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 139
    .local v1, "mayAckHere":Z
    if-eqz v0, :cond_3

    .line 140
    iget v2, v0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    .line 142
    .local v2, "messageRef":I
    iget-object v3, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mToken:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 143
    .local v3, "token":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newStatusReportInd token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", messageRef="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pdu: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-direct {p0, v4}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->log(Ljava/lang/String;)V

    .line 145
    if-ltz v3, :cond_2

    .line 146
    const/4 v1, 0x0

    .line 147
    iget-object v4, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mInboundSmsFormat:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {p0, v3, v2, p2, p1}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->onSmsStatusReportReceived(IILjava/lang/String;[B)V

    goto :goto_1

    .line 150
    :cond_2
    const-string v4, "newStatusReportInd, token < 0, shouldn\'t be here"

    invoke-direct {p0, v4}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->loge(Ljava/lang/String;)V

    .line 152
    .end local v2    # "messageRef":I
    .end local v3    # "token":I
    :goto_1
    goto :goto_2

    .line 153
    :cond_3
    const-string v2, "newStatusReportInd, sms is null, shouldn\'t be here"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->loge(Ljava/lang/String;)V

    .line 155
    :goto_2
    if-eqz v1, :cond_6

    .line 156
    const-string v2, "3gpp"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 157
    iget-object v2, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    iget v4, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v3, v5}, Lcom/mediatek/ims/ImsService;->acknowledgeLastIncomingGsmSms(IZI)V

    goto :goto_3

    .line 158
    :cond_4
    const-string v2, "3gpp2"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 159
    iget-object v2, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    iget v4, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    const/4 v5, 0x2

    .line 160
    invoke-virtual {v2, v4, v3, v5}, Lcom/mediatek/ims/ImsService;->acknowledgeLastIncomingCdmaSms(IZI)V

    goto :goto_3

    .line 162
    :cond_5
    const-string v2, "SMS format error."

    invoke-direct {p0, v2}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->loge(Ljava/lang/String;)V

    .line 165
    :cond_6
    :goto_3
    return-void
.end method

.method public onReady()V
    .locals 1

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mIsReady:Z

    .line 268
    const-string v0, "onReady"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->log(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B

    .line 110
    iget-boolean v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mIsReady:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    iget v2, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/ims/ImsService;->sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 115
    return-void

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "onReady is not called yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendSmsRsp(IIII)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "status"    # I
    .param p4, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSmsRsp toke="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",messageRef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->log(Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mToken:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->onSendSmsResult(IIII)V

    .line 127
    return-void
.end method
