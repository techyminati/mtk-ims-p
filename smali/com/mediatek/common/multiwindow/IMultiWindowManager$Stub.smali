.class public abstract Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;
.super Landroid/os/Binder;
.source "IMultiWindowManager.java"

# interfaces
.implements Lcom/mediatek/common/multiwindow/IMultiWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/multiwindow/IMultiWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.multiwindow.IMultiWindowManager"

.field static final TRANSACTION_activityCreated:I = 0x1e

.field static final TRANSACTION_addConfigNotChangePkg:I = 0x1a

.field static final TRANSACTION_addDisableFloatPkg:I = 0x19

.field static final TRANSACTION_addMiniMaxRestartPkg:I = 0x1b

.field static final TRANSACTION_appErrorHandling:I = 0x1c

.field static final TRANSACTION_closeWindow:I = 0x2

.field static final TRANSACTION_enableFocusedFrame:I = 0xe

.field static final TRANSACTION_getDisableFloatComponentList:I = 0x16

.field static final TRANSACTION_getDisableFloatPkgList:I = 0x15

.field static final TRANSACTION_isFloatingStack:I = 0x7

.field static final TRANSACTION_isInMiniMax:I = 0xb

.field static final TRANSACTION_isStickStack:I = 0xa

.field static final TRANSACTION_isSticky:I = 0x1d

.field static final TRANSACTION_matchConfigChangeList:I = 0x18

.field static final TRANSACTION_matchConfigNotChangeList:I = 0x11

.field static final TRANSACTION_matchDisableFloatActivityList:I = 0x13

.field static final TRANSACTION_matchDisableFloatPkgList:I = 0x12

.field static final TRANSACTION_matchDisableFloatWinList:I = 0x14

.field static final TRANSACTION_matchMinimaxRestartList:I = 0x17

.field static final TRANSACTION_miniMaxTask:I = 0xf

.field static final TRANSACTION_moveActivityTaskToFront:I = 0x1

.field static final TRANSACTION_moveFloatingWindow:I = 0xc

.field static final TRANSACTION_resizeFloatingWindow:I = 0xd

.field static final TRANSACTION_restoreWindow:I = 0x3

.field static final TRANSACTION_setAMSCallback:I = 0x4

.field static final TRANSACTION_setFloatingStack:I = 0x8

.field static final TRANSACTION_setSystemUiCallback:I = 0x5

.field static final TRANSACTION_setWMSCallback:I = 0x9

.field static final TRANSACTION_showRestoreButton:I = 0x10

.field static final TRANSACTION_stickWindow:I = 0x6

.field static final TRANSACTION_taskAdded:I = 0x1f

.field static final TRANSACTION_taskRemoved:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
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

    .line 43
    const-string v0, "com.mediatek.common.multiwindow.IMultiWindowManager"

    .line 44
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 364
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 355
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 358
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->taskRemoved(I)V

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    return v2

    .line 346
    .end local v1    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 349
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->taskAdded(I)V

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    return v2

    .line 337
    .end local v1    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 340
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->activityCreated(Landroid/os/IBinder;)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    return v2

    .line 327
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 330
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->isSticky(Landroid/os/IBinder;)Z

    move-result v3

    .line 331
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    return v2

    .line 313
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    .line 319
    .local v4, "_arg1":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v2

    nop

    .line 320
    .local v1, "_arg2":Z
    :cond_1
    invoke-virtual {p0, v3, v4, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->appErrorHandling(Ljava/lang/String;ZZ)I

    move-result v5

    .line 321
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    return v2

    .line 304
    .end local v1    # "_arg2":Z
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Z
    .end local v5    # "_result":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->addMiniMaxRestartPkg(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    return v2

    .line 295
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 298
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->addConfigNotChangePkg(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    return v2

    .line 286
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 289
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->addDisableFloatPkg(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    return v2

    .line 276
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 279
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->matchConfigChangeList(Ljava/lang/String;)Z

    move-result v3

    .line 280
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    return v2

    .line 266
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 269
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->matchMinimaxRestartList(Ljava/lang/String;)Z

    move-result v3

    .line 270
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    return v2

    .line 258
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->getDisableFloatComponentList()Ljava/util/List;

    move-result-object v1

    .line 260
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 262
    return v2

    .line 250
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->getDisableFloatPkgList()Ljava/util/List;

    move-result-object v1

    .line 252
    .restart local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 254
    return v2

    .line 240
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->matchDisableFloatWinList(Ljava/lang/String;)Z

    move-result v3

    .line 244
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    return v2

    .line 230
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 233
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->matchDisableFloatActivityList(Ljava/lang/String;)Z

    move-result v3

    .line 234
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    return v2

    .line 220
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 223
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->matchDisableFloatPkgList(Ljava/lang/String;)Z

    move-result v3

    .line 224
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    return v2

    .line 210
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 213
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->matchConfigNotChangeList(Ljava/lang/String;)Z

    move-result v3

    .line 214
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    return v2

    .line 201
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    nop

    .line 204
    .local v1, "_arg0":Z
    :cond_2
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->showRestoreButton(Z)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    return v2

    .line 192
    .end local v1    # "_arg0":Z
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 195
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->miniMaxTask(I)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    return v2

    .line 183
    .end local v1    # "_arg0":I
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    nop

    .line 186
    .local v1, "_arg0":Z
    :cond_3
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->enableFocusedFrame(Z)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    return v2

    .line 170
    .end local v1    # "_arg0":Z
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 176
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 177
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->resizeFloatingWindow(III)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    return v2

    .line 159
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 163
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 164
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->moveFloatingWindow(II)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    return v2

    .line 149
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->isInMiniMax(I)Z

    move-result v3

    .line 153
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    return v2

    .line 139
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->isStickStack(I)Z

    move-result v3

    .line 143
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    return v2

    .line 130
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/common/multiwindow/IMWWmsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/multiwindow/IMWWmsCallback;

    move-result-object v1

    .line 133
    .local v1, "_arg0":Lcom/mediatek/common/multiwindow/IMWWmsCallback;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->setWMSCallback(Lcom/mediatek/common/multiwindow/IMWWmsCallback;)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    return v2

    .line 121
    .end local v1    # "_arg0":Lcom/mediatek/common/multiwindow/IMWWmsCallback;
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 124
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->setFloatingStack(I)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    return v2

    .line 111
    .end local v1    # "_arg0":I
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 114
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->isFloatingStack(I)Z

    move-result v3

    .line 115
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    return v2

    .line 100
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 104
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    nop

    .line 105
    .local v1, "_arg1":Z
    :cond_4
    invoke-virtual {p0, v3, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->stickWindow(Landroid/os/IBinder;Z)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    return v2

    .line 91
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":Landroid/os/IBinder;
    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/common/multiwindow/IMWSystemUiCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;

    move-result-object v1

    .line 94
    .local v1, "_arg0":Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->setSystemUiCallback(Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    return v2

    .line 82
    .end local v1    # "_arg0":Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;
    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/common/multiwindow/IMWAmsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/multiwindow/IMWAmsCallback;

    move-result-object v1

    .line 85
    .local v1, "_arg0":Lcom/mediatek/common/multiwindow/IMWAmsCallback;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->setAMSCallback(Lcom/mediatek/common/multiwindow/IMWAmsCallback;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    return v2

    .line 71
    .end local v1    # "_arg0":Lcom/mediatek/common/multiwindow/IMWAmsCallback;
    :pswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 75
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v1, v2

    nop

    .line 76
    .local v1, "_arg1":Z
    :cond_5
    invoke-virtual {p0, v3, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->restoreWindow(Landroid/os/IBinder;Z)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v2

    .line 62
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":Landroid/os/IBinder;
    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 65
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->closeWindow(Landroid/os/IBinder;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    return v2

    .line 53
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 56
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->moveActivityTaskToFront(Landroid/os/IBinder;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    return v2

    .line 48
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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
