.class public Lcom/mediatek/ims/ril/ImsRadioResponse;
.super Lcom/mediatek/ims/ril/ImsRadioResponseBase;
.source "ImsRadioResponse.java"


# instance fields
.field private mPhoneId:I

.field private mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V
    .locals 3
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p2, "phoneId"    # I

    .line 30
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 32
    iput p2, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mPhoneId:I

    .line 33
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsRadioResponse, phone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogv(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private responseCallForwardInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CallForwardInfo;",
            ">;)V"
        }
    .end annotation

    .line 762
    .local p2, "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 763
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_2

    .line 764
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 765
    .local v1, "ret":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 766
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v3, v1, v2

    .line 767
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->status:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 768
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 769
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 770
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 771
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget-object v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 772
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 765
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 774
    .end local v2    # "i":I
    :cond_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 775
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 777
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 779
    .end local v1    # "ret":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_2
    return-void
.end method

.method private responseCallForwardInfoEx(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;",
            ">;)V"
        }
    .end annotation

    .line 787
    .local p2, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 788
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_5

    .line 789
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 790
    .local v1, "ret":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 791
    const/4 v4, 0x2

    new-array v5, v4, [J

    .line 792
    .local v5, "timeSlot":[J
    new-array v6, v4, [Ljava/lang/String;

    .line 794
    .local v6, "timeSlotStr":[Ljava/lang/String;
    new-instance v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    invoke-direct {v7}, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;-><init>()V

    aput-object v7, v1, v3

    .line 795
    aget-object v7, v1, v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    iget v8, v8, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->status:I

    iput v8, v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->status:I

    .line 796
    aget-object v7, v1, v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    iget v8, v8, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->reason:I

    iput v8, v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    .line 797
    aget-object v7, v1, v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    iget v8, v8, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->serviceClass:I

    iput v8, v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    .line 798
    aget-object v7, v1, v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    iget v8, v8, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->toa:I

    iput v8, v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->toa:I

    .line 799
    aget-object v7, v1, v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    iget-object v8, v8, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->number:Ljava/lang/String;

    iput-object v8, v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    .line 800
    aget-object v7, v1, v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    iget v8, v8, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->timeSeconds:I

    iput v8, v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSeconds:I

    .line 801
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    iget-object v7, v7, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    aput-object v7, v6, v2

    .line 802
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    iget-object v7, v7, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 804
    aget-object v7, v6, v2

    if-eqz v7, :cond_2

    aget-object v7, v6, v8

    if-nez v7, :cond_0

    goto :goto_2

    .line 808
    :cond_0
    move v7, v2

    .local v7, "j":I
    :goto_1
    if-ge v7, v4, :cond_1

    .line 809
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "HH:mm"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 810
    .local v8, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v9, "GMT+8"

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 812
    :try_start_0
    aget-object v9, v6, v7

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 813
    .local v9, "date":Ljava/util/Date;
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    aput-wide v10, v5, v7
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    .end local v9    # "date":Ljava/util/Date;
    nop

    .line 808
    .end local v8    # "dateFormat":Ljava/text/SimpleDateFormat;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 814
    .restart local v8    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v4

    .line 815
    .local v4, "e":Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    .line 816
    const/4 v5, 0x0

    .line 817
    nop

    .line 820
    .end local v4    # "e":Ljava/text/ParseException;
    .end local v7    # "j":I
    .end local v8    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_1
    aget-object v4, v1, v3

    iput-object v5, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    goto :goto_3

    .line 805
    :cond_2
    :goto_2
    aget-object v4, v1, v3

    const/4 v7, 0x0

    iput-object v7, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    .line 790
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 823
    .end local v3    # "i":I
    .end local v5    # "timeSlot":[J
    .end local v6    # "timeSlotStr":[Ljava/lang/String;
    :cond_3
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_4

    .line 824
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 826
    :cond_4
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 828
    .end local v1    # "ret":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    :cond_5
    return-void
.end method

.method private responseFailCause(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "info"    # Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    .line 901
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 902
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_1

    .line 903
    const/4 v1, 0x0

    .line 904
    .local v1, "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 905
    new-instance v2, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v2}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    move-object v1, v2

    .line 906
    iget v2, p2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->causeCode:I

    iput v2, v1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 907
    iget-object v2, p2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->vendorCause:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .line 908
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 910
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 912
    .end local v1    # "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    :cond_1
    return-void
.end method

.method private responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "str"    # Ljava/lang/String;

    .line 854
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 855
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_1

    .line 856
    const/4 v1, 0x0

    .line 857
    .local v1, "ret":Ljava/lang/String;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 858
    move-object v1, p2

    .line 859
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 861
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 863
    .end local v1    # "ret":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static responseStringArrayList(Lcom/mediatek/ims/ril/ImsRILAdapter;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/ims/ril/ImsRILAdapter;",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 190
    .local p2, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 191
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_2

    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, "ret":[Ljava/lang/String;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 194
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 195
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 196
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    .end local v2    # "i":I
    :cond_0
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 200
    :cond_1
    invoke-virtual {p0, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 202
    .end local v1    # "ret":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 837
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 838
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_1

    .line 839
    const/4 v1, 0x0

    .line 840
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 841
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 843
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 845
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method static sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "ret"    # Ljava/lang/Object;

    .line 47
    if-eqz p0, :cond_0

    .line 48
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 49
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 79
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 80
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSmsExResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 941
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 942
    return-void
.end method

.method public acknowledgeLastIncomingGsmSmsExResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 937
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 938
    return-void
.end method

.method public addImsConferenceCallMemberResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 406
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 407
    return-void
.end method

.method public cancelUssiResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 506
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 507
    return-void
.end method

.method public conferenceDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 452
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 453
    return-void
.end method

.method public conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 88
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 89
    return-void
.end method

.method public dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 97
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 98
    return-void
.end method

.method public dialWithSipUriResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 488
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 489
    return-void
.end method

.method public emergencyDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 443
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 444
    return-void
.end method

.method public exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 106
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 107
    return-void
.end method

.method public explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 115
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 116
    return-void
.end method

.method public forceReleaseCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 542
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 543
    return-void
.end method

.method public getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CallForwardInfo;",
            ">;)V"
        }
    .end annotation

    .line 626
    .local p2, "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseCallForwardInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 627
    return-void
.end method

.method public getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "enable"    # Z
    .param p3, "serviceClass"    # I

    .line 641
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 642
    return-void
.end method

.method public getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "status"    # I

    .line 683
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 684
    return-void
.end method

.method public getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "n"    # I
    .param p3, "m"    # I

    .line 659
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 660
    return-void
.end method

.method public getColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "n"    # I
    .param p3, "m"    # I

    .line 719
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 720
    return-void
.end method

.method public getColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "status"    # I

    .line 701
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 702
    return-void
.end method

.method public getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "resp"    # I

    .line 597
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 598
    return-void
.end method

.method public getImsCfgFeatureValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "value"    # I

    .line 376
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 377
    return-void
.end method

.method public getImsCfgProvisionValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "value"    # Ljava/lang/String;

    .line 386
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public getImsCfgResourceCapValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "value"    # I

    .line 396
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 397
    return-void
.end method

.method public getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "failCauseInfo"    # Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseFailCause(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    .line 62
    return-void
.end method

.method public getProvisionValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 357
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 358
    return-void
.end method

.method public getXcapStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 515
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 516
    return-void
.end method

.method public hangupAllResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 425
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 426
    return-void
.end method

.method public hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 125
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 126
    return-void
.end method

.method public holdCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 230
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 231
    return-void
.end method

.method public imsBearerActivationDoneResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 551
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 552
    return-void
.end method

.method public imsBearerDeactivationDoneResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 560
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 561
    return-void
.end method

.method public imsDeregNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 257
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 258
    return-void
.end method

.method public imsEctCommandResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 221
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 222
    return-void
.end method

.method public pullCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 71
    return-void
.end method

.method public queryCallForwardInTimeSlotStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;",
            ">;)V"
        }
    .end annotation

    .line 734
    .local p2, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseCallForwardInfoEx(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 735
    return-void
.end method

.method public removeImsConferenceCallMemberResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 416
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 417
    return-void
.end method

.method public resetSuppServResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 524
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 525
    return-void
.end method

.method public responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 879
    .local p2, "var":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 881
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_2

    .line 882
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 883
    .local v1, "ret":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 884
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 883
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 886
    .end local v2    # "i":I
    :cond_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 887
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 889
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 891
    .end local v1    # "ret":[I
    :cond_2
    return-void
.end method

.method public varargs responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var"    # [I

    .line 871
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 872
    .local v0, "ints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 873
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 875
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 876
    return-void
.end method

.method public resumeCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 239
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 240
    return-void
.end method

.method protected riljLoge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 754
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 755
    return-void
.end method

.method public runGbaAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 746
    .local p2, "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v0, p1, p2}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseStringArrayList(Lcom/mediatek/ims/ril/ImsRILAdapter;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 747
    return-void
.end method

.method public sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 135
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 136
    return-void
.end method

.method public sendImsSmsExResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "sms"    # Landroid/hardware/radio/V1_0/SendSmsResult;

    .line 921
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 923
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_1

    .line 924
    new-instance v1, Lcom/mediatek/ims/MtkSmsResponse;

    iget v2, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->messageRef:I

    iget-object v3, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->ackPDU:Ljava/lang/String;

    iget v4, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->errorCode:I

    invoke-direct {v1, v2, v3, v4}, Lcom/mediatek/ims/MtkSmsResponse;-><init>(ILjava/lang/String;I)V

    .line 925
    .local v1, "ret":Lcom/mediatek/ims/MtkSmsResponse;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 926
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 928
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 930
    .end local v1    # "ret":Lcom/mediatek/ims/MtkSmsResponse;
    :cond_1
    return-void
.end method

.method public sendUssiResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 497
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 498
    return-void
.end method

.method public setCallForwardInTimeSlotResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 739
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 740
    return-void
.end method

.method public setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 615
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 616
    return-void
.end method

.method public setCallIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 248
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 249
    return-void
.end method

.method public setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 649
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 650
    return-void
.end method

.method public setClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 691
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 692
    return-void
.end method

.method public setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 673
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 674
    return-void
.end method

.method public setColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 727
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 728
    return-void
.end method

.method public setColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 709
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 710
    return-void
.end method

.method public setEccServiceCategoryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 461
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 462
    return-void
.end method

.method public setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "retry"    # I

    .line 607
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 608
    return-void
.end method

.method public setImsBearerNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 569
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 570
    return-void
.end method

.method public setImsCfgFeatureValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 371
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 372
    return-void
.end method

.method public setImsCfgProvisionValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 381
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 382
    return-void
.end method

.method public setImsCfgResourceCapValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 391
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 392
    return-void
.end method

.method public setImsEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 266
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 267
    return-void
.end method

.method public setImsRegistrationReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 583
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 584
    return-void
.end method

.method public setImsRtpReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 578
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 579
    return-void
.end method

.method public setImsVideoEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 330
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 331
    return-void
.end method

.method public setImsVoiceEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 321
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 322
    return-void
.end method

.method public setImscfgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 339
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 340
    return-void
.end method

.method public setModemImsCfgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "results"    # Ljava/lang/String;

    .line 348
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "response"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 144
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 145
    return-void
.end method

.method public setProvisionValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 366
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 367
    return-void
.end method

.method public setRcsUaEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 311
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 312
    return-void
.end method

.method public setViWifiEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 302
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 303
    return-void
.end method

.method public setVilteEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 293
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 294
    return-void
.end method

.method public setVoiceDomainPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 665
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 666
    return-void
.end method

.method public setVolteEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 275
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 276
    return-void
.end method

.method public setWfcEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 284
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 285
    return-void
.end method

.method public setWfcProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 434
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 435
    return-void
.end method

.method public setupXcapUserAgentStringResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 533
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 534
    return-void
.end method

.method public startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 154
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleDtmfQueueNext(I)V

    .line 155
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 156
    return-void
.end method

.method public stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 165
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleDtmfQueueNext(I)V

    .line 166
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 167
    return-void
.end method

.method public switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 175
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 176
    return-void
.end method

.method public videoCallAcceptResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 212
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 213
    return-void
.end method

.method public vtDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 470
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 471
    return-void
.end method

.method public vtDialWithSipUriResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 479
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 480
    return-void
.end method
