.class public Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
.super Ljava/lang/Object;
.source "OperatorCustomizationFactoryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperatorFactoryInfo"
.end annotation


# instance fields
.field mFactoryName:Ljava/lang/String;

.field mLibName:Ljava/lang/String;

.field mOperator:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mSegment:Ljava/lang/String;

.field mSpecification:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "libName"    # Ljava/lang/String;
    .param p2, "factoryName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "operator"    # Ljava/lang/String;

    .line 137
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "libName"    # Ljava/lang/String;
    .param p2, "factoryName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "operator"    # Ljava/lang/String;
    .param p5, "segment"    # Ljava/lang/String;

    .line 154
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "libName"    # Ljava/lang/String;
    .param p2, "factoryName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "operator"    # Ljava/lang/String;
    .param p5, "segment"    # Ljava/lang/String;
    .param p6, "specification"    # Ljava/lang/String;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mLibName:Ljava/lang/String;

    .line 174
    iput-object p2, p0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mFactoryName:Ljava/lang/String;

    .line 175
    iput-object p3, p0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mPackageName:Ljava/lang/String;

    .line 176
    iput-object p4, p0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mOperator:Ljava/lang/String;

    .line 177
    iput-object p5, p0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mSegment:Ljava/lang/String;

    .line 178
    iput-object p6, p0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mSpecification:Ljava/lang/String;

    .line 179
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperatorFactoryInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mSpecification:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mSegment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mLibName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mFactoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
