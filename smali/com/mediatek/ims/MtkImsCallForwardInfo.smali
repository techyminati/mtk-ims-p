.class public Lcom/mediatek/ims/MtkImsCallForwardInfo;
.super Ljava/lang/Object;
.source "MtkImsCallForwardInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/ims/MtkImsCallForwardInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCondition:I

.field public mNumber:Ljava/lang/String;

.field public mServiceClass:I

.field public mStatus:I

.field public mTimeSeconds:I

.field public mTimeSlot:[J

.field public mToA:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Lcom/mediatek/ims/MtkImsCallForwardInfo$1;

    invoke-direct {v0}, Lcom/mediatek/ims/MtkImsCallForwardInfo$1;-><init>()V

    sput-object v0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/ims/MtkImsCallForwardInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 71
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mCondition:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mStatus:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mServiceClass:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mToA:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSeconds:I

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSlot:[J

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSlot:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSlot:[J

    .line 112
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Condition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mCondition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget v1, p0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mStatus:I

    if-nez v1, :cond_0

    const-string v1, "disabled"

    goto :goto_0

    :cond_0
    const-string v1, "enabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ServiceClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mServiceClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ToA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mToA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Time (seconds): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeSlot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSlot:[J

    .line 96
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 80
    iget v0, p0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mCondition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mServiceClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mToA:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget v0, p0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSeconds:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSlot:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 87
    return-void
.end method
