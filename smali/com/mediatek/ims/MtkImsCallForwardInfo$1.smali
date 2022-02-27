.class Lcom/mediatek/ims/MtkImsCallForwardInfo$1;
.super Ljava/lang/Object;
.source "MtkImsCallForwardInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/MtkImsCallForwardInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mediatek/ims/MtkImsCallForwardInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/ims/MtkImsCallForwardInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 118
    new-instance v0, Lcom/mediatek/ims/MtkImsCallForwardInfo;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/MtkImsCallForwardInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/MtkImsCallForwardInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/ims/MtkImsCallForwardInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/mediatek/ims/MtkImsCallForwardInfo;
    .locals 1
    .param p1, "size"    # I

    .line 123
    new-array v0, p1, [Lcom/mediatek/ims/MtkImsCallForwardInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/MtkImsCallForwardInfo$1;->newArray(I)[Lcom/mediatek/ims/MtkImsCallForwardInfo;

    move-result-object p1

    return-object p1
.end method
