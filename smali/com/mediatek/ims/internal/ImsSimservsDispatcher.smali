.class public Lcom/mediatek/ims/internal/ImsSimservsDispatcher;
.super Ljava/lang/Object;
.source "ImsSimservsDispatcher.java"

# interfaces
.implements Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;


# static fields
.field private static final DUMP_TRANSACTION:Z = true

.field private static final IMC_MAX_XUI_LEN:I = 0x200

.field private static final TAG:Ljava/lang/String; = "ImsSimservsDispatcher"

.field private static sInstance:Lcom/mediatek/ims/internal/ImsSimservsDispatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Ljava/lang/Thread;

.field private mPhone:Landroid/provider/ContactsContract$CommonDataKinds$Phone;

.field private mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "io"    # Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1;-><init>(Lcom/mediatek/ims/internal/ImsSimservsDispatcher;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mHandlerThread:Ljava/lang/Thread;

    .line 75
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 77
    sput-object p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->sInstance:Lcom/mediatek/ims/internal/ImsSimservsDispatcher;

    .line 78
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/ims/internal/ImsSimservsDispatcher;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsSimservsDispatcher;
    .param p1, "x1"    # Landroid/os/Handler;

    .line 27
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 27
    invoke-static {p0}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/ims/internal/ImsSimservsDispatcher;Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsSimservsDispatcher;
    .param p1, "x1"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 27
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->handleXuiUpdate(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    return-void
.end method

.method public static getInstance()Lcom/mediatek/ims/internal/ImsSimservsDispatcher;
    .locals 1

    .line 82
    sget-object v0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->sInstance:Lcom/mediatek/ims/internal/ImsSimservsDispatcher;

    return-object v0
.end method

.method private handleXuiUpdate(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 132
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v0

    .line 133
    .local v0, "length":I
    invoke-virtual {p1, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v1

    .line 134
    .local v1, "byteArray":[B
    const/4 v2, 0x0

    .line 135
    .local v2, "xui":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v3

    .line 137
    .local v3, "phoneId":I
    if-nez v1, :cond_0

    .line 138
    const-string v4, "handleXuiUpdate event.getBytes() = null"

    invoke-static {v4}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->log(Ljava/lang/String;)V

    .line 139
    return-void

    .line 143
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 146
    goto :goto_0

    .line 144
    :catch_0
    move-exception v4

    .line 145
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 148
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleXuiUpdate xui="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->log(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v4

    .line 150
    .local v4, "xuim":Lcom/mediatek/ims/internal/ImsXuiManager;
    invoke-virtual {v4, v3, v2}, Lcom/mediatek/ims/internal/ImsXuiManager;->setXui(ILjava/lang/String;)V

    .line 152
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_1

    .line 153
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.mediatek.ims.action.self_identify_update"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "android:phone_id"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    iget-object v6, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 157
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .line 160
    const-string v0, "@M_ImsSimservsDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ims] ImsSimservsDispatcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method private sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsSimservsDispatcher send event ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->log(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    .line 121
    return-void
.end method


# virtual methods
.method public disableRequest(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 97
    return-void
.end method

.method public enableRequest(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 90
    return-void
.end method

.method public setSocket(Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V
    .locals 0
    .param p1, "socket"    # Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 114
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 115
    return-void
.end method

.method public vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 108
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 109
    return-void
.end method
