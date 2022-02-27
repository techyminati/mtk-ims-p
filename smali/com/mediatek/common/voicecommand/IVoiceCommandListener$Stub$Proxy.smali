.class Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVoiceCommandListener.java"

# interfaces
.implements Lcom/mediatek/common/voicecommand/IVoiceCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 76
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 83
    const-string v0, "com.mediatek.common.voicecommand.IVoiceCommandListener"

    return-object v0
.end method

.method public onVoiceCommandNotified(IILandroid/os/Bundle;)V
    .locals 5
    .param p1, "mainAction"    # I
    .param p2, "subAction"    # I
    .param p3, "extraData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 88
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 90
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.common.voicecommand.IVoiceCommandListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 94
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    :goto_0
    iget-object v4, p0, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 106
    nop

    .line 107
    return-void

    .line 104
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
