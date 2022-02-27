.class public Lcom/mediatek/ims/config/ImsConfigContract$Validator;
.super Ljava/lang/Object;
.source "ImsConfigContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/ImsConfigContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Validator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidConfigId(I)Z
    .locals 3
    .param p0, "configId"    # I

    .line 399
    const/4 v0, 0x1

    .line 401
    .local v0, "valid":Z
    if-gez p0, :cond_0

    .line 402
    const/4 v0, 0x0

    goto :goto_0

    .line 403
    :cond_0
    const/16 v1, 0x3e8

    if-le p0, v1, :cond_1

    .line 404
    const/4 v0, 0x0

    goto :goto_0

    .line 405
    :cond_1
    const/16 v2, 0x42

    if-le p0, v2, :cond_2

    if-ge p0, v1, :cond_2

    .line 407
    const/4 v0, 0x0

    .line 409
    :cond_2
    :goto_0
    return v0
.end method

.method public static isValidFeatureId(I)Z
    .locals 1
    .param p0, "featureId"    # I

    .line 366
    const/4 v0, 0x1

    .line 367
    .local v0, "valid":Z
    packed-switch p0, :pswitch_data_0

    .line 375
    const/4 v0, 0x0

    goto :goto_0

    .line 372
    :pswitch_0
    nop

    .line 378
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isValidFeatureValue(I)Z
    .locals 1
    .param p0, "featureVal"    # I

    .line 382
    const/4 v0, 0x1

    .line 383
    .local v0, "valid":Z
    packed-switch p0, :pswitch_data_0

    .line 388
    const/4 v0, 0x0

    goto :goto_0

    .line 386
    :pswitch_0
    nop

    .line 391
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isValidMimeTypeId(I)Z
    .locals 1
    .param p0, "mimeTypeId"    # I

    .line 413
    const/4 v0, 0x1

    .line 414
    .local v0, "valid":Z
    packed-switch p0, :pswitch_data_0

    .line 421
    const/4 v0, 0x0

    goto :goto_0

    .line 419
    :pswitch_0
    nop

    .line 424
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isValidNetwork(I)Z
    .locals 1
    .param p0, "network"    # I

    .line 395
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidSettingId(I)Z
    .locals 1
    .param p0, "settingId"    # I

    .line 354
    const/4 v0, 0x1

    .line 355
    .local v0, "valid":Z
    if-eqz p0, :cond_0

    .line 359
    const/4 v0, 0x0

    goto :goto_0

    .line 357
    :cond_0
    nop

    .line 362
    :goto_0
    return v0
.end method

.method public static isValidTable(Ljava/lang/String;)Z
    .locals 2
    .param p0, "table"    # Ljava/lang/String;

    .line 337
    const/4 v0, 0x1

    .line 338
    .local v0, "valid":Z
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "tb_default"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "tb_master"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "tb_provision"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "tb_resource"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_4
    const-string v1, "tb_feature"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_5
    const-string v1, "tb_config_setting"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 347
    const/4 v0, 0x0

    goto :goto_2

    .line 345
    :pswitch_0
    nop

    .line 350
    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f2433bc -> :sswitch_5
        -0x3a541ddb -> :sswitch_4
        -0x1330bd41 -> :sswitch_3
        0x2aff044 -> :sswitch_2
        0x5432a153 -> :sswitch_1
        0x5c1d3d70 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isValidUnitId(I)Z
    .locals 1
    .param p0, "unitId"    # I

    .line 428
    const/4 v0, 0x1

    .line 429
    .local v0, "valid":Z
    packed-switch p0, :pswitch_data_0

    .line 440
    const/4 v0, 0x0

    goto :goto_0

    .line 438
    :pswitch_0
    nop

    .line 443
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
