.class public final Lcom/mediatek/ims/config/internal/ImsConfigProvider;
.super Landroid/content/ContentProvider;
.source "ImsConfigProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/config/internal/ImsConfigProvider$OperationMode;,
        Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;
    }
.end annotation


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.mediatek.ims.config.provider"

.field private static final DEBUG:Z

.field static ECCAllowBroadcast:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static ECCAllowSendCmd:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static LatestSimState:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPERTY_IMSCONFIG_FORCE_NOTIFY:Ljava/lang/String; = "vendor.ril.imsconfig.force.notify"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final TAG:Ljava/lang/String; = "ImsConfigProvider"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field mDatabaseHelper:Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "persist.vendor.log.tel_dbg"

    .line 46
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    nop

    :cond_1
    :goto_0
    sput-boolean v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->DEBUG:Z

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->LatestSimState:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->ECCAllowSendCmd:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->ECCAllowBroadcast:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mDatabaseHelper:Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;

    .line 61
    new-instance v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$1;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigProvider;)V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/config/internal/ImsConfigProvider;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigProvider;

    .line 42
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private notifyChange(Landroid/net/Uri;Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;Landroid/content/ContentValues;)V
    .locals 17
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "args"    # Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;
    .param p3, "cv"    # Landroid/content/ContentValues;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 222
    move-object/from16 v2, p3

    const/4 v3, -0x1

    .line 223
    .local v3, "value":I
    const/4 v4, 0x0

    .line 224
    .local v4, "isECCBroadcastFlag":Z
    const/4 v5, 0x0

    .line 225
    .local v5, "isFeatureEnabled":Z
    const/4 v6, 0x0

    .line 226
    .local v6, "isSimStateAllow":Z
    const-string v7, ""

    .line 229
    .local v7, "valueStr":Ljava/lang/String;
    iget-object v8, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    sparse-switch v9, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v9, "tb_default"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v10

    goto :goto_1

    :sswitch_1
    const-string v9, "tb_master"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v11

    goto :goto_1

    :sswitch_2
    const-string v9, "tb_provision"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    goto :goto_1

    :sswitch_3
    const-string v9, "tb_resource"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x5

    goto :goto_1

    :sswitch_4
    const-string v9, "tb_feature"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x4

    goto :goto_1

    :sswitch_5
    const-string v9, "tb_config_setting"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v8, -0x1

    :goto_1
    const/4 v9, 0x0

    packed-switch v8, :pswitch_data_0

    .line 340
    const-string v8, "ImsConfigProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid table "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " with uri "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void

    .line 338
    :pswitch_0
    goto/16 :goto_a

    .line 275
    :pswitch_1
    sget-object v8, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->LatestSimState:Ljava/util/HashMap;

    iget-object v12, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 276
    .local v8, "simState":Ljava/lang/String;
    const-string v12, "ImsConfigProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getSimState() for checking whether broadcast phoneId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    .line 277
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", Sim state: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 276
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v12, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 280
    .local v12, "itemId":I
    const-string v13, "value"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 282
    if-nez v8, :cond_1

    .line 283
    const-string v8, ""

    .line 288
    :cond_1
    sget-object v13, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->ECCAllowBroadcast:Ljava/util/HashMap;

    iget-object v14, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_2

    .line 289
    const/4 v4, 0x0

    goto :goto_4

    .line 291
    :cond_2
    const-string v13, "ABSENT"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    sget-object v13, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->ECCAllowBroadcast:Ljava/util/HashMap;

    iget-object v14, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    .line 292
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_3

    if-nez v12, :cond_3

    move v13, v11

    goto :goto_2

    :cond_3
    move v13, v10

    :goto_2
    move v4, v13

    .line 294
    if-ne v3, v11, :cond_4

    move v13, v11

    goto :goto_3

    :cond_4
    move v13, v10

    :goto_3
    move v5, v13

    .line 295
    if-eqz v4, :cond_5

    if-nez v5, :cond_5

    .line 296
    sget-object v13, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->ECCAllowBroadcast:Ljava/util/HashMap;

    iget-object v14, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v13, "ImsConfigProvider"

    const-string v14, "Sim absent but the calculated VoLTE is false, so no need broadcast"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_5
    :goto_4
    if-nez v12, :cond_6

    const-string v13, "vendor.ril.imsconfig.force.notify"

    .line 305
    invoke-static {v13, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    if-ne v13, v11, :cond_6

    move v13, v11

    goto :goto_5

    :cond_6
    move v13, v10

    .line 306
    .local v13, "isForceNotify":Z
    :goto_5
    sget-boolean v14, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->DEBUG:Z

    if-eqz v14, :cond_7

    const-string v14, "ImsConfigProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isForceNotify "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_7
    const-string v10, "READY"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "IMSI"

    .line 311
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "LOADED"

    .line 312
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_6

    .line 315
    :cond_8
    const/4 v6, 0x0

    goto :goto_7

    .line 313
    :cond_9
    :goto_6
    const/4 v6, 0x1

    .line 318
    :goto_7
    if-nez v6, :cond_b

    if-eqz v4, :cond_a

    if-nez v5, :cond_b

    :cond_a
    if-eqz v13, :cond_11

    .line 321
    :cond_b
    new-instance v10, Landroid/content/Intent;

    const-string v14, "com.android.intent.action.IMS_FEATURE_CHANGED"

    invoke-direct {v10, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v10, "intent":Landroid/content/Intent;
    const-string v14, "phone_id"

    iget-object v15, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    const-string v14, "item"

    invoke-virtual {v10, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    const-string v14, "value"

    invoke-virtual {v10, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    invoke-virtual {v10, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v0, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 330
    sget-object v9, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->ECCAllowBroadcast:Ljava/util/HashMap;

    iget-object v11, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v9, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-boolean v9, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->DEBUG:Z

    if-eqz v9, :cond_11

    .line 332
    const-string v9, "ImsConfigProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Update uri "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " on phone "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " value: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 270
    .end local v8    # "simState":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "itemId":I
    .end local v13    # "isForceNotify":Z
    :pswitch_2
    iget-object v8, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 271
    .local v8, "itemId":I
    const-string v9, "ImsConfigProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Don\'t Update uri "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " on phone "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for CONFIG_SETTING"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    goto/16 :goto_a

    .line 233
    .end local v8    # "itemId":I
    :pswitch_3
    iget-object v8, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    invoke-static {v8}, Lcom/mediatek/ims/config/ImsConfigContract;->configNameToId(Ljava/lang/String;)I

    move-result v8

    .line 236
    .restart local v8    # "itemId":I
    const-string v10, "mimetype_id"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 237
    .local v10, "mimeType":I
    if-nez v10, :cond_c

    .line 238
    const-string v12, "data"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_8

    .line 239
    :cond_c
    if-ne v10, v11, :cond_10

    .line 240
    const-string v12, "data"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 246
    :goto_8
    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-direct {v12, v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 247
    .local v12, "intent":Landroid/content/Intent;
    const-string v13, "phone_id"

    iget-object v14, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    const-string v13, "item"

    invoke-virtual {v12, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    invoke-virtual {v12, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 251
    if-nez v10, :cond_d

    .line 252
    const-string v13, "value"

    invoke-virtual {v12, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_9

    .line 253
    :cond_d
    if-ne v10, v11, :cond_e

    .line 254
    const-string v13, "value"

    invoke-virtual {v12, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    :cond_e
    :goto_9
    const-string v13, "mimetype"

    invoke-virtual {v12, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v13, v0, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 261
    if-nez v10, :cond_f

    sget-boolean v9, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->DEBUG:Z

    if-eqz v9, :cond_f

    .line 262
    const-string v9, "ImsConfigProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Update uri "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " on phone "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " value: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 264
    :cond_f
    if-ne v10, v11, :cond_11

    sget-boolean v9, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->DEBUG:Z

    if-eqz v9, :cond_11

    .line 265
    const-string v9, "ImsConfigProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Update uri "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " on phone "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " value: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 242
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_10
    const-string v9, "ImsConfigProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Config "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " not String or Integer, mimeType "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    nop

    .line 347
    .end local v3    # "value":I
    .end local v4    # "isECCBroadcastFlag":Z
    .end local v5    # "isFeatureEnabled":Z
    .end local v6    # "isSimStateAllow":Z
    .end local v7    # "valueStr":Ljava/lang/String;
    .end local v8    # "itemId":I
    .end local v10    # "mimeType":I
    :cond_11
    :goto_a
    return-void

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
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onDiskFull(Landroid/database/sqlite/SQLiteFullException;)V
    .locals 2
    .param p1, "e"    # Landroid/database/sqlite/SQLiteFullException;

    .line 596
    const-string v0, "ImsConfigProvider"

    const-string v1, "Disk full, all write operations will be ignored"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    return-void
.end method

.method private prepareResultUri(Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;J)Landroid/net/Uri;
    .locals 4
    .param p1, "args"    # Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;
    .param p2, "newId"    # J

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.mediatek.ims.config.provider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 139
    .local v0, "result":Landroid/net/Uri;
    iget-object v1, p1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x2aff044

    if-eq v2, v3, :cond_2

    const v3, 0x5432a153    # 3.068843E12f

    if-eq v2, v3, :cond_1

    const v3, 0x5c1d3d70

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "tb_default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v2, "tb_master"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const-string v2, "tb_provision"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 146
    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 143
    :pswitch_0
    iget-object v1, p1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 144
    nop

    .line 149
    :goto_2
    iget-object v1, p1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->param:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 150
    iget-object v1, p1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->param:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 152
    :cond_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "result":I
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;-><init>(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 113
    .local v1, "args":Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mDatabaseHelper:Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;

    invoke-virtual {v2}, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 114
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    iget-object v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 117
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_0

    .line 115
    :catch_0
    move-exception v2

    .line 116
    .local v2, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->onDiskFull(Landroid/database/sqlite/SQLiteFullException;)V

    .line 118
    .end local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    :goto_0
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 104
    const-string v0, "vnd.android.cursor.item/imsconfig"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "result":Landroid/net/Uri;
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2, p1}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;-><init>(ILandroid/content/ContentValues;Landroid/net/Uri;)V

    .line 125
    .local v1, "args":Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;
    const-wide/16 v2, 0x0

    .line 128
    .local v2, "newId":J
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mDatabaseHelper:Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;

    invoke-virtual {v4}, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 129
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v4, v5, v6, p2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v5

    .line 133
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_0

    .line 131
    :catch_0
    move-exception v4

    .line 132
    .local v4, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-direct {p0, v4}, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->onDiskFull(Landroid/database/sqlite/SQLiteFullException;)V

    .line 134
    .end local v4    # "e":Landroid/database/sqlite/SQLiteFullException;
    :goto_0
    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->prepareResultUri(Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;J)Landroid/net/Uri;

    move-result-object v4

    return-object v4
.end method

.method public onCreate()Z
    .locals 4

    .line 82
    invoke-virtual {p0}, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 83
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    .line 85
    .local v1, "deviceContext":Landroid/content/Context;
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    const-string v2, "imsconfig.db"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    const-string v2, "ImsConfigProvider"

    const-string v3, "[onCreate] Failed to move database"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    const-string v2, "ImsConfigProvider"

    const-string v3, "[onCreate] Move database successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_1
    const-string v2, "ImsConfigProvider"

    const-string v3, "[onCreate] User locked, register receiver for BOOT_COMPLETED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 94
    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :goto_0
    new-instance v2, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;

    invoke-direct {v2, v1}, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mDatabaseHelper:Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;

    .line 98
    invoke-virtual {p0}, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mContext:Landroid/content/Context;

    .line 99
    const/4 v2, 0x1

    return v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    .line 177
    const/4 v10, 0x0

    .line 178
    .local v10, "result":Landroid/database/Cursor;
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;-><init>(ILandroid/net/Uri;)V

    move-object v11, v1

    .line 179
    .local v11, "args":Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;
    move-object/from16 v12, p0

    iget-object v1, v12, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mDatabaseHelper:Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;

    invoke-virtual {v1}, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 181
    .local v13, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v14, 0x40

    .line 182
    .local v14, "MAX_COLUMN_NAME_LENGTH":I
    const-string v1, "[\\W]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 184
    .local v15, "pattern":Ljava/util/regex/Pattern;
    array-length v1, v9

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v9, v2

    .line 185
    .local v3, "projectionArg":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x40

    const/4 v6, 0x0

    if-le v4, v5, :cond_0

    .line 186
    const-string v1, "ImsConfigProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found column name that was too long ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " characters)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-object v6

    .line 191
    :cond_0
    invoke-virtual {v15, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 192
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 193
    const-string v1, "ImsConfigProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found invalid character in column name: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", uri: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-object v6

    .line 184
    .end local v3    # "projectionArg":Ljava/lang/String;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    :cond_2
    iget-object v2, v11, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    iget-object v4, v11, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    iget-object v5, v11, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v13

    move-object v3, v9

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 206
    .end local v10    # "result":Landroid/database/Cursor;
    .local v1, "result":Landroid/database/Cursor;
    return-object v1
.end method

.method public shutdown()V
    .locals 1

    .line 211
    invoke-super {p0}, Landroid/content/ContentProvider;->shutdown()V

    .line 212
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mDatabaseHelper:Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mDatabaseHelper:Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;

    invoke-virtual {v0}, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;->close()V

    .line 215
    :cond_0
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "count":I
    new-instance v7, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;

    const/4 v2, 0x2

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;-><init>(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    move-object v1, v7

    .line 163
    .local v1, "args":Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mDatabaseHelper:Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;

    invoke-virtual {v2}, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 164
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    iget-object v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 165
    if-lez v0, :cond_0

    .line 166
    invoke-direct {p0, p1, v1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->notifyChange(Landroid/net/Uri;Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    goto :goto_0

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->onDiskFull(Landroid/database/sqlite/SQLiteFullException;)V

    .line 171
    .end local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    :goto_0
    return v0
.end method
