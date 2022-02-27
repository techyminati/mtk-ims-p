.class public abstract Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;
.super Landroid/os/Binder;
.source "IMtkImsConfig.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.internal.IMtkImsConfig"

.field static final TRANSACTION_getFeatureValue:I = 0x5

.field static final TRANSACTION_getImsResCapability:I = 0xb

.field static final TRANSACTION_getProvisionedStringValue:I = 0x2

.field static final TRANSACTION_getProvisionedValue:I = 0x1

.field static final TRANSACTION_getVideoQuality:I = 0x8

.field static final TRANSACTION_setFeatureValue:I = 0x6

.field static final TRANSACTION_setImsResCapability:I = 0xa

.field static final TRANSACTION_setModemImsCfg:I = 0xe

.field static final TRANSACTION_setModemImsIwlanCfg:I = 0x10

.field static final TRANSACTION_setModemImsWoCfg:I = 0xf

.field static final TRANSACTION_setMultiFeatureValues:I = 0x7

.field static final TRANSACTION_setProvisionedStringValue:I = 0x4

.field static final TRANSACTION_setProvisionedValue:I = 0x3

.field static final TRANSACTION_setVideoQuality:I = 0x9

.field static final TRANSACTION_setVoltePreference:I = 0xd

.field static final TRANSACTION_setWfcMode:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "com.mediatek.ims.internal.IMtkImsConfig"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsConfig;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    return-object v0

    .line 34
    :cond_0
    const-string v0, "com.mediatek.ims.internal.IMtkImsConfig"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsConfig;

    if-eqz v1, :cond_1

    .line 36
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsConfig;

    return-object v1

    .line 38
    :cond_1
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 42
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

    .line 46
    const-string v0, "com.mediatek.ims.internal.IMtkImsConfig"

    .line 47
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 241
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 227
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 234
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->setModemImsIwlanCfg([Ljava/lang/String;[Ljava/lang/String;I)[I

    move-result-object v5

    .line 235
    .local v5, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 237
    return v2

    .line 213
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":[I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 217
    .restart local v1    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 219
    .restart local v3    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 220
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->setModemImsWoCfg([Ljava/lang/String;[Ljava/lang/String;I)[I

    move-result-object v5

    .line 221
    .restart local v5    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 223
    return v2

    .line 199
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":[I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 203
    .restart local v1    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 205
    .restart local v3    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 206
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I

    move-result-object v5

    .line 207
    .restart local v5    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 209
    return v2

    .line 190
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":[I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 193
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->setVoltePreference(I)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    return v2

    .line 181
    .end local v1    # "_arg0":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 184
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->setWfcMode(I)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    return v2

    .line 171
    .end local v1    # "_arg0":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getImsResCapability(I)I

    move-result v3

    .line 175
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    return v2

    .line 160
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 164
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 165
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->setImsResCapability(II)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    return v2

    .line 150
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 154
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v3

    .line 155
    .local v3, "_arg1":Lcom/android/ims/ImsConfigListener;
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->setVideoQuality(ILcom/android/ims/ImsConfigListener;)V

    .line 156
    return v2

    .line 142
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/ims/ImsConfigListener;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v1

    .line 145
    .local v1, "_arg0":Lcom/android/ims/ImsConfigListener;
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getVideoQuality(Lcom/android/ims/ImsConfigListener;)V

    .line 146
    return v2

    .line 127
    .end local v1    # "_arg0":Lcom/android/ims/ImsConfigListener;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 131
    .local v1, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 133
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 135
    .local v4, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v5

    .line 136
    .local v5, "_arg3":Lcom/android/ims/ImsConfigListener;
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->setMultiFeatureValues([I[I[ILcom/android/ims/ImsConfigListener;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    return v2

    .line 112
    .end local v1    # "_arg0":[I
    .end local v3    # "_arg1":[I
    .end local v4    # "_arg2":[I
    .end local v5    # "_arg3":Lcom/android/ims/ImsConfigListener;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 116
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 118
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 120
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v5

    .line 121
    .restart local v5    # "_arg3":Lcom/android/ims/ImsConfigListener;
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    return v2

    .line 100
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Lcom/android/ims/ImsConfigListener;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 106
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v4

    .line 107
    .local v4, "_arg2":Lcom/android/ims/ImsConfigListener;
    invoke-virtual {p0, v1, v3, v4}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getFeatureValue(IILcom/android/ims/ImsConfigListener;)V

    .line 108
    return v2

    .line 88
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/android/ims/ImsConfigListener;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 92
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->setProvisionedStringValue(ILjava/lang/String;)I

    move-result v4

    .line 94
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return v2

    .line 76
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 80
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 81
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->setProvisionedValue(II)I

    move-result v4

    .line 82
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    return v2

    .line 66
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 69
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return v2

    .line 56
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getProvisionedValue(I)I

    move-result v3

    .line 60
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return v2

    .line 51
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
