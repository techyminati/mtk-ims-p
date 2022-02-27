.class public abstract Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub;
.super Landroid/os/Binder;
.source "IVoiceTrainingEnrollmentService.java"

# interfaces
.implements Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.voicecommand.IVoiceTrainingEnrollmentService"

.field static final TRANSACTION_enrollSoundModel:I = 0x1

.field static final TRANSACTION_unEnrollSoundModel:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.mediatek.common.voicecommand.IVoiceTrainingEnrollmentService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.mediatek.common.voicecommand.IVoiceTrainingEnrollmentService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "com.mediatek.common.voicecommand.IVoiceTrainingEnrollmentService"

    .line 39
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 64
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub;->unEnrollSoundModel()Z

    move-result v1

    .line 66
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return v2

    .line 48
    .end local v1    # "_result":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 54
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 57
    .local v5, "_arg3":I
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub;->enrollSoundModel(IILjava/lang/String;I)Z

    move-result v6

    .line 58
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return v2

    .line 43
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Z
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
