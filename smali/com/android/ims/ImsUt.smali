.class public Lcom/android/ims/ImsUt;
.super Ljava/lang/Object;
.source "ImsUt.java"

# interfaces
.implements Lcom/android/ims/ImsUtInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsUt$IImsUtListenerProxy;
    }
.end annotation


# static fields
.field public static final CATEGORY_CB:Ljava/lang/String; = "CB"

.field public static final CATEGORY_CDIV:Ljava/lang/String; = "CDIV"

.field public static final CATEGORY_CONF:Ljava/lang/String; = "CONF"

.field public static final CATEGORY_CW:Ljava/lang/String; = "CW"

.field public static final CATEGORY_OIP:Ljava/lang/String; = "OIP"

.field public static final CATEGORY_OIR:Ljava/lang/String; = "OIR"

.field public static final CATEGORY_TIP:Ljava/lang/String; = "TIP"

.field public static final CATEGORY_TIR:Ljava/lang/String; = "TIR"

.field protected static final DBG:Z = true

.field public static final KEY_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_CATEGORY:Ljava/lang/String; = "category"

.field private static final SERVICE_CLASS_NONE:I = 0x0

.field private static final SERVICE_CLASS_VOICE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImsUt"


# instance fields
.field protected mLockObj:Ljava/lang/Object;

.field protected mPendingCmds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSsIndicationRegistrant:Landroid/os/Registrant;

.field private final miUt:Lcom/android/ims/internal/IImsUt;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsUt;)V
    .locals 3
    .param p1, "iUt"    # Lcom/android/ims/internal/IImsUt;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    .line 88
    iput-object p1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    .line 90
    iget-object v0, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    if-eqz v0, :cond_0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    new-instance v1, Lcom/android/ims/ImsUt$IImsUtListenerProxy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;-><init>(Lcom/android/ims/ImsUt;Lcom/android/ims/ImsUt$1;)V

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsUt;->setListener(Lcom/android/ims/internal/IImsUtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 96
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/ims/ImsUt;)Landroid/os/Registrant;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsUt;

    .line 45
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mSsIndicationRegistrant:Landroid/os/Registrant;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 9

    .line 99
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 102
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsUt;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    .line 107
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    .line 109
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/Map$Entry;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    .line 111
    .local v1, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 112
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v8, 0x322

    invoke-direct {v7, v8, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, v6, v7}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 111
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 118
    .end local v1    # "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    :cond_2
    monitor-exit v0

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isBinderAlive()Z
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 634
    const-string v0, "ImsUt"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 638
    const-string v0, "ImsUt"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 642
    const-string v0, "ImsUt"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 643
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCLIP :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsUt;->queryCLIP()I

    move-result v3

    .line 284
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 285
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 290
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    .end local v3    # "id":I
    goto :goto_0

    .line 295
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 291
    :catch_0
    move-exception v3

    .line 292
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 295
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 296
    return-void

    .line 295
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public queryCLIR(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCLIR :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsUt;->queryCLIR()I

    move-result v3

    .line 258
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 259
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 264
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    .end local v3    # "id":I
    goto :goto_0

    .line 269
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 265
    :catch_0
    move-exception v3

    .line 266
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 269
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public queryCOLP(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCOLP :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsUt;->queryCOLP()I

    move-result v3

    .line 336
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 337
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 342
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 346
    .end local v3    # "id":I
    goto :goto_0

    .line 347
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 343
    :catch_0
    move-exception v3

    .line 344
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 347
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 348
    return-void

    .line 347
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public queryCOLR(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCOLR :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsUt;->queryCOLR()I

    move-result v3

    .line 310
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 311
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 316
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    .end local v3    # "id":I
    goto :goto_0

    .line 321
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 317
    :catch_0
    move-exception v3

    .line 318
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 321
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 322
    return-void

    .line 321
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public queryCallBarring(ILandroid/os/Message;)V
    .locals 1
    .param p1, "cbType"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/ims/ImsUt;->queryCallBarring(ILandroid/os/Message;I)V

    .line 153
    return-void
.end method

.method public queryCallBarring(ILandroid/os/Message;I)V
    .locals 6
    .param p1, "cbType"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "serviceClass"    # I

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallBarring :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cbType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1, p3}, Lcom/android/ims/internal/IImsUt;->queryCallBarringForServiceClass(II)I

    move-result v3

    .line 174
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 175
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 180
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    .end local v3    # "id":I
    goto :goto_0

    .line 185
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 181
    :catch_0
    move-exception v3

    .line 182
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 185
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 186
    return-void

    .line 185
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public queryCallForward(ILjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallForward :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ImsUt"

    .line 196
    invoke-static {v1, p2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1, p2}, Lcom/android/ims/internal/IImsUt;->queryCallForward(ILjava/lang/String;)I

    move-result v3

    .line 203
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 204
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 209
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    .end local v3    # "id":I
    goto :goto_0

    .line 214
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 210
    :catch_0
    move-exception v3

    .line 211
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 214
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 215
    return-void

    .line 214
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public queryCallWaiting(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallWaiting :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsUt;->queryCallWaiting()I

    move-result v3

    .line 231
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 232
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 237
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    .end local v3    # "id":I
    goto :goto_0

    .line 242
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 238
    :catch_0
    move-exception v3

    .line 239
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 242
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 243
    return-void

    .line 242
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public registerForSuppServiceIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 128
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/ims/ImsUt;->mSsIndicationRegistrant:Landroid/os/Registrant;

    .line 129
    return-void
.end method

.method protected sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 597
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 604
    :cond_0
    iget-object v0, p2, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 605
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "errorString":Ljava/lang/String;
    goto :goto_0

    .line 609
    .end local v0    # "errorString":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 611
    .restart local v0    # "errorString":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    new-instance v2, Lcom/android/ims/ImsException;

    iget v3, p2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    invoke-direct {v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    invoke-static {p1, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 612
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 613
    return-void

    .line 598
    .end local v0    # "errorString":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void
.end method

.method protected sendSuccessReport(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 616
    if-nez p1, :cond_0

    .line 617
    return-void

    .line 620
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 621
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 622
    return-void
.end method

.method protected sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "ssInfo"    # Ljava/lang/Object;

    .line 625
    if-nez p1, :cond_0

    .line 626
    return-void

    .line 629
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 630
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 631
    return-void
.end method

.method public transact(Landroid/os/Bundle;Landroid/os/Message;)V
    .locals 6
    .param p1, "ssInfo"    # Landroid/os/Bundle;
    .param p2, "result"    # Landroid/os/Message;

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transact :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ssInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1}, Lcom/android/ims/internal/IImsUt;->transact(Landroid/os/Bundle;)I

    move-result v3

    .line 582
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 583
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 588
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 592
    .end local v3    # "id":I
    goto :goto_0

    .line 593
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 589
    :catch_0
    move-exception v3

    .line 590
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 593
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 594
    return-void

    .line 593
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public unregisterForSuppServiceIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 135
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mSsIndicationRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 136
    return-void
.end method

.method public updateCLIP(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCLIP :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 496
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1}, Lcom/android/ims/internal/IImsUt;->updateCLIP(Z)I

    move-result v3

    .line 498
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 499
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 504
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 508
    .end local v3    # "id":I
    goto :goto_0

    .line 509
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 505
    :catch_0
    move-exception v3

    .line 506
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 509
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 510
    return-void

    .line 509
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public updateCLIR(ILandroid/os/Message;)V
    .locals 6
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCLIR :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clirMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1}, Lcom/android/ims/internal/IImsUt;->updateCLIR(I)I

    move-result v3

    .line 471
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 472
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 477
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 481
    .end local v3    # "id":I
    goto :goto_0

    .line 482
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 478
    :catch_0
    move-exception v3

    .line 479
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 482
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 483
    return-void

    .line 482
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public updateCOLP(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallWaiting :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1}, Lcom/android/ims/internal/IImsUt;->updateCOLP(Z)I

    move-result v3

    .line 552
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 553
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 558
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 562
    .end local v3    # "id":I
    goto :goto_0

    .line 563
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 559
    :catch_0
    move-exception v3

    .line 560
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 563
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 564
    return-void

    .line 563
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public updateCOLR(ILandroid/os/Message;)V
    .locals 6
    .param p1, "presentation"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCOLR :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", presentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1}, Lcom/android/ims/internal/IImsUt;->updateCOLR(I)I

    move-result v3

    .line 525
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 526
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 531
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 535
    .end local v3    # "id":I
    goto :goto_0

    .line 536
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 532
    :catch_0
    move-exception v3

    .line 533
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 536
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 537
    return-void

    .line 536
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;)V
    .locals 6
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "result"    # Landroid/os/Message;
    .param p4, "barrList"    # [Ljava/lang/String;

    .line 356
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/ims/ImsUt;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;I)V

    .line 357
    return-void
.end method

.method public updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;I)V
    .locals 6
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "result"    # Landroid/os/Message;
    .param p4, "barrList"    # [Ljava/lang/String;
    .param p5, "serviceClass"    # I

    .line 366
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 367
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 368
    .local v1, "bList":Ljava/lang/String;
    move v2, v0

    .local v2, "i":I
    :goto_0
    array-length v3, p4

    if-ge v2, v3, :cond_0

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallBarring :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cbType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", serviceClass="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", barrList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 374
    .end local v1    # "bList":Ljava/lang/String;
    goto :goto_1

    .line 376
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallBarring :: Ut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cbType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", serviceClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 381
    :goto_1
    iget-object v1, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 383
    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1, p2, p4, p5}, Lcom/android/ims/internal/IImsUt;->updateCallBarringForServiceClass(II[Ljava/lang/String;I)I

    move-result v3

    .line 386
    .local v3, "id":I
    if-gez v3, :cond_2

    .line 387
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 392
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 396
    .end local v3    # "id":I
    goto :goto_2

    .line 397
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 393
    :catch_0
    move-exception v3

    .line 394
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 397
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v1

    .line 398
    return-void

    .line 397
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public updateCallForward(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 9
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I
    .param p6, "result"    # Landroid/os/Message;

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallForward :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ImsUt"

    .line 408
    invoke-static {v1, p3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 414
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/android/ims/internal/IImsUt;->updateCallForward(IILjava/lang/String;II)I

    move-result v3

    .line 416
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 417
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p6, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 422
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 426
    .end local v3    # "id":I
    goto :goto_0

    .line 427
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 423
    :catch_0
    move-exception v3

    .line 424
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p6, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 427
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 428
    return-void

    .line 427
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public updateCallWaiting(ZILandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallWaiting :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1, p2}, Lcom/android/ims/internal/IImsUt;->updateCallWaiting(ZI)I

    move-result v3

    .line 444
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 445
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 450
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 454
    .end local v3    # "id":I
    goto :goto_0

    .line 455
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 451
    :catch_0
    move-exception v3

    .line 452
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 455
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 456
    return-void

    .line 455
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
