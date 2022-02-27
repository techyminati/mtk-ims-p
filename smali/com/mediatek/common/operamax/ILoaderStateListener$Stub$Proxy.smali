.class Lcom/mediatek/common/operamax/ILoaderStateListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILoaderStateListener.java"

# interfaces
.implements Lcom/mediatek/common/operamax/ILoaderStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;
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

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 74
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 81
    const-string v0, "com.mediatek.common.operamax.ILoaderStateListener"

    return-object v0
.end method

.method public onSavingState(I)V
    .locals 5
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 114
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.common.operamax.ILoaderStateListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-object v1, p0, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 120
    nop

    .line 121
    return-void

    .line 119
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onTunnelState(I)V
    .locals 4
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 94
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.common.operamax.ILoaderStateListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v1, p0, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 100
    nop

    .line 101
    return-void

    .line 99
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
