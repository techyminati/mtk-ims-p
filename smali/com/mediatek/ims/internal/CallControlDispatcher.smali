.class public Lcom/mediatek/ims/internal/CallControlDispatcher;
.super Ljava/lang/Object;
.source "CallControlDispatcher.java"

# interfaces
.implements Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;


# static fields
.field private static final IMC_PROGRESS_NOTIFY_CONFERENCE:I = 0x101

.field private static final IMC_PROGRESS_NOTIFY_DIALOG:I = 0x100

.field private static final IMC_PROGRESS_NOTIFY_MWI:I = 0x102

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final SENLOG:Z

.field private static final TAG:Ljava/lang/String; = "[CallControlDispatcher]"

.field private static final TELDBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/internal/CallControlDispatcher;->SENLOG:Z

    .line 27
    const-string v0, "persist.vendor.log.tel_dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    sput-boolean v1, Lcom/mediatek/ims/internal/CallControlDispatcher;->TELDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "IO"    # Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/mediatek/ims/internal/CallControlDispatcher;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/mediatek/ims/internal/CallControlDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 36
    return-void
.end method

.method private getDataLength([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "originLen"    # I

    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 117
    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    .line 118
    return v0

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    return v0
.end method


# virtual methods
.method public disableRequest(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 43
    const-string v0, "[CallControlDispatcher]"

    const-string v1, "disableRequest()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public enableRequest(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 39
    const-string v0, "[CallControlDispatcher]"

    const-string v1, "enableRequest()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 11
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 56
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v0

    .line 57
    .local v0, "requestId":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v1

    .line 58
    .local v1, "len":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v2

    .line 59
    .local v2, "callId":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v3

    .line 60
    .local v3, "phoneId":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v4

    .line 61
    .local v4, "serviceId":I
    const/16 v5, 0xfa0

    invoke-virtual {p1, v5}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v6

    .line 62
    .local v6, "byteData":[B
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    .line 63
    .local v7, "data":Ljava/lang/String;
    invoke-direct {p0, v6, v5}, Lcom/mediatek/ims/internal/CallControlDispatcher;->getDataLength([BI)I

    move-result v5

    move v1, v5

    .line 65
    sget-boolean v5, Lcom/mediatek/ims/internal/CallControlDispatcher;->SENLOG:Z

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/mediatek/ims/internal/CallControlDispatcher;->TELDBG:Z

    if-eqz v5, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    const-string v5, "[CallControlDispatcher]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", callId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", phoneId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", serviceId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", data = [hidden]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    const-string v5, "[CallControlDispatcher]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", callId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", phoneId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", serviceId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", data = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 66
    invoke-static {v5, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 103
    const-string v5, "[CallControlDispatcher]"

    goto :goto_2

    .line 79
    :pswitch_0
    new-instance v5, Landroid/content/Intent;

    const-string v8, "mediatek.intent.action.lte.mwi"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v5, "intent":Landroid/content/Intent;
    const-string v8, "lte_mwi_body"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v8, "phone.id"

    invoke-virtual {v5, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    iget-object v8, p0, Lcom/mediatek/ims/internal/CallControlDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 83
    const-string v8, "[CallControlDispatcher]"

    const-string v9, "Message Waiting Message is sent."

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    goto :goto_3

    .line 87
    .end local v5    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.ims.conference"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v9, "message.content"

    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v8, "call.id"

    invoke-virtual {v5, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string v8, "phone.id"

    invoke-virtual {v5, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    iget-object v8, p0, Lcom/mediatek/ims/internal/CallControlDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 92
    const-string v8, "[CallControlDispatcher]"

    const-string v9, "Conference call XML message is sent."

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    goto :goto_3

    .line 95
    .end local v5    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.mediatek.intent.action.ims.dialogEventPackage"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v9, "com.mediatek.intent.extra.DEP_CONTENT"

    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v8, "call.id"

    invoke-virtual {v5, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    const-string v8, "phone.id"

    invoke-virtual {v5, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    iget-object v8, p0, Lcom/mediatek/ims/internal/CallControlDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    const-string v8, "[CallControlDispatcher]"

    const-string v9, "Dialog event package intent is sent."

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    goto :goto_3

    .line 103
    .end local v5    # "intent":Landroid/content/Intent;
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unkonwn serviceId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v0    # "requestId":I
    .end local v1    # "len":I
    .end local v2    # "callId":I
    .end local v3    # "phoneId":I
    .end local v4    # "serviceId":I
    .end local v6    # "byteData":[B
    .end local v7    # "data":Ljava/lang/String;
    :goto_3
    goto :goto_4

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
