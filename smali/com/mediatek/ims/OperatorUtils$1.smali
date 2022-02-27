.class Lcom/mediatek/ims/OperatorUtils$1;
.super Ljava/util/HashMap;
.source "OperatorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/OperatorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/mediatek/ims/OperatorUtils$OPID;",
        "Ljava/util/List;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 28

    .line 85
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/util/HashMap;-><init>()V

    .line 87
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP01:Lcom/mediatek/ims/OperatorUtils$OPID;

    const-string v2, "46000"

    const-string v3, "46002"

    const-string v4, "46004"

    const-string v5, "46007"

    const-string v6, "46008"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/OperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP02:Lcom/mediatek/ims/OperatorUtils$OPID;

    const-string v2, "46001"

    const-string v3, "46006"

    const-string v4, "46009"

    const-string v5, "45407"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/OperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP03:Lcom/mediatek/ims/OperatorUtils$OPID;

    const-string v2, "20801"

    const-string v3, "20802"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/OperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP05:Lcom/mediatek/ims/OperatorUtils$OPID;

    const-string v2, "23203"

    const-string v3, "23204"

    const-string v4, "21901"

    const-string v5, "23001"

    const-string v6, "21630"

    const-string v7, "29702"

    const-string v8, "20416"

    const-string v9, "20420"

    const-string v10, "26002"

    const-string v11, "22004"

    const-string v12, "23430"

    const-string v13, "26201"

    const-string v14, "26206"

    const-string v15, "26278"

    filled-new-array/range {v2 .. v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/OperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP06:Lcom/mediatek/ims/OperatorUtils$OPID;

    const-string v2, "21401"

    const-string v3, "21406"

    const-string v4, "20404"

    const-string v5, "28602"

    const-string v6, "23415"

    const-string v7, "27602"

    const-string v8, "23003"

    const-string v9, "23099"

    const-string v10, "60202"

    const-string v11, "28802"

    const-string v12, "54201"

    const-string v13, "26202"

    const-string v14, "26204"

    const-string v15, "26209"

    const-string v16, "62002"

    const-string v17, "20205"

    const-string v18, "21670"

    const-string v19, "27402"

    const-string v20, "27403"

    const-string v21, "27201"

    const-string v22, "22210"

    const-string v23, "27801"

    const-string v24, "53001"

    const-string v25, "26801"

    const-string v26, "22601"

    const-string v27, "42702"

    filled-new-array/range {v2 .. v27}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/OperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP07:Lcom/mediatek/ims/OperatorUtils$OPID;

    const-string v2, "31030"

    const-string v3, "31070"

    const-string v4, "31080"

    const-string v5, "31090"

    const-string v6, "310150"

    const-string v7, "310170"

    const-string v8, "310280"

    const-string v9, "310380"

    const-string v10, "310410"

    const-string v11, "310560"

    const-string v12, "310680"

    const-string v13, "311180"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/OperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP08:Lcom/mediatek/ims/OperatorUtils$OPID;

    const-string v2, "310160"

    const-string v3, "310260"

    const-string v4, "310490"

    const-string v5, "310580"

    const-string v6, "310660"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/OperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP09:Lcom/mediatek/ims/OperatorUtils$OPID;

    const-string v2, "46003"

    const-string v3, "46011"

    const-string v4, "46012"

    const-string v5, "45502"

    const-string v6, "45507"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/OperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP11:Lcom/mediatek/ims/OperatorUtils$OPID;

    const-string v2, "23420"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/OperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP15:Lcom/mediatek/ims/OperatorUtils$OPID;

    const-string v2, "26203"

    const-string v3, "26207"

    const-string v4, "26208"

    const-string v5, "26211"

    const-string v6, "26277"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/OperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP16:Lcom/mediatek/ims/OperatorUtils$OPID;

    const-string v2, "23430"

    const-string v3, "23431"

    const-string v4, "23432"

    const-string v5, "23433"

    const-string v6, "23434"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/OperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP18:Lcom/mediatek/ims/OperatorUtils$OPID;

    const-string v2, "405854"

    const-string v3, "405855"

    const-string v4, "405856"

    const-string v5, "405872"

    const-string v6, "405857"

    const-string v7, "405858"

    const-string v8, "405859"

    const-string v9, "405860"

    const-string v10, "405861"

    const-string v11, "405862"

    const-string v12, "405873"

    const-string v13, "405863"

    const-string v14, "405864"

    const-string v15, "405874"

    const-string v16, "405865"

    const-string v17, "405866"

    const-string v18, "405867"

    const-string v19, "405868"

    const-string v20, "405869"

    const-string v21, "405871"

    const-string v22, "405870"

    const-string v23, "405840"

    filled-new-array/range {v2 .. v23}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/OperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP156:Lcom/mediatek/ims/OperatorUtils$OPID;

    const-string v2, "23802"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/OperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method
