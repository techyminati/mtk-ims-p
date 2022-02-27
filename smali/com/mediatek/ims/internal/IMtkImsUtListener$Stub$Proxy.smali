.class Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMtkImsUtListener.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsUtListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub;
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

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 71
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 78
    const-string v0, "com.mediatek.ims.internal.IMtkImsUtListener"

    return-object v0
.end method

.method public utConfigurationCallForwardInTimeSlotQueried(Lcom/mediatek/ims/internal/IMtkImsUt;I[Lcom/mediatek/ims/MtkImsCallForwardInfo;)V
    .locals 5
    .param p1, "ut"    # Lcom/mediatek/ims/internal/IMtkImsUt;
    .param p2, "id"    # I
    .param p3, "cfInfo"    # [Lcom/mediatek/ims/MtkImsCallForwardInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 86
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 88
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.internal.IMtkImsUtListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 89
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mediatek/ims/internal/IMtkImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 90
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 92
    iget-object v3, p0, Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 93
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 97
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 98
    nop

    .line 99
    return-void

    .line 96
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 97
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
