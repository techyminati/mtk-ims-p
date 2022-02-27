.class Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;
.super Ljava/lang/Object;
.source "ImsConfigStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/internal/ImsConfigStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceHelper"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mPhoneId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 1394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContext:Landroid/content/Context;

    .line 1392
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 1395
    iput p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mPhoneId:I

    .line 1396
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContext:Landroid/content/Context;

    .line 1397
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 1398
    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 1389
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->updateResource(II)V

    return-void
.end method

.method private clear()V
    .locals 4

    .line 1401
    const-string v0, "phone_id = ?"

    .line 1402
    .local v0, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1403
    .local v1, "args":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/mediatek/ims/config/ImsConfigContract$Resource;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1404
    return-void
.end method

.method private updateResource(II)V
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .line 1407
    const/4 v0, -0x1

    .line 1409
    .local v0, "curValue":I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1410
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "phone_id"

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1411
    const-string v2, "feature_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1412
    const-string v2, "value"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1416
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->getResourceValue(I)I

    move-result v2

    move v0, v2

    .line 1417
    const-string v2, "ImsConfigStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateResource() comparing: curValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    const-string v2, "phone_id=? AND feature_id=?"

    .line 1421
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mPhoneId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1422
    .local v3, "args":[Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/mediatek/ims/config/ImsConfigContract$Resource;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1427
    .end local v2    # "selection":Ljava/lang/String;
    .end local v3    # "args":[Ljava/lang/String;
    goto :goto_0

    .line 1424
    :catch_0
    move-exception v2

    .line 1425
    .local v2, "e":Lcom/android/ims/ImsException;
    const-string v3, "ImsConfigStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateResource() ImsException featureId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/mediatek/ims/config/ImsConfigContract$Resource;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1428
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method


# virtual methods
.method getResourceValue(I)I
    .locals 11
    .param p1, "featureId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1431
    const/4 v0, 0x0

    .line 1432
    .local v0, "c":Landroid/database/Cursor;
    const/4 v1, -0x1

    .line 1433
    .local v1, "result":I
    const-string v2, "phone_id"

    const-string v3, "feature_id"

    const-string v4, "value"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    .line 1439
    .local v7, "projection":[Ljava/lang/String;
    const/16 v2, 0x65

    :try_start_0
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mPhoneId:I

    .line 1440
    invoke-static {v3, p1}, Lcom/mediatek/ims/config/ImsConfigContract$Resource;->getUriWithFeatureId(II)Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1439
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    .line 1443
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1444
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1445
    const-string v3, "value"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1446
    .local v3, "valueIndex":I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v1, v4

    .line 1447
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1448
    .end local v3    # "valueIndex":I
    nop

    .line 1457
    if-eqz v0, :cond_0

    .line 1458
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1462
    :cond_0
    return v1

    .line 1449
    :cond_1
    :try_start_1
    new-instance v3, Lcom/android/ims/ImsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Feature "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not assigned with res value!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1457
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1452
    :catch_0
    move-exception v3

    .line 1453
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/android/ims/ImsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Feature "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not assigned with res value or something wrong with cursor"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1457
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_2

    .line 1458
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method
