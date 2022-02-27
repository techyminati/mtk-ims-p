.class public Lcom/mediatek/ims/ril/OpImsRILUtil;
.super Ljava/lang/Object;
.source "OpImsRILUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpImsRILUtil"

.field private static sConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    :try_start_0
    const-string v0, "com.mediatek.op.ims.ril.OpImsRIL"

    .line 55
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 56
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lcom/mediatek/ims/ril/OpImsRILUtil;->sConstructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OpImsRILUtil"

    const-string v2, "Load OP package fail"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 58
    :catch_1
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "OpImsRILUtil"

    const-string v2, "OP packages classes are not found"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 64
    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeCommandInterface(Landroid/content/Context;I)Lcom/mediatek/ims/ril/OpImsCommandsInterface;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .line 77
    sget-object v0, Lcom/mediatek/ims/ril/OpImsRILUtil;->sConstructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/ril/OpImsRILUtil;->sConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/OpImsCommandsInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OpImsRILUtil"

    const-string v2, "OP packages cannot be created"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, "OpImsRILUtil"

    const-string v1, "Load default OP packages"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Lcom/mediatek/ims/ril/DefaultOpImsRIL;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/ril/DefaultOpImsRIL;-><init>(I)V

    return-object v0
.end method
