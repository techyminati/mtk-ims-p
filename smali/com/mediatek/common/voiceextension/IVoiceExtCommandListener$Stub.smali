.class public abstract Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;
.super Landroid/os/Binder;
.source "IVoiceExtCommandListener.java"

# interfaces
.implements Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.voiceextension.IVoiceExtCommandListener"

.field static final TRANSACTION_onCommandRecognized:I = 0x5

.field static final TRANSACTION_onError:I = 0x6

.field static final TRANSACTION_onPauseRecognition:I = 0x3

.field static final TRANSACTION_onResumeRecognition:I = 0x4

.field static final TRANSACTION_onSetCommands:I = 0x7

.field static final TRANSACTION_onStartRecognition:I = 0x1

.field static final TRANSACTION_onStopRecognition:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.mediatek.common.voiceextension.IVoiceExtCommandListener"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.mediatek.common.voiceextension.IVoiceExtCommandListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const-string v0, "com.mediatek.common.voiceextension.IVoiceExtCommandListener"

    .line 39
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 106
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 109
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;->onSetCommands(I)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    return v2

    .line 97
    .end local v1    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 100
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;->onError(I)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    return v2

    .line 84
    .end local v1    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 88
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 90
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v4}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;->onCommandRecognized(IILjava/lang/String;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    return v2

    .line 75
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;->onResumeRecognition(I)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    return v2

    .line 66
    .end local v1    # "_arg0":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 69
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;->onPauseRecognition(I)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    return v2

    .line 57
    .end local v1    # "_arg0":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 60
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;->onStopRecognition(I)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    return v2

    .line 48
    .end local v1    # "_arg0":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;->onStartRecognition(I)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    return v2

    .line 43
    .end local v1    # "_arg0":I
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
