.class Lcom/mediatek/ims/internal/DataDispatcher$1;
.super Ljava/util/HashMap;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/DataDispatcher;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher;)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/DataDispatcher;

    .line 70
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$1;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 73
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v0, "OPERATOR_BARRED"

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "NAS_SIGNALLING"

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "MBMS_CAPABILITIES_INSUFFICIENT"

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "LLC_SNDCP"

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "INSUFFICIENT_RESOURCES"

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "MISSING_UNKNOWN_APN"

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "UNKNOWN_PDP_ADDRESS_TYPE"

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v0, "USER_AUTHENTICATION"

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "ACTIVATION_REJECT_GGSN"

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "ACTIVATION_REJECT_UNSPECIFIED"

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "SERVICE_OPTION_NOT_SUPPORTED"

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "SERVICE_OPTION_NOT_SUBSCRIBED"

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v0, "SERVICE_OPTION_OUT_OF_ORDER"

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v0, "NSAPI_IN_USE"

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "REGULAR_DEACTIVATION"

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v0, "QOS_NOT_ACCEPTED"

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, "NETWORK_FAILURE"

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, "UMTS_REACTIVATION_REQ"

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v0, "FEATURE_NOT_SUPP"

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "TFT_SEMANTIC_ERROR"

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v0, "TFT_SYTAX_ERROR"

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v0, "UNKNOWN_PDP_CONTEXT"

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v0, "FILTER_SEMANTIC_ERROR"

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "FILTER_SYTAX_ERROR"

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "PDP_WITHOUT_ACTIVE_TFT"

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "MULTICAST_GROUP_MEMBERSHIP_TIMEOUT"

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "BCM_VIOLATION"

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "LAST_PDN_DISC_NOT_ALLOWED"

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "ONLY_IPV4_ALLOWED"

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "ONLY_IPV6_ALLOWED"

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "ONLY_SINGLE_BEARER_ALLOWED"

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v0, "ESM_INFO_NOT_RECEIVED"

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "PDN_CONN_DOES_NOT_EXIST"

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED"

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "COLLISION_WITH_NW_INITIATED_REQUEST"

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "UNSUPPORTED_QCI_VALUE"

    const/16 v1, 0x3b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "BEARER_HANDLING_NOT_SUPPORT"

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "MAX_ACTIVE_PDP_CONTEXT_REACHED"

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "UNSUPPORTED_APN_IN_CURRENT_PLMN"

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "INVALID_TRANSACTION_ID"

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "MESSAGE_INCORRECT_SEMANTIC"

    const/16 v1, 0x5f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "INVALID_MANDATORY_INFO"

    const/16 v1, 0x60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v0, "MESSAGE_TYPE_UNSUPPORTED"

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v0, "MSG_TYPE_NONCOMPATIBLE_STATE"

    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v0, "UNKNOWN_INFO_ELEMENT"

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v0, "CONDITIONAL_IE_ERROR"

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v0, "MSG_AND_PROTOCOL_STATE_UNCOMPATIBLE"

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v0, "PROTOCOL_ERRORS"

    const/16 v1, 0x6f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v0, "APN_TYPE_CONFLICT"

    const/16 v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v0, "REGISTRATION_FAIL"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v0, "GPRS_REGISTRATION_FAIL"

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "SIGNAL_LOST"

    const/4 v1, -0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v0, "PREF_RADIO_TECH_CHANGED"

    const/4 v1, -0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v0, "RADIO_POWER_OFF"

    const/4 v1, -0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v0, "TETHERED_CALL_ACTIVE"

    const/4 v1, -0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v0, "PDP_FAIL_ROUTER_ADVERTISEMENT"

    const/4 v1, -0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v0, "PDP_FAIL_FALLBACK_RETRY"

    const/16 v1, -0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v0, "INSUFFICIENT_LOCAL_RESOURCES"

    const v1, 0xffffe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v0, "ERROR_UNSPECIFIED"

    const v1, 0xffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v0, "UNKNOWN"

    const/high16 v1, 0x10000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v0, "RADIO_NOT_AVAILABLE"

    const v1, 0x10001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, "UNACCEPTABLE_NETWORK_PARAMETER"

    const v1, 0x10002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v0, "CONNECTION_TO_DATACONNECTIONAC_BROKEN"

    const v1, 0x10003

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v0, "LOST_CONNECTION"

    const v1, 0x10004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v0, "RESET_BY_FRAMEWORK"

    const v1, 0x10005

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v0, "PAM_ATT_PDN_ACCESS_REJECT_IMS_PDN_BLOCK_TEMP"

    const/16 v1, 0x1402

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v0, "TCM_ESM_TIMER_TIMEOUT"

    const v1, 0x1502a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v0, "MTK_TCM_ESM_TIMER_TIMEOUT"

    const/16 v1, 0xf46

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v0, "DUE_TO_REACH_RETRY_COUNTER"

    const/16 v1, 0xe0f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v0, "OEM_DCFAILCAUSE_12"

    const/16 v1, 0x100c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method
