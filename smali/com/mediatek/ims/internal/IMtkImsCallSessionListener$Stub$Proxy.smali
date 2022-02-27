.class Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMtkImsCallSessionListener.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;
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

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 172
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public callSessionDeviceSwitchFailed(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 309
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 311
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 312
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 313
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 314
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    invoke-virtual {p2, v0, v2}, Landroid/telephony/ims/ImsReasonInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 318
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    :goto_1
    iget-object v3, p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 321
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 326
    nop

    .line 327
    return-void

    .line 324
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public callSessionDeviceSwitched(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .locals 5
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 294
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 296
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 297
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 298
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 299
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 304
    nop

    .line 305
    return-void

    .line 302
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public callSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .locals 5
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 279
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 281
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 282
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 283
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 284
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 289
    nop

    .line 290
    return-void

    .line 287
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public callSessionMergeStarted(Lcom/mediatek/ims/internal/IMtkImsCallSession;Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "newSession"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 256
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 258
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 259
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 260
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    nop

    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 261
    const/4 v2, 0x0

    if-eqz p3, :cond_2

    .line 262
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    invoke-virtual {p3, v0, v2}, Landroid/telephony/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 266
    :cond_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    :goto_1
    iget-object v3, p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 269
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 274
    nop

    .line 275
    return-void

    .line 272
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public callSessionRedialEcc(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .locals 5
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 331
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 333
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 334
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 335
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 336
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 341
    nop

    .line 342
    return-void

    .line 339
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public callSessionRttEventReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;I)V
    .locals 5
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 240
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 242
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 243
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 244
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 246
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 251
    nop

    .line 252
    return-void

    .line 249
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public callSessionTextCapabilityChanged(Lcom/mediatek/ims/internal/IMtkImsCallSession;IIII)V
    .locals 5
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "localCapability"    # I
    .param p3, "remoteCapability"    # I
    .param p4, "localTextStatus"    # I
    .param p5, "realRemoteCapability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 221
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 223
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 224
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 225
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 235
    nop

    .line 236
    return-void

    .line 233
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public callSessionTransferFailed(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 199
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 201
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 202
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 203
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 204
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    invoke-virtual {p2, v0, v2}, Landroid/telephony/ims/ImsReasonInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 208
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    :goto_1
    iget-object v3, p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 211
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    nop

    .line 217
    return-void

    .line 214
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public callSessionTransferred(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .locals 5
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 184
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 186
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 187
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 188
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 189
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 194
    nop

    .line 195
    return-void

    .line 192
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 179
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    return-object v0
.end method
