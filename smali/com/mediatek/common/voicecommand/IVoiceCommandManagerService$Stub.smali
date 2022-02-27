.class public abstract Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;
.super Landroid/os/Binder;
.source "IVoiceCommandManagerService.java"

# interfaces
.implements Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.voicecommand.IVoiceCommandManagerService"

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_sendCommand:I = 0x3

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.mediatek.common.voicecommand.IVoiceCommandManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.mediatek.common.voicecommand.IVoiceCommandManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const-string v0, "com.mediatek.common.voicecommand.IVoiceCommandManagerService"

    .line 39
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 72
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 78
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 80
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .local v5, "_arg3":Landroid/os/Bundle;
    goto :goto_0

    .line 84
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :cond_0
    const/4 v5, 0x0

    .line 86
    .restart local v5    # "_arg3":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v6

    .line 87
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    return v2

    .line 60
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/Bundle;
    .end local v6    # "_result":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    move-result-object v3

    .line 65
    .local v3, "_arg1":Lcom/mediatek/common/voicecommand/IVoiceCommandListener;
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;->unregisterListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v4

    .line 66
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return v2

    .line 48
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/mediatek/common/voicecommand/IVoiceCommandListener;
    .end local v4    # "_result":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    move-result-object v3

    .line 53
    .restart local v3    # "_arg1":Lcom/mediatek/common/voicecommand/IVoiceCommandListener;
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;->registerListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v4

    .line 54
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return v2

    .line 43
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/mediatek/common/voicecommand/IVoiceCommandListener;
    .end local v4    # "_result":I
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
