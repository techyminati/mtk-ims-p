.class Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;
.super Ljava/lang/Object;
.source "ImsConfigProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/internal/ImsConfigProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Arguments"
.end annotation


# static fields
.field private static final INDEX_ITEM_ID:I = 0x2

.field private static final INDEX_PARAM_ID:I = 0x3

.field private static final INDEX_PHONE_ID:I = 0x1

.field private static final INDEX_TABLE:I


# instance fields
.field public itemId:Ljava/lang/String;

.field public param:Ljava/lang/String;

.field public phoneId:Ljava/lang/String;

.field public selection:Ljava/lang/String;

.field public selectionArgs:[Ljava/lang/String;

.field public table:Ljava/lang/String;


# direct methods
.method constructor <init>(ILandroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 6
    .param p1, "opMode"    # I
    .param p2, "cv"    # Landroid/content/ContentValues;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 470
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;-><init>(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method constructor <init>(ILandroid/net/Uri;)V
    .locals 6
    .param p1, "opMode"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 473
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;-><init>(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method constructor <init>(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p1, "opMode"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "cv"    # Landroid/content/ContentValues;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    .line 352
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    .line 353
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    .line 354
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->param:Ljava/lang/String;

    .line 355
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 356
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    .line 364
    const/4 v0, 0x0

    .line 366
    .local v0, "args":[Ljava/lang/String;
    invoke-static {p2}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->enforceValidUri(Landroid/net/Uri;)V

    .line 367
    invoke-direct {p0, p2}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->getValidTable(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    .line 368
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    invoke-direct {p0, p2, v1, p1, p3}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->parseContentValue(Landroid/net/Uri;Ljava/lang/String;ILandroid/content/ContentValues;)V

    .line 369
    invoke-static {p1, p2, p3, p4, p5}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->enforceOpMode(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 372
    .local v1, "urlArgSize":I
    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch v1, :pswitch_data_0

    .line 463
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 438
    :pswitch_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    .line 439
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    .line 440
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->param:Ljava/lang/String;

    .line 441
    new-array v0, v3, [Ljava/lang/String;

    .line 442
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    aput-object v3, v0, v4

    .line 443
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    aput-object v3, v0, v6

    .line 444
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->param:Ljava/lang/String;

    aput-object v3, v0, v5

    .line 445
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x3a541ddb

    if-eq v7, v8, :cond_0

    goto :goto_0

    :cond_0
    const-string v7, "tb_feature"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    :cond_1
    :goto_0
    if-nez v2, :cond_3

    .line 448
    const-string v2, "phone_id = ? AND feature_id = ? AND network_id = ?"

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 451
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 453
    new-array v2, v5, [[Ljava/lang/String;

    aput-object v0, v2, v4

    aput-object p5, v2, v6

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->join([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    goto :goto_1

    .line 455
    :cond_2
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    .line 457
    nop

    .line 461
    :goto_1
    goto/16 :goto_4

    .line 459
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 394
    :pswitch_1
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    .line 395
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    .line 396
    new-array v0, v5, [Ljava/lang/String;

    .line 397
    iget-object v7, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    aput-object v7, v0, v4

    .line 398
    iget-object v7, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v3, "tb_default"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v6

    goto :goto_2

    :sswitch_1
    const-string v8, "tb_master"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v2, v3

    goto :goto_2

    :sswitch_2
    const-string v3, "tb_provision"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v5

    goto :goto_2

    :sswitch_3
    const-string v3, "tb_resource"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_4
    const-string v3, "tb_config_setting"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v4

    :cond_4
    :goto_2
    packed-switch v2, :pswitch_data_1

    goto/16 :goto_3

    .line 425
    :pswitch_2
    const-string v2, "phone_id=? AND feature_id=?"

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 427
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    aput-object v2, v0, v6

    .line 428
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 430
    new-array v2, v5, [[Ljava/lang/String;

    aput-object v0, v2, v4

    aput-object p5, v2, v6

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->join([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    goto/16 :goto_3

    .line 432
    :cond_5
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    goto :goto_3

    .line 414
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/ims/config/ImsConfigContract;->configNameToId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 415
    const-string v2, "phone_id = ? AND config_id = ?"

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 417
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 419
    new-array v2, v5, [[Ljava/lang/String;

    aput-object v0, v2, v4

    aput-object p5, v2, v6

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->join([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    goto :goto_3

    .line 421
    :cond_6
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    .line 423
    goto :goto_3

    .line 400
    :pswitch_4
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    aput-object v2, v0, v6

    .line 401
    const-string v2, "phone_id = ? AND setting_id = ?"

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 403
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 405
    new-array v2, v5, [[Ljava/lang/String;

    aput-object v0, v2, v4

    aput-object p5, v2, v6

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->join([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    goto :goto_3

    .line 407
    :cond_7
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    .line 409
    nop

    .line 436
    :goto_3
    goto :goto_4

    .line 382
    :pswitch_5
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    .line 383
    new-array v0, v6, [Ljava/lang/String;

    .line 384
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 385
    const-string v2, "phone_id = ?"

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 386
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 388
    new-array v2, v5, [[Ljava/lang/String;

    aput-object v0, v2, v4

    aput-object p5, v2, v6

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->join([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    goto :goto_4

    .line 390
    :cond_8
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    .line 392
    goto :goto_4

    .line 374
    :pswitch_6
    iput-object p4, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 375
    iput-object p5, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    .line 376
    if-eq p1, v5, :cond_9

    if-ne p1, v6, :cond_a

    .line 378
    :cond_9
    const-string v2, "phone_id"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    .line 465
    :cond_a
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7f2433bc -> :sswitch_4
        -0x1330bd41 -> :sswitch_3
        0x2aff044 -> :sswitch_2
        0x5432a153 -> :sswitch_1
        0x5c1d3d70 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method constructor <init>(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "opMode"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 467
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;-><init>(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method private static enforceOpMode(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "opMode"    # I
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cv"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 494
    return-void
.end method

.method private static enforceValidTable(Ljava/lang/String;)V
    .locals 3
    .param p0, "table"    # Ljava/lang/String;

    .line 497
    invoke-static {p0}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidTable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    return-void

    .line 498
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static enforceValidUri(Landroid/net/Uri;)V
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 503
    if-eqz p0, :cond_1

    .line 506
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    return-void

    .line 507
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Operate on entire database is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad request: null url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getValidTable(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 486
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 487
    .local v0, "table":Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->enforceValidTable(Ljava/lang/String;)V

    .line 488
    return-object v0
.end method

.method private static varargs join([[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "arrays"    # [[Ljava/lang/String;

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v0, "output":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 480
    .local v3, "array":[Ljava/lang/String;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 479
    .end local v3    # "array":[Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 482
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private parseContentValue(Landroid/net/Uri;Ljava/lang/String;ILandroid/content/ContentValues;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "opMode"    # I
    .param p4, "cv"    # Landroid/content/ContentValues;

    .line 513
    if-eqz p3, :cond_c

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    goto/16 :goto_4

    .line 516
    :cond_0
    invoke-static {p2}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->enforceValidTable(Ljava/lang/String;)V

    .line 518
    const-string v1, "phone_id"

    .line 519
    invoke-virtual {p4, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 518
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    .line 520
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 524
    const/4 v1, 0x0

    .line 525
    .local v1, "configId":I
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "tb_default"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "tb_master"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v3, "tb_provision"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :sswitch_3
    const-string v0, "tb_feature"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "tb_config_setting"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 556
    :pswitch_0
    const-string v0, "unit_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 557
    const-string v0, "unit_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 558
    .local v0, "timeUnitId":I
    invoke-static {v0}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidUnitId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .end local v0    # "timeUnitId":I
    goto :goto_2

    .line 559
    .restart local v0    # "timeUnitId":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid time unit in cv: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 563
    .end local v0    # "timeUnitId":I
    :cond_3
    :goto_2
    const-string v0, "config_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 564
    invoke-static {v1}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidConfigId(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 568
    invoke-static {v1}, Lcom/mediatek/ims/config/ImsConfigContract;->configIdToName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    .line 571
    :pswitch_1
    const-string v0, "mimetype_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 573
    .local v0, "mimeTypeId":I
    invoke-static {v0}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidMimeTypeId(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 577
    const-string v2, "config_id"

    invoke-virtual {p4, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 578
    invoke-static {v1}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidConfigId(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 582
    invoke-static {v1}, Lcom/mediatek/ims/config/ImsConfigContract;->configIdToName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    .end local v0    # "mimeTypeId":I
    goto/16 :goto_3

    .line 579
    .restart local v0    # "mimeTypeId":I
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid config id in cv: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 574
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid mime type in cv: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 565
    .end local v0    # "mimeTypeId":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid config id in cv: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :pswitch_2
    const-string v0, "feature_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 537
    .local v0, "featureId":I
    invoke-static {v0}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidFeatureId(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 541
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    .line 542
    const-string v2, "network_id"

    invoke-virtual {p4, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 543
    .local v2, "network":I
    invoke-static {v2}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 547
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->param:Ljava/lang/String;

    .line 549
    const-string v3, "value"

    invoke-virtual {p4, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 550
    .local v3, "value":I
    invoke-static {v3}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidFeatureValue(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .end local v0    # "featureId":I
    .end local v2    # "network":I
    .end local v3    # "value":I
    goto/16 :goto_3

    .line 551
    .restart local v0    # "featureId":I
    .restart local v2    # "network":I
    .restart local v3    # "value":I
    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid value in cv: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 544
    .end local v3    # "value":I
    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid network in cv: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 538
    .end local v2    # "network":I
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid feature id in cv: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 528
    .end local v0    # "featureId":I
    :pswitch_3
    const-string v0, "setting_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 529
    .local v0, "settingId":I
    invoke-static {v0}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidSettingId(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 533
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    .line 534
    goto :goto_3

    .line 530
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid setting id in cv: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 585
    .end local v0    # "settingId":I
    :goto_3
    return-void

    .line 521
    .end local v1    # "configId":I
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expect phone id in cv with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_c
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f2433bc -> :sswitch_4
        -0x3a541ddb -> :sswitch_3
        0x2aff044 -> :sswitch_2
        0x5432a153 -> :sswitch_1
        0x5c1d3d70 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
