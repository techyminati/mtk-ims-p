.class public Lcom/mediatek/ims/ImsEventPackageAdapter;
.super Ljava/lang/Object;
.source "ImsEventPackageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;
    }
.end annotation


# static fields
.field static final EVENT_IMS_DIALOG_INDICATION:I = 0x1

.field static final EVENT_LTE_MESSAGE_WAITING:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "ImsEventPackageAdapter"

.field private static final TAG_DOUBLE_QUOTE:Ljava/lang/String; = "<ascii_34>"

.field private static final TAG_NEXT_LINE:Ljava/lang/String; = "<ascii_10>"

.field private static final TAG_RETURN:Ljava/lang/String; = "<ascii_13>"

.field private static final TYPE_CONFERENCE_EVT_PKG:I = 0x1

.field private static final TYPE_DIALOG_EVT_PKG:I = 0x2

.field private static final TYPE_MWI:I = 0x3


# instance fields
.field private mCEPData:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDEPData:Ljava/lang/String;

.field private mHandler:Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;

.field private mImsRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mMWIData:Ljava/lang/String;

.field private mPhoneId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "imsRilAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p4, "phoneId"    # I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, "ImsEventPackageAdapter"

    const-string v1, "ImsEventPackageAdapter()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;-><init>(Lcom/mediatek/ims/ImsEventPackageAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mHandler:Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;

    .line 86
    iput-object p3, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mImsRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 87
    iput-object p1, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mContext:Landroid/content/Context;

    .line 88
    iput p4, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mPhoneId:I

    .line 89
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mImsRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mHandler:Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForLteMsgWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mImsRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mHandler:Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForImsDialog(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ImsEventPackageAdapter;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsEventPackageAdapter;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsEventPackageAdapter;->handleLetMessageWaiting([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ImsEventPackageAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsEventPackageAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 57
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsEventPackageAdapter;->handleDialogEventPackage(Ljava/util/ArrayList;)V

    return-void
.end method

.method private concatData(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "isFirst"    # Z
    .param p2, "origData"    # Ljava/lang/String;
    .param p3, "appendData"    # Ljava/lang/String;

    .line 140
    if-eqz p1, :cond_0

    .line 141
    return-object p3

    .line 143
    :cond_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleDialogEventPackage(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/radio/V3_0/Dialog;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p1, "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/Dialog;>;"
    const-string v0, "ImsEventPackageAdapter"

    const-string v1, "handleDialogEventPackage()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/ims/ImsExternalCallState;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/mediatek/hardware/radio/V3_0/Dialog;

    .line 158
    .local v2, "dialog":Lvendor/mediatek/hardware/radio/V3_0/Dialog;
    iget-object v3, v2, Lvendor/mediatek/hardware/radio/V3_0/Dialog;->address:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 159
    .local v3, "addr":Landroid/net/Uri;
    new-instance v11, Landroid/telephony/ims/ImsExternalCallState;

    iget v5, v2, Lvendor/mediatek/hardware/radio/V3_0/Dialog;->dialogId:I

    iget-boolean v7, v2, Lvendor/mediatek/hardware/radio/V3_0/Dialog;->isPullable:Z

    iget v8, v2, Lvendor/mediatek/hardware/radio/V3_0/Dialog;->callState:I

    iget v9, v2, Lvendor/mediatek/hardware/radio/V3_0/Dialog;->callType:I

    iget-boolean v10, v2, Lvendor/mediatek/hardware/radio/V3_0/Dialog;->isCallHeld:Z

    move-object v4, v11

    move-object v6, v3

    invoke-direct/range {v4 .. v10}, Landroid/telephony/ims/ImsExternalCallState;-><init>(ILandroid/net/Uri;ZIIZ)V

    .line 162
    .local v4, "exCallState":Landroid/telephony/ims/ImsExternalCallState;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    const-string v5, "ImsEventPackageAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleDialogEventPackage exCallState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lvendor/mediatek/hardware/radio/V3_0/Dialog;->dialogId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lvendor/mediatek/hardware/radio/V3_0/Dialog;->address:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v2, Lvendor/mediatek/hardware/radio/V3_0/Dialog;->isPullable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget v7, v2, Lvendor/mediatek/hardware/radio/V3_0/Dialog;->callState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v7, v2, Lvendor/mediatek/hardware/radio/V3_0/Dialog;->callType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v7, v2, Lvendor/mediatek/hardware/radio/V3_0/Dialog;->isCallHeld:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v2    # "dialog":Lvendor/mediatek/hardware/radio/V3_0/Dialog;
    .end local v3    # "addr":Landroid/net/Uri;
    .end local v4    # "exCallState":Landroid/telephony/ims/ImsExternalCallState;
    goto :goto_0

    .line 167
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.intent.action.ims.dialogEventPackage"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.mediatek.intent.extra.DEP_CONTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 169
    iget-object v2, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 170
    return-void
.end method

.method private handleLetMessageWaiting([Ljava/lang/String;)V
    .locals 10
    .param p1, "msg"    # [Ljava/lang/String;

    .line 99
    const-string v0, "ImsEventPackageAdapter"

    const-string v1, "handleLetMessageWaiting()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x4

    .line 101
    .local v0, "intDataCount":I
    new-array v1, v0, [I

    .line 103
    .local v1, "intData":[I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 104
    :try_start_0
    aget-object v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "ImsEventPackageAdapter"

    const-string v4, "handleLetMessageWaiting failed: invalid params"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void

    .line 109
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    nop

    .line 111
    aget v3, v1, v2

    .line 112
    .local v3, "callId":I
    const/4 v4, 0x2

    aget v4, v1, v4

    .line 113
    .local v4, "urcIdx":I
    const/4 v5, 0x3

    aget v5, v1, v5

    .line 114
    .local v5, "totalUrcCount":I
    const/4 v6, 0x4

    aget-object v6, p1, v6

    .line 116
    .local v6, "rawData":Ljava/lang/String;
    array-length v7, p1

    const/4 v8, 0x6

    if-lt v7, v8, :cond_1

    .line 117
    const/4 v7, 0x5

    aget-object v7, p1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 118
    .local v7, "phoneId":I
    iget v8, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mPhoneId:I

    if-eq v8, v7, :cond_1

    .line 119
    const-string v2, "ImsEventPackageAdapter"

    const-string v8, "handleLetMessageWaiting ignore, not the correct phone id"

    invoke-static {v2, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void

    .line 124
    .end local v7    # "phoneId":I
    :cond_1
    const/4 v7, 0x1

    if-ne v4, v7, :cond_2

    move v2, v7

    nop

    .line 125
    .local v2, "isFirstPkt":Z
    :cond_2
    iget-object v7, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mMWIData:Ljava/lang/String;

    invoke-direct {p0, v2, v7, v6}, Lcom/mediatek/ims/ImsEventPackageAdapter;->concatData(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mMWIData:Ljava/lang/String;

    .line 126
    if-ne v4, v5, :cond_4

    iget-object v7, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mContext:Landroid/content/Context;

    if-nez v7, :cond_3

    goto :goto_1

    .line 130
    :cond_3
    iget-object v7, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mMWIData:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/mediatek/ims/ImsEventPackageAdapter;->recoverDataFromAsciiTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mMWIData:Ljava/lang/String;

    .line 132
    new-instance v7, Landroid/content/Intent;

    const-string v8, "mediatek.intent.action.lte.mwi"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v7, "intent":Landroid/content/Intent;
    const-string v8, "lte_mwi_body"

    iget-object v9, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mMWIData:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v8, "phone.id"

    iget v9, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mPhoneId:I

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    iget-object v8, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    return-void

    .line 128
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_1
    return-void
.end method

.method private recoverDataFromAsciiTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 147
    const-string v0, "<ascii_13>"

    const-string v1, "\r"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 148
    const-string v0, "<ascii_34>"

    const-string v1, "\""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 149
    const-string v0, "<ascii_10>"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 150
    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mImsRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mHandler:Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForLteMsgWaiting(Landroid/os/Handler;)V

    .line 95
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mImsRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mHandler:Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForImsDialog(Landroid/os/Handler;)V

    .line 96
    return-void
.end method
