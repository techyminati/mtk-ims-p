.class public Lcom/mediatek/gba/NafSessionKey;
.super Ljava/lang/Object;
.source "NafSessionKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/gba/NafSessionKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAuthHeader:Ljava/lang/String;

.field private mBtid:Ljava/lang/String;

.field private mException:Ljava/lang/Exception;

.field private mKey:[B

.field private mKeylifetime:Ljava/lang/String;

.field private mNafId:[B

.field private mNafKeyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 117
    new-instance v0, Lcom/mediatek/gba/NafSessionKey$1;

    invoke-direct {v0}, Lcom/mediatek/gba/NafSessionKey$1;-><init>()V

    sput-object v0, Lcom/mediatek/gba/NafSessionKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0
    .param p1, "btid"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "keylifetime"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mBtid:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/mediatek/gba/NafSessionKey;->mKey:[B

    .line 28
    iput-object p3, p0, Lcom/mediatek/gba/NafSessionKey;->mKeylifetime:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthHeader()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mAuthHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getBtid()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mBtid:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getKey()[B
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mKey:[B

    return-object v0
.end method

.method public getKeylifetime()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mKeylifetime:Ljava/lang/String;

    return-object v0
.end method

.method public getNafId()[B
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mNafId:[B

    return-object v0
.end method

.method public getNafKeyName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mNafKeyName:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "authHeader"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mAuthHeader:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setBtid(Ljava/lang/String;)V
    .locals 0
    .param p1, "btid"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mBtid:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .line 80
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mException:Ljava/lang/Exception;

    .line 81
    return-void
.end method

.method public setKey([B)V
    .locals 0
    .param p1, "key"    # [B

    .line 44
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mKey:[B

    .line 45
    return-void
.end method

.method public setKeylifetime(Ljava/lang/String;)V
    .locals 0
    .param p1, "keylifetime"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mKeylifetime:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setNafId([B)V
    .locals 0
    .param p1, "nafId"    # [B

    .line 64
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mNafId:[B

    .line 65
    return-void
.end method

.method public setNafKeyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nafKeyName"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mNafKeyName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 168
    monitor-enter p0

    .line 169
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NafSessionKey -"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " btid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/gba/NafSessionKey;->mBtid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " keylifetime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/gba/NafSessionKey;->mKeylifetime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " nafkeyname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/gba/NafSessionKey;->mNafKeyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " authheader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/gba/NafSessionKey;->mAuthHeader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 175
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 103
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mBtid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 105
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mKeylifetime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mNafKeyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mAuthHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mException:Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    .line 111
    :cond_0
    return-void
.end method
