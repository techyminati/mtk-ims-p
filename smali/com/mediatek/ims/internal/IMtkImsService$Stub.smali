.class public abstract Lcom/mediatek/ims/internal/IMtkImsService$Stub;
.super Landroid/os/Binder;
.source "IMtkImsService.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.internal.IMtkImsService"

.field static final TRANSACTION_UpdateImsState:I = 0x9

.field static final TRANSACTION_addImsSmsListener:I = 0x11

.field static final TRANSACTION_createMtkCallSession:I = 0x2

.field static final TRANSACTION_deregisterIms:I = 0x7

.field static final TRANSACTION_getConfigInterfaceEx:I = 0xa

.field static final TRANSACTION_getCurrentCallCount:I = 0xf

.field static final TRANSACTION_getImsNetworkState:I = 0x10

.field static final TRANSACTION_getImsRegUriType:I = 0x5

.field static final TRANSACTION_getImsState:I = 0x4

.field static final TRANSACTION_getModemMultiImsCount:I = 0xe

.field static final TRANSACTION_getMtkUtInterface:I = 0xc

.field static final TRANSACTION_getPendingMtkCallSession:I = 0x3

.field static final TRANSACTION_getUtInterface:I = 0xb

.field static final TRANSACTION_hangupAllCall:I = 0x6

.field static final TRANSACTION_isCameraAvailable:I = 0x14

.field static final TRANSACTION_registerProprietaryImsListener:I = 0x13

.field static final TRANSACTION_runGbaAuthentication:I = 0xd

.field static final TRANSACTION_sendSms:I = 0x12

.field static final TRANSACTION_setCallIndication:I = 0x1

.field static final TRANSACTION_updateRadioState:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "com.mediatek.ims.internal.IMtkImsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsService;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsService;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 41
    const-string v12, "com.mediatek.ims.internal.IMtkImsService"

    .line 42
    .local v12, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v13, 0x1

    if-eq v9, v0, :cond_a

    const/4 v6, 0x0

    const/4 v0, 0x0

    packed-switch v9, :pswitch_data_0

    .line 292
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 284
    :pswitch_0
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->isCameraAvailable()Z

    move-result v0

    .line 286
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    return v13

    .line 273
    .end local v0    # "_result":Z
    :pswitch_1
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 277
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v1

    .line 278
    .local v1, "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->registerProprietaryImsListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    return v13

    .line 252
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    :pswitch_2
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 256
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 258
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 260
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 262
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 264
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v6, v13

    nop

    .line 266
    .local v6, "_arg5":Z
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v19

    .line 267
    .local v19, "_arg6":[B
    move-object v0, v8

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    return v13

    .line 241
    .end local v6    # "_arg5":Z
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg6":[B
    :pswitch_3
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 245
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsSmsListener;

    move-result-object v1

    .line 246
    .local v1, "_arg1":Landroid/telephony/ims/aidl/IImsSmsListener;
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->addImsSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    return v13

    .line 231
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/aidl/IImsSmsListener;
    :pswitch_4
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 234
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getImsNetworkState(I)[I

    move-result-object v1

    .line 235
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 237
    return v13

    .line 221
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_5
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 224
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getCurrentCallCount(I)I

    move-result v1

    .line 225
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    return v13

    .line 213
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_6
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getModemMultiImsCount()I

    move-result v0

    .line 215
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    return v13

    .line 189
    .end local v0    # "_result":I
    :pswitch_7
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 195
    .local v14, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v3, v13

    goto :goto_0

    :cond_1
    move v3, v6

    .line 197
    .local v3, "_arg2":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 199
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 200
    .local v16, "_arg4":I
    move-object v0, v8

    move-object v1, v7

    move-object v2, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->runGbaAuthentication(Ljava/lang/String;[BZII)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v0

    .line 201
    .local v0, "_result":Lcom/mediatek/gba/NafSessionKey;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    if-eqz v0, :cond_2

    .line 203
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    invoke-virtual {v0, v11, v13}, Lcom/mediatek/gba/NafSessionKey;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 207
    :cond_2
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    :goto_1
    return v13

    .line 179
    .end local v0    # "_result":Lcom/mediatek/gba/NafSessionKey;
    .end local v3    # "_arg2":Z
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":[B
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_8
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 182
    .local v1, "_arg0":I
    invoke-virtual {v8, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getMtkUtInterface(I)Lcom/mediatek/ims/internal/IMtkImsUt;

    move-result-object v2

    .line 183
    .local v2, "_result":Lcom/mediatek/ims/internal/IMtkImsUt;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/mediatek/ims/internal/IMtkImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    :cond_3
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 185
    return v13

    .line 169
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Lcom/mediatek/ims/internal/IMtkImsUt;
    :pswitch_9
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 172
    .restart local v1    # "_arg0":I
    invoke-virtual {v8, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getUtInterface(I)Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    .line 173
    .local v2, "_result":Lcom/android/ims/internal/IImsUt;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/android/ims/internal/IImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    :cond_4
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 175
    return v13

    .line 159
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Lcom/android/ims/internal/IImsUt;
    :pswitch_a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 162
    .restart local v1    # "_arg0":I
    invoke-virtual {v8, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getConfigInterfaceEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v2

    .line 163
    .local v2, "_result":Lcom/mediatek/ims/internal/IMtkImsConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/mediatek/ims/internal/IMtkImsConfig;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    :cond_5
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 165
    return v13

    .line 150
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Lcom/mediatek/ims/internal/IMtkImsConfig;
    :pswitch_b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 153
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->UpdateImsState(I)V

    .line 154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    return v13

    .line 139
    .end local v0    # "_arg0":I
    :pswitch_c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 143
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 144
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->updateRadioState(II)V

    .line 145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    return v13

    .line 130
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 133
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->deregisterIms(I)V

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    return v13

    .line 121
    .end local v0    # "_arg0":I
    :pswitch_e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->hangupAllCall(I)V

    .line 125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    return v13

    .line 111
    .end local v0    # "_arg0":I
    :pswitch_f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getImsRegUriType(I)I

    move-result v1

    .line 115
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    return v13

    .line 101
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_10
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getImsState(I)I

    move-result v1

    .line 105
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    return v13

    .line 91
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_11
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v8, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getPendingMtkCallSession(Ljava/lang/String;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v2

    .line 95
    .local v2, "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    :cond_6
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 97
    return v13

    .line 70
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_12
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 75
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .local v2, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_2

    .line 78
    .end local v2    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :cond_7
    move-object v2, v0

    .line 81
    .restart local v2    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v3

    .line 83
    .local v3, "_arg2":Landroid/telephony/ims/aidl/IImsCallSessionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v4

    .line 84
    .local v4, "_arg3":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {v8, v1, v2, v3, v4}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->createMtkCallSession(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/android/ims/internal/IImsCallSession;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v5

    .line 85
    .local v5, "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    :cond_8
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 87
    return v13

    .line 51
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    .end local v3    # "_arg2":Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .end local v4    # "_arg3":Lcom/android/ims/internal/IImsCallSession;
    .end local v5    # "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_13
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 55
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 57
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 59
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 61
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 63
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v6, v13

    nop

    .line 64
    .restart local v6    # "_arg5":Z
    :cond_9
    move-object v0, v8

    move v1, v7

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->setCallIndication(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    return v13

    .line 46
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Ljava/lang/String;
    :cond_a
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v13

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
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
