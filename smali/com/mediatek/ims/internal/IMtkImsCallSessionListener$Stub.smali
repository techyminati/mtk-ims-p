.class public abstract Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;
.super Landroid/os/Binder;
.source "IMtkImsCallSessionListener.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.internal.IMtkImsCallSessionListener"

.field static final TRANSACTION_callSessionDeviceSwitchFailed:I = 0x8

.field static final TRANSACTION_callSessionDeviceSwitched:I = 0x7

.field static final TRANSACTION_callSessionMergeComplete:I = 0x6

.field static final TRANSACTION_callSessionMergeStarted:I = 0x5

.field static final TRANSACTION_callSessionRedialEcc:I = 0x9

.field static final TRANSACTION_callSessionRttEventReceived:I = 0x4

.field static final TRANSACTION_callSessionTextCapabilityChanged:I = 0x3

.field static final TRANSACTION_callSessionTransferFailed:I = 0x2

.field static final TRANSACTION_callSessionTransferred:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
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

    .line 38
    const-string v9, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    .line 39
    .local v9, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v7, v0, :cond_3

    const/4 v0, 0x0

    packed-switch v7, :pswitch_data_0

    .line 162
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 153
    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 156
    .local v0, "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionRedialEcc(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    return v10

    .line 137
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_1
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v1

    .line 141
    .local v1, "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsReasonInfo;

    .local v0, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_0

    .line 145
    .end local v0    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :cond_0
    nop

    .line 147
    .restart local v0    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :goto_0
    invoke-virtual {v6, v1, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionDeviceSwitchFailed(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    return v10

    .line 128
    .end local v0    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    .end local v1    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_2
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 131
    .local v0, "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionDeviceSwitched(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    return v10

    .line 119
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_3
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 122
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    return v10

    .line 101
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_4
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v1

    .line 105
    .restart local v1    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v2

    .line 107
    .local v2, "_arg1":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    sget-object v0, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsCallProfile;

    .local v0, "_arg2":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_1

    .line 111
    .end local v0    # "_arg2":Landroid/telephony/ims/ImsCallProfile;
    :cond_1
    nop

    .line 113
    .restart local v0    # "_arg2":Landroid/telephony/ims/ImsCallProfile;
    :goto_1
    invoke-virtual {v6, v1, v2, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionMergeStarted(Lcom/mediatek/ims/internal/IMtkImsCallSession;Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    return v10

    .line 90
    .end local v0    # "_arg2":Landroid/telephony/ims/ImsCallProfile;
    .end local v1    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v2    # "_arg1":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_5
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 94
    .local v0, "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 95
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionRttEventReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;I)V

    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    return v10

    .line 73
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":I
    :pswitch_6
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v11

    .line 77
    .local v11, "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 79
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 81
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 83
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 84
    .local v15, "_arg4":I
    move-object v0, v6

    move-object v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionTextCapabilityChanged(Lcom/mediatek/ims/internal/IMtkImsCallSession;IIII)V

    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    return v10

    .line 57
    .end local v11    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":I
    :pswitch_7
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v1

    .line 61
    .local v1, "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsReasonInfo;

    .local v0, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_2

    .line 65
    .end local v0    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :cond_2
    nop

    .line 67
    .restart local v0    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :goto_2
    invoke-virtual {v6, v1, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionTransferFailed(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 68
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    return v10

    .line 48
    .end local v0    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    .end local v1    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_8
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionTransferred(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 52
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    return v10

    .line 43
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :cond_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v10

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
