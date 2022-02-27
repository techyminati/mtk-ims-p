.class public abstract Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;
.super Landroid/os/Binder;
.source "IMtkImsCallSession.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsCallSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.internal.IMtkImsCallSession"

.field static final TRANSACTION_callTerminated:I = 0x12

.field static final TRANSACTION_cancelDeviceSwitch:I = 0xc

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_deviceSwitch:I = 0xb

.field static final TRANSACTION_explicitCallTransfer:I = 0x9

.field static final TRANSACTION_getCallId:I = 0x2

.field static final TRANSACTION_getCallProfile:I = 0x3

.field static final TRANSACTION_getIImsCallSession:I = 0x5

.field static final TRANSACTION_isIncomingCallMultiparty:I = 0x7

.field static final TRANSACTION_notifyDeviceSwitchFailed:I = 0xf

.field static final TRANSACTION_notifyDeviceSwitched:I = 0x10

.field static final TRANSACTION_notifyRttECCRedialEvent:I = 0xd

.field static final TRANSACTION_notifyTextCapabilityChanged:I = 0xe

.field static final TRANSACTION_resume:I = 0x11

.field static final TRANSACTION_sendDtmfbyTarget:I = 0x8

.field static final TRANSACTION_setIImsCallSession:I = 0x6

.field static final TRANSACTION_setListener:I = 0x4

.field static final TRANSACTION_unattendedCallTransfer:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSession"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsCallSession;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsCallSession;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSession"

    .line 39
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 227
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 220
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->callTerminated()V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    return v2

    .line 213
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->resume()V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    return v2

    .line 206
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->notifyDeviceSwitched()V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    return v2

    .line 192
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    .local v1, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_0

    .line 198
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :cond_0
    nop

    .line 200
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->notifyDeviceSwitchFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    return v2

    .line 177
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 181
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 183
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 185
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 186
    .local v5, "_arg3":I
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->notifyTextCapabilityChanged(IIII)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    return v2

    .line 170
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->notifyRttECCRedialEvent()V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    return v2

    .line 163
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->cancelDeviceSwitch()V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    return v2

    .line 152
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->deviceSwitch(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    return v2

    .line 141
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 145
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 146
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->unattendedCallTransfer(Ljava/lang/String;I)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    return v2

    .line 134
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->explicitCallTransfer()V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    return v2

    .line 111
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v3, v3

    .line 115
    .local v3, "_arg0":C
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    sget-object v4, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .local v4, "_arg1":Landroid/os/Message;
    goto :goto_1

    .line 119
    .end local v4    # "_arg1":Landroid/os/Message;
    :cond_1
    move-object v4, v1

    .line 122
    .restart local v4    # "_arg1":Landroid/os/Message;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 123
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .local v1, "_arg2":Landroid/os/Messenger;
    goto :goto_2

    .line 126
    .end local v1    # "_arg2":Landroid/os/Messenger;
    :cond_2
    nop

    .line 128
    .restart local v1    # "_arg2":Landroid/os/Messenger;
    :goto_2
    invoke-virtual {p0, v3, v4, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->sendDtmfbyTarget(CLandroid/os/Message;Landroid/os/Messenger;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    return v2

    .line 103
    .end local v1    # "_arg2":Landroid/os/Messenger;
    .end local v3    # "_arg0":C
    .end local v4    # "_arg1":Landroid/os/Message;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->isIncomingCallMultiparty()Z

    move-result v1

    .line 105
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    return v2

    .line 94
    .end local v1    # "_result":Z
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    .line 97
    .local v1, "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->setIImsCallSession(Lcom/android/ims/internal/IImsCallSession;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    return v2

    .line 86
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->getIImsCallSession()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 88
    .local v3, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 90
    return v2

    .line 77
    .end local v3    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v1

    .line 80
    .local v1, "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->setListener(Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    return v2

    .line 63
    .end local v1    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    .line 65
    .local v1, "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v1, :cond_4

    .line 67
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    invoke-virtual {v1, p3, v2}, Landroid/telephony/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 71
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    :goto_3
    return v2

    .line 55
    .end local v1    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->getCallId()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v2

    .line 48
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->close()V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    return v2

    .line 43
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
