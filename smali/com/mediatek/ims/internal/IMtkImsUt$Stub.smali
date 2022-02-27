.class public abstract Lcom/mediatek/ims/internal/IMtkImsUt$Stub;
.super Landroid/os/Binder;
.source "IMtkImsUt.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsUt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsUt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsUt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.internal.IMtkImsUt"

.field static final TRANSACTION_getUtIMPUFromNetwork:I = 0x2

.field static final TRANSACTION_getXcapConflictErrorMessage:I = 0x9

.field static final TRANSACTION_isSupportCFT:I = 0x7

.field static final TRANSACTION_processECT:I = 0x6

.field static final TRANSACTION_queryCallForwardInTimeSlot:I = 0x3

.field static final TRANSACTION_setListener:I = 0x1

.field static final TRANSACTION_setupXcapUserAgentString:I = 0x8

.field static final TRANSACTION_updateCallBarringForServiceClass:I = 0x5

.field static final TRANSACTION_updateCallForwardInTimeSlot:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.mediatek.ims.internal.IMtkImsUt"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsUt;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.mediatek.ims.internal.IMtkImsUt"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsUt;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsUt;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsUt$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 38
    const-string v10, "com.mediatek.ims.internal.IMtkImsUt"

    .line 39
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_2

    packed-switch v7, :pswitch_data_0

    .line 157
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 149
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->getXcapConflictErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    return v11

    .line 140
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->setupXcapUserAgentString(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    return v11

    .line 132
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->isSupportCFT()Z

    move-result v0

    .line 134
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    return v11

    .line 111
    .end local v0    # "_result":Z
    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .local v0, "_arg0":Landroid/os/Message;
    goto :goto_0

    .line 117
    .end local v0    # "_arg0":Landroid/os/Message;
    :cond_0
    move-object v0, v1

    .line 120
    .restart local v0    # "_arg0":Landroid/os/Message;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .local v1, "_arg1":Landroid/os/Messenger;
    goto :goto_1

    .line 124
    .end local v1    # "_arg1":Landroid/os/Messenger;
    :cond_1
    nop

    .line 126
    .restart local v1    # "_arg1":Landroid/os/Messenger;
    :goto_1
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->processECT(Landroid/os/Message;Landroid/os/Messenger;)V

    .line 127
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    return v11

    .line 93
    .end local v0    # "_arg0":Landroid/os/Message;
    .end local v1    # "_arg1":Landroid/os/Messenger;
    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 97
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 99
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 101
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v15

    .line 103
    .local v15, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 104
    .local v16, "_arg4":I
    move-object v0, v6

    move-object v1, v12

    move v2, v13

    move v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->updateCallBarringForServiceClass(Ljava/lang/String;II[Ljava/lang/String;I)I

    move-result v0

    .line 105
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    return v11

    .line 75
    .end local v0    # "_result":I
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":[Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 79
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 81
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 83
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 85
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v16

    .line 86
    .local v16, "_arg4":[J
    move-object v0, v6

    move v1, v12

    move v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->updateCallForwardInTimeSlot(IILjava/lang/String;I[J)I

    move-result v0

    .line 87
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    return v11

    .line 65
    .end local v0    # "_result":I
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":[J
    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->queryCallForwardInTimeSlot(I)I

    move-result v1

    .line 69
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return v11

    .line 57
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->getUtIMPUFromNetwork()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return v11

    .line 48
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsUtListener;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Lcom/mediatek/ims/internal/IMtkImsUtListener;
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->setListener(Lcom/mediatek/ims/internal/IMtkImsUtListener;)V

    .line 52
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    return v11

    .line 43
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsUtListener;
    :cond_2
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
