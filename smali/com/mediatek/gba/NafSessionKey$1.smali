.class Lcom/mediatek/gba/NafSessionKey$1;
.super Ljava/lang/Object;
.source "NafSessionKey.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gba/NafSessionKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mediatek/gba/NafSessionKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/gba/NafSessionKey;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 120
    new-instance v0, Lcom/mediatek/gba/NafSessionKey;

    invoke-direct {v0}, Lcom/mediatek/gba/NafSessionKey;-><init>()V

    .line 121
    .local v0, "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "btid":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v0, v1}, Lcom/mediatek/gba/NafSessionKey;->setBtid(Ljava/lang/String;)V

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 129
    .local v2, "key":[B
    if-eqz v2, :cond_1

    .line 130
    invoke-virtual {v0, v2}, Lcom/mediatek/gba/NafSessionKey;->setKey([B)V

    .line 133
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "keylifetime":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 136
    invoke-virtual {v0, v3}, Lcom/mediatek/gba/NafSessionKey;->setKeylifetime(Ljava/lang/String;)V

    .line 139
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "nafKeyName":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 142
    invoke-virtual {v0, v4}, Lcom/mediatek/gba/NafSessionKey;->setNafKeyName(Ljava/lang/String;)V

    .line 145
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "authHeader":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 148
    invoke-virtual {v0, v5}, Lcom/mediatek/gba/NafSessionKey;->setAuthHeader(Ljava/lang/String;)V

    .line 151
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "exceptionString":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 155
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/mediatek/gba/NafSessionKey;->setException(Ljava/lang/Exception;)V

    .line 158
    :cond_5
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lcom/mediatek/gba/NafSessionKey$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/gba/NafSessionKey;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/mediatek/gba/NafSessionKey;
    .locals 1
    .param p1, "size"    # I

    .line 162
    new-array v0, p1, [Lcom/mediatek/gba/NafSessionKey;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lcom/mediatek/gba/NafSessionKey$1;->newArray(I)[Lcom/mediatek/gba/NafSessionKey;

    move-result-object p1

    return-object p1
.end method
