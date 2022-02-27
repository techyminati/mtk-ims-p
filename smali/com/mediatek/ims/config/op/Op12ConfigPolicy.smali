.class public Lcom/mediatek/ims/config/op/Op12ConfigPolicy;
.super Lcom/mediatek/ims/config/ImsConfigPolicy;
.source "Op12ConfigPolicy.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    const-string v0, "Op12ConfigPolicy"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/config/ImsConfigPolicy;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public onSetDefaultValue(ILcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;)Z
    .locals 3
    .param p1, "configId"    # I
    .param p2, "config"    # Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;

    .line 13
    const/4 v0, 0x1

    .line 14
    .local v0, "set":Z
    const/4 v1, 0x3

    packed-switch p1, :pswitch_data_0

    .line 137
    :pswitch_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 133
    :pswitch_1
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 135
    goto/16 :goto_0

    .line 130
    :pswitch_2
    const-string v1, "0"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 131
    goto/16 :goto_0

    .line 127
    :pswitch_3
    const-string v1, "0"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 128
    goto/16 :goto_0

    .line 123
    :pswitch_4
    const-string v1, "1"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 124
    goto/16 :goto_0

    .line 118
    :pswitch_5
    const-string v2, "30"

    iput-object v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 119
    iput v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 120
    goto/16 :goto_0

    .line 114
    :pswitch_6
    const-string v1, "100"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 115
    goto/16 :goto_0

    .line 109
    :pswitch_7
    const-string v2, "60"

    iput-object v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 110
    iput v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 111
    goto/16 :goto_0

    .line 104
    :pswitch_8
    const-string v2, "625000"

    iput-object v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 105
    iput v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 106
    goto/16 :goto_0

    .line 99
    :pswitch_9
    const-string v2, "60"

    iput-object v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 100
    iput v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 101
    goto/16 :goto_0

    .line 94
    :pswitch_a
    const-string v2, "7776000"

    iput-object v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 95
    iput v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 96
    goto/16 :goto_0

    .line 89
    :pswitch_b
    const-string v2, "86400"

    iput-object v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 90
    iput v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 91
    goto/16 :goto_0

    .line 84
    :pswitch_c
    const-string v2, "1200"

    iput-object v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 85
    iput v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 86
    goto :goto_0

    .line 80
    :pswitch_d
    const-string v1, "1"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 81
    goto :goto_0

    .line 76
    :pswitch_e
    const-string v1, "1"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 77
    goto :goto_0

    .line 72
    :pswitch_f
    const-string v1, "vzims.com"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 73
    goto :goto_0

    .line 68
    :pswitch_10
    const-string v1, "1"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 69
    goto :goto_0

    .line 64
    :pswitch_11
    const-string v1, "0"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 65
    goto :goto_0

    .line 59
    :pswitch_12
    const-string v2, "30"

    iput-object v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 60
    iput v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 61
    goto :goto_0

    .line 54
    :pswitch_13
    const-string v2, "16"

    iput-object v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 55
    iput v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 56
    goto :goto_0

    .line 49
    :pswitch_14
    const-string v2, "3"

    iput-object v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 50
    iput v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 51
    goto :goto_0

    .line 45
    :pswitch_15
    const-string v1, "1"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 46
    goto :goto_0

    .line 40
    :pswitch_16
    const-string v2, "5"

    iput-object v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 41
    iput v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 42
    goto :goto_0

    .line 35
    :pswitch_17
    const-string v2, "6"

    iput-object v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 36
    iput v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 37
    goto :goto_0

    .line 30
    :pswitch_18
    const-string v2, "300"

    iput-object v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 31
    iput v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 32
    goto :goto_0

    .line 25
    :pswitch_19
    const-string v2, "300"

    iput-object v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 26
    iput v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 27
    goto :goto_0

    .line 21
    :pswitch_1a
    const-string v1, "2"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 22
    goto :goto_0

    .line 17
    :pswitch_1b
    const-string v1, "7"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 18
    nop

    .line 140
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
