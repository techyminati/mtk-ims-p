.class public Lcom/mediatek/ims/ImsAdapter$ImsaIndication;
.super Lvendor/mediatek/hardware/imsa/V1_0/IImsaIndication$Stub;
.source "ImsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImsaIndication"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ImsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsAdapter;

    .line 344
    iput-object p1, p0, Lcom/mediatek/ims/ImsAdapter$ImsaIndication;->this$0:Lcom/mediatek/ims/ImsAdapter;

    invoke-direct {p0}, Lvendor/mediatek/hardware/imsa/V1_0/IImsaIndication$Stub;-><init>()V

    return-void
.end method

.method private arrayListTobyte(Ljava/util/ArrayList;I)[B
    .locals 4
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I)[B"
        }
    .end annotation

    .line 346
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-array v0, p2, [B

    .line 347
    .local v0, "byteList":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 349
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    .end local v1    # "i":I
    :cond_0
    const-string v1, "@M_[ImsAdapter]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMSA HIDL : arrayListTobyte, byteList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-object v0
.end method


# virtual methods
.method public readEvent(Ljava/util/ArrayList;II)V
    .locals 6
    .param p2, "request_id"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;II)V"
        }
    .end annotation

    .line 356
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-string v0, "@M_[ImsAdapter]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readEvent : data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", request_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-direct {p0, p1, p3}, Lcom/mediatek/ims/ImsAdapter$ImsaIndication;->arrayListTobyte(Ljava/util/ArrayList;I)[B

    move-result-object v0

    .line 363
    .local v0, "buf":[B
    move v1, p2

    .line 365
    .local v1, "requestId":I
    const-string v2, "persist.vendor.mims_support"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v3, :cond_0

    .line 366
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x18

    .line 367
    .local v2, "phoneId":I
    const-string v3, "@M_[ImsAdapter]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DUAL IMS Phone ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    .end local v2    # "phoneId":I
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter$Util;->getDefaultVoltePhoneId()I

    move-result v2

    .line 372
    .restart local v2    # "phoneId":I
    :goto_0
    const v3, 0xffffff

    and-int/2addr v1, v3

    .line 374
    new-instance v3, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    invoke-direct {v3, v2, v1, p3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(III)V

    .line 375
    .local v3, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    invoke-virtual {v3, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 377
    nop

    .line 378
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 379
    .local v4, "msg":Landroid/os/Message;
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 380
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter;->access$200()Lcom/mediatek/ims/ImsEventDispatcher;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mediatek/ims/ImsEventDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 382
    .end local v4    # "msg":Landroid/os/Message;
    return-void
.end method
