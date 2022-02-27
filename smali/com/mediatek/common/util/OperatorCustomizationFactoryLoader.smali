.class public Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;
.super Ljava/lang/Object;
.source "OperatorCustomizationFactoryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;,
        Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;
    }
.end annotation


# static fields
.field private static final CUSTOM_APK_PATH:Ljava/lang/String; = "/custom/app/"

.field private static final CUSTOM_JAR_PATH:Ljava/lang/String; = "/custom/operator/libs/"

.field private static final PROPERTY_OPERATOR_OPTR:Ljava/lang/String; = "persist.vendor.operator.optr"

.field private static final PROPERTY_OPERATOR_SEG:Ljava/lang/String; = "persist.vendor.operator.seg"

.field private static final PROPERTY_OPERATOR_SPEC:Ljava/lang/String; = "persist.vendor.operator.spec"

.field private static final RSC_SYSTEM_APK_PATH:Ljava/lang/String;

.field private static final SYSTEM_APK_PATH:Ljava/lang/String; = "/system/app/"

.field private static final SYSTEM_JAR_PATH:Ljava/lang/String; = "/system/operator/libs/"

.field private static final TAG:Ljava/lang/String; = "OperatorCustomizationFactoryLoader"

.field private static final USP_PACKAGE:Ljava/lang/String;

.field private static final sFactoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    const-string v0, "ro.vendor.mtk_carrierexpress_pack"

    const-string v1, "no"

    .line 66
    invoke-static {v0, v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->USP_PACKAGE:Ljava/lang/String;

    .line 71
    const-string v0, "ro.vendor.sys.current_rsc_path"

    const-string v1, ""

    .line 72
    invoke-static {v0, v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->RSC_SYSTEM_APK_PATH:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->sFactoryMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findOpertorFactoryInfo(Ljava/util/List;I)Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    .locals 7
    .param p1, "slot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;",
            ">;I)",
            "Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;"
        }
    .end annotation

    .line 384
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    const/4 v0, 0x0

    .line 385
    .local v0, "ret":Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    invoke-static {p1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->getActiveOperatorInfo(I)Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;

    move-result-object v1

    .line 386
    .local v1, "optrInfo":Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;
    if-eqz v1, :cond_9

    invoke-static {v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;->access$000(Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 392
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v2, "unSignedOperatorIdFactoryInfos":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    .line 395
    .local v4, "factoryInfo":Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    invoke-static {v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;->access$000(Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mOperator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 396
    iget-object v5, v4, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mSegment:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 397
    iget-object v5, v4, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mSegment:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;->access$100(Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 398
    iget-object v5, v4, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mSpecification:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mSpecification:Ljava/lang/String;

    .line 399
    invoke-static {v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;->access$200(Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 400
    :cond_1
    move-object v0, v4

    .line 401
    goto :goto_1

    .line 404
    :cond_2
    iget-object v5, v4, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mSpecification:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mSpecification:Ljava/lang/String;

    .line 405
    invoke-static {v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;->access$200(Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 406
    :cond_3
    move-object v0, v4

    .line 407
    goto :goto_1

    .line 409
    :cond_4
    iget-object v5, v4, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mOperator:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 410
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    .end local v4    # "factoryInfo":Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    :cond_5
    goto :goto_0

    .line 413
    :cond_6
    :goto_1
    if-nez v0, :cond_8

    .line 415
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    .line 416
    .restart local v4    # "factoryInfo":Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    iget-object v5, v4, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mLibName:Ljava/lang/String;

    invoke-static {v5}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->searchTargetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 417
    .local v5, "target":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 418
    move-object v0, v4

    .line 419
    goto :goto_3

    .line 421
    .end local v4    # "factoryInfo":Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    .end local v5    # "target":Ljava/lang/String;
    :cond_7
    goto :goto_2

    .line 423
    :cond_8
    :goto_3
    return-object v0

    .line 388
    .end local v2    # "unSignedOperatorIdFactoryInfos":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    :cond_9
    :goto_4
    const-string v2, "OperatorCustomizationFactoryLoader"

    const-string v3, "It\'s OM load or parse failed, because operator is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-object v0
.end method

.method private static getActiveOperatorInfo()Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;
    .locals 5

    .line 195
    new-instance v0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;

    const-string v1, "persist.vendor.operator.optr"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "persist.vendor.operator.spec"

    const-string v3, ""

    .line 196
    invoke-static {v2, v3}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "persist.vendor.operator.seg"

    const-string v4, ""

    .line 197
    invoke-static {v3, v4}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .local v0, "info":Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;
    return-object v0
.end method

.method private static getActiveOperatorInfo(I)Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;
    .locals 7
    .param p0, "slot"    # I

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "info":Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;
    const/4 v1, -0x1

    if-eq p0, v1, :cond_3

    const-string v1, "no"

    sget-object v2, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->USP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist.vendor.mtk_usp_optr_slot_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "optrProperty":Ljava/lang/String;
    const-string v2, "OperatorCustomizationFactoryLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usp optr property is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 213
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "items":[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 215
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 216
    new-instance v3, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;

    aget-object v4, v2, v4

    const-string v5, ""

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 217
    :cond_0
    array-length v3, v2

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    .line 218
    new-instance v3, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;

    aget-object v4, v2, v4

    aget-object v5, v2, v5

    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-direct {v3, v4, v5, v6}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 220
    :cond_1
    const-string v3, "OperatorCustomizationFactoryLoader"

    const-string v4, "usp optr property no content or wrong"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v1    # "optrProperty":Ljava/lang/String;
    .end local v2    # "items":[Ljava/lang/String;
    :cond_2
    :goto_0
    goto :goto_1

    .line 225
    :cond_3
    invoke-static {}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->getActiveOperatorInfo()Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;

    move-result-object v0

    .line 227
    :goto_1
    const-string v1, "OperatorCustomizationFactoryLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\'s OperatorInfo is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-object v0
.end method

.method private static getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "prop"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .line 333
    const-string v0, ""

    .line 335
    .local v0, "propValue":Ljava/lang/String;
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 336
    .local v1, "systemPropertiesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 337
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 338
    .local v2, "getPropMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object p1, v3, v7

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 348
    .end local v1    # "systemPropertiesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getPropMethod":Ljava/lang/reflect/Method;
    :goto_0
    goto :goto_1

    .line 346
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "OperatorCustomizationFactoryLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get system properties failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 344
    :catch_1
    move-exception v1

    .line 345
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "OperatorCustomizationFactoryLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get system properties failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 342
    :catch_2
    move-exception v1

    .line 343
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "OperatorCustomizationFactoryLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get system properties failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 340
    :catch_3
    move-exception v1

    .line 341
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "OperatorCustomizationFactoryLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get system properties failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 349
    :goto_1
    return-object v0
.end method

.method public static loadFactory(Landroid/content/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 242
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->loadFactory(Landroid/content/Context;Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized loadFactory(Landroid/content/Context;Ljava/util/List;I)Ljava/lang/Object;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "slot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    const-class v0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;

    monitor-enter v0

    .line 258
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 259
    :try_start_0
    const-string v2, "OperatorCustomizationFactoryLoader"

    const-string v3, "loadFactory failed, because param list is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit v0

    return-object v1

    .line 257
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    .end local p2    # "slot":I
    :catchall_0
    move-exception p0

    goto/16 :goto_1

    .line 262
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    .restart local p2    # "slot":I
    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->findOpertorFactoryInfo(Ljava/util/List;I)Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    move-result-object v2

    .line 263
    .local v2, "factoryInfo":Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    if-nez v2, :cond_2

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 266
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 268
    .end local v4    # "index":I
    :cond_1
    const-string v4, "OperatorCustomizationFactoryLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not find operatorFactoryInfo by slot id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " from \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 268
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    monitor-exit v0

    return-object v1

    .line 274
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_2
    sget-object v3, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->sFactoryMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 275
    .local v3, "factory":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 276
    const-string v1, "OperatorCustomizationFactoryLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " from cache by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    monitor-exit v0

    return-object v3

    .line 279
    :cond_3
    :try_start_3
    iget-object v4, v2, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mLibName:Ljava/lang/String;

    invoke-static {v4}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->searchTargetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_4

    .line 282
    monitor-exit v0

    return-object v1

    .line 285
    :cond_4
    :try_start_4
    iget-object v1, v2, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mFactoryName:Ljava/lang/String;

    iget-object v5, v2, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v4, v1, v5}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->loadFactoryInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 287
    .end local v3    # "factory":Ljava/lang/Object;
    .local v1, "factory":Ljava/lang/Object;
    if-eqz v1, :cond_5

    .line 289
    sget-object v3, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->sFactoryMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 291
    :cond_5
    monitor-exit v0

    return-object v1

    .line 257
    .end local v1    # "factory":Ljava/lang/Object;
    .end local v2    # "factoryInfo":Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    .end local v4    # "path":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    .end local p2    # "slot":I
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private static loadFactoryInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "factoryClassName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 296
    const-string v0, "OperatorCustomizationFactoryLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load factory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " whose packageName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    if-eqz p0, :cond_0

    .line 301
    :try_start_0
    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .local v0, "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 326
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 303
    :cond_0
    new-instance v0, Ldalvik/system/PathClassLoader;

    .line 304
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 307
    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 308
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "OperatorCustomizationFactoryLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load class : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " successfully with classLoader:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    if-eqz p0, :cond_1

    .line 313
    const/4 v2, 0x1

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 314
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x3

    invoke-virtual {p0, p3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 316
    .local v4, "opContext":Landroid/content/Context;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 320
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "opContext":Landroid/content/Context;
    :catch_1
    move-exception v2

    .line 322
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    const-string v3, "OperatorCustomizationFactoryLoader"

    const-string v4, "Exception occurs when execute constructor with Context"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 317
    :catch_2
    move-exception v2

    .line 319
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "OperatorCustomizationFactoryLoader"

    const-string v4, "Exception occurs when using constructor with Context"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    nop

    .line 325
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    .line 326
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    nop

    .line 327
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "OperatorCustomizationFactoryLoader"

    const-string v2, "Exception when initial instance"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    .end local v0    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static searchTargetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "target"    # Ljava/lang/String;

    .line 353
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 354
    const-string v0, "OperatorCustomizationFactoryLoader"

    const-string v2, "target is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-object v1

    .line 358
    :cond_0
    move-object v0, p0

    .line 359
    .local v0, "search":Ljava/lang/String;
    const-string v2, ".apk"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    sget-object v2, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->RSC_SYSTEM_APK_PATH:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 364
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->RSC_SYSTEM_APK_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/app/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v4, "/system/app/"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const/4 v4, 0x2

    const-string v5, "/custom/app/"

    aput-object v5, v2, v4

    .local v2, "searchFolders":[Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 367
    .end local v2    # "searchFolders":[Ljava/lang/String;
    :cond_1
    const-string v2, "/system/app/"

    const-string v4, "/custom/app/"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 370
    :cond_2
    const-string v2, "/system/operator/libs/"

    const-string v4, "/custom/operator/libs/"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 372
    .restart local v2    # "searchFolders":[Ljava/lang/String;
    :goto_1
    array-length v4, v2

    :goto_2
    if-ge v3, v4, :cond_4

    aget-object v5, v2, v3

    .line 373
    .local v5, "folder":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 372
    .end local v5    # "folder":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 378
    :cond_4
    const-string v3, "OperatorCustomizationFactoryLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not find target "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-object v1
.end method
