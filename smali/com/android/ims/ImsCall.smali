.class public Lcom/android/ims/ImsCall;
.super Ljava/lang/Object;
.source "ImsCall.java"

# interfaces
.implements Lcom/android/ims/internal/ICall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;,
        Lcom/android/ims/ImsCall$Listener;
    }
.end annotation


# static fields
.field private static final CONF_DBG:Z = true

.field private static final DBG:Z

.field private static final FORCE_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "ImsCall"

.field private static final UPDATE_EXTEND_TO_CONFERENCE:I = 0x5

.field private static final UPDATE_HOLD:I = 0x1

.field protected static final UPDATE_HOLD_MERGE:I = 0x2

.field private static final UPDATE_MERGE:I = 0x4

.field protected static final UPDATE_NONE:I = 0x0

.field private static final UPDATE_RESUME:I = 0x3

.field private static final UPDATE_UNSPECIFIED:I = 0x6

.field public static final USSD_MODE_NOTIFY:I = 0x0

.field public static final USSD_MODE_REQUEST:I = 0x1

.field private static final VDBG:Z

.field private static final sUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mAnswerWithRtt:Z

.field protected mCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mCallSessionMergePending:Z

.field private mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mHold:Z

.field protected mImsCallSessionListenerProxy:Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

.field private mInCall:Z

.field protected mIsConferenceHost:Z

.field private mIsMerged:Z

.field private mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field protected mListener:Lcom/android/ims/ImsCall$Listener;

.field protected mLockObj:Ljava/lang/Object;

.field private mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

.field protected mMergeHost:Lcom/android/ims/ImsCall;

.field protected mMergePeer:Lcom/android/ims/ImsCall;

.field private mMergeRequestedByConference:Z

.field private mMute:Z

.field protected mOverrideReason:I

.field private mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field public mSession:Landroid/telephony/ims/ImsCallSession;

.field private mSessionEndDuringMerge:Z

.field private mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field protected mTerminationRequestPending:Z

.field protected mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

.field protected mUpdateRequest:I

.field private mWasVideoCall:Z

.field public final uniqueId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    .line 77
    sput-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    .line 591
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/ims/ImsCall;->sUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    .line 499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 503
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 505
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mMute:Z

    .line 507
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 509
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 512
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 514
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 518
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    .line 520
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    .line 523
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 527
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 528
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 531
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

    .line 535
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    .line 541
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    .line 545
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 549
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    .line 555
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 564
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    .line 577
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z

    .line 586
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    .line 610
    iput v0, p0, Lcom/android/ims/ImsCall;->mOverrideReason:I

    .line 616
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mAnswerWithRtt:Z

    .line 625
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    .line 626
    invoke-virtual {p0, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 627
    sget-object v0, Lcom/android/ims/ImsCall;->sUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsCall;->uniqueId:I

    .line 628
    return-void
.end method

.method static synthetic access$002(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 58
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Landroid/telephony/ims/ImsCallProfile;

    .line 58
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    return v0
.end method

.method private appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 3524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3525
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3526
    const-string v1, " ImsCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3527
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3528
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private clear(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "lastReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1708
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 1709
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1710
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1711
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 1712
    return-void
.end method

.method private clearMergeInfo()V
    .locals 3

    .line 3283
    const-string v0, "clearMergeInfo :: clearing all merge info"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3287
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3288
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iput-object v1, v0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 3289
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iput v2, v0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 3290
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iput-boolean v2, v0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 3292
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_1

    .line 3293
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iput-object v1, v0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 3294
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iput v2, v0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 3295
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iput-boolean v2, v0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 3297
    :cond_1
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 3298
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 3299
    iput v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 3300
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 3301
    return-void
.end method

.method private clearSessionTerminationFlags()V
    .locals 1

    .line 2234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    .line 2235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 2236
    return-void
.end method

.method private createHoldMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 3

    .line 1748
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 1750
    .local v0, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v1, :cond_0

    .line 1751
    return-object v0

    .line 1754
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 1755
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 1756
    const/4 v1, 0x2

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1758
    iget v2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    if-eqz v2, :cond_1

    .line 1759
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1762
    :cond_1
    return-object v0
.end method

.method private createResumeMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 3

    .line 1766
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 1768
    .local v0, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v1, :cond_0

    .line 1769
    return-object v0

    .line 1772
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 1773
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 1774
    const/4 v1, 0x3

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1776
    iget v2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    if-eqz v2, :cond_1

    .line 1777
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1780
    :cond_1
    return-object v0
.end method

.method private enforceConversationMode()V
    .locals 1

    .line 1784
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v0, :cond_0

    .line 1785
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1786
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1788
    :cond_0
    return-void
.end method

.method private isMerging()Z
    .locals 1

    .line 3337
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z
    .locals 1
    .param p0, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 685
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallSession;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 3625
    const-string v0, "ImsCall"

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    return-void
.end method

.method private markCallAsMerged(Z)V
    .locals 4
    .param p1, "playDisconnectTone"    # Z

    .line 1949
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1952
    const-string v0, "markCallAsMerged"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1959
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 1961
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    .line 1963
    const/4 v0, 0x0

    .line 1964
    .local v0, "reasonCode":I
    if-eqz p1, :cond_0

    .line 1965
    const/16 v0, 0x1fe

    .line 1966
    const-string v1, "Call ended by network"

    .local v1, "reasonInfo":Ljava/lang/String;
    goto :goto_0

    .line 1968
    .end local v1    # "reasonInfo":Ljava/lang/String;
    :cond_0
    const/16 v0, 0x6c

    .line 1969
    const-string v1, "Call ended during conference merge process."

    .line 1971
    .restart local v1    # "reasonInfo":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 1974
    .end local v0    # "reasonCode":I
    .end local v1    # "reasonInfo":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private merge()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1365
    const-string v0, "merge :: "

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1367
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1369
    :try_start_0
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    const/16 v2, 0x66

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1370
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1371
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_0

    .line 1372
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v3}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1374
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "merge :: update is in progress; request="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1375
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1374
    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1376
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "Call update is in progress"

    invoke-direct {v1, v3, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1381
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iget v1, v1, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-nez v1, :cond_2

    goto :goto_0

    .line 1382
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1383
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v3}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "merge :: peer call update is in progress; request="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iget v3, v3, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1385
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1384
    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1386
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "Peer call update is in progress"

    invoke-direct {v1, v3, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1390
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_7

    .line 1398
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 1418
    :cond_4
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createHoldMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSession;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1419
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1420
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    goto :goto_2

    .line 1401
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1409
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1410
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iput v1, v2, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1413
    :cond_6
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->merge()V

    .line 1422
    :goto_2
    monitor-exit v0

    .line 1423
    return-void

    .line 1391
    :cond_7
    const-string v1, "merge :: no call session"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1392
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1422
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyConferenceSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1800
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 1801
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->clear(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1803
    if-eqz v0, :cond_0

    .line 1805
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1808
    goto :goto_0

    .line 1806
    :catch_0
    move-exception v1

    .line 1807
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "notifyConferenceSessionTerminated :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1810
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    .locals 14
    .param p1, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 1813
    if-eqz p1, :cond_6

    iget-object v0, p1, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1817
    :cond_0
    iget-object v0, p1, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1819
    .local v0, "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    if-nez v0, :cond_1

    .line 1820
    return-void

    .line 1823
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1826
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1828
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1829
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1831
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1832
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 1833
    .local v4, "confInfo":Landroid/os/Bundle;
    const-string v5, "status"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1834
    .local v5, "status":Ljava/lang/String;
    const-string v6, "user"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1835
    .local v6, "user":Ljava/lang/String;
    const-string v7, "display-text"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1836
    .local v7, "displayName":Ljava/lang/String;
    const-string v8, "endpoint"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1839
    .local v8, "endpoint":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyConferenceStateUpdated :: key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "ImsCall"

    invoke-static {v10, v3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", status="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", user="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "ImsCall"

    .line 1841
    invoke-static {v10, v6}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", displayName= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "ImsCall"

    .line 1842
    invoke-static {v10, v7}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", endpoint="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1839
    invoke-virtual {p0, v9}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1846
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 1847
    .local v9, "handle":Landroid/net/Uri;
    if-nez v8, :cond_2

    .line 1848
    const-string v8, ""

    .line 1850
    :cond_2
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 1851
    .local v10, "endpointUri":Landroid/net/Uri;
    invoke-static {v5}, Landroid/telephony/ims/ImsConferenceState;->getConnectionStateForStatus(Ljava/lang/String;)I

    move-result v11

    .line 1853
    .local v11, "connectionState":I
    const/4 v12, 0x6

    if-eq v11, v12, :cond_3

    .line 1854
    new-instance v12, Landroid/telecom/ConferenceParticipant;

    invoke-direct {v12, v9, v7, v10, v11}, Landroid/telecom/ConferenceParticipant;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 1856
    .local v12, "conferenceParticipant":Landroid/telecom/ConferenceParticipant;
    iget-object v13, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1858
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "confInfo":Landroid/os/Bundle;
    .end local v5    # "status":Ljava/lang/String;
    .end local v6    # "user":Ljava/lang/String;
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v8    # "endpoint":Ljava/lang/String;
    .end local v9    # "handle":Landroid/net/Uri;
    .end local v10    # "endpointUri":Landroid/net/Uri;
    .end local v11    # "connectionState":I
    .end local v12    # "conferenceParticipant":Landroid/telecom/ConferenceParticipant;
    :cond_3
    goto/16 :goto_0

    .line 1860
    :cond_4
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    if-eqz v2, :cond_5

    .line 1862
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    iget-object v3, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p0, v3}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1865
    goto :goto_1

    .line 1863
    :catch_0
    move-exception v2

    .line 1864
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "notifyConferenceStateUpdated :: "

    invoke-virtual {p0, v3, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1867
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_5
    :goto_1
    return-void

    .line 1814
    .end local v0    # "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :cond_6
    :goto_2
    return-void
.end method

.method private notifySessionTerminatedDuringMerge()V
    .locals 5

    .line 2206
    const/4 v0, 0x0

    .line 2207
    .local v0, "notifyFailure":Z
    const/4 v1, 0x0

    .line 2209
    .local v1, "notifyFailureReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    monitor-enter p0

    .line 2210
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2211
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-boolean v3, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    if-eqz v3, :cond_0

    .line 2216
    const-string v3, "notifySessionTerminatedDuringMerge ::reporting terminate during merge"

    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2218
    const/4 v0, 0x1

    .line 2219
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    move-object v1, v3

    .line 2221
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->clearSessionTerminationFlags()V

    .line 2222
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2224
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 2226
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->processCallTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2229
    goto :goto_0

    .line 2227
    :catch_0
    move-exception v3

    .line 2228
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "notifySessionTerminatedDuringMerge :: "

    invoke-virtual {p0, v4, v3}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2231
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 2222
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private setMergePeer(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "mergePeer"    # Lcom/android/ims/ImsCall;

    .line 3310
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 3311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 3313
    iput-object p0, p1, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 3314
    iput-object v0, p1, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 3315
    return-void
.end method

.method private shouldProcessConferenceResult()Z
    .locals 5

    .line 3392
    const/4 v0, 0x0

    .line 3394
    .local v0, "areMergeTriggersDone":Z
    monitor-enter p0

    .line 3398
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3400
    const-string v1, "shouldProcessConferenceResult :: no merge in progress"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 3402
    monitor-exit p0

    return v2

    .line 3408
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 3410
    const-string v1, "shouldProcessConferenceResult :: We are a merge host"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldProcessConferenceResult :: Here is the merge peer="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3413
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 3414
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    if-nez v1, :cond_1

    move v2, v3

    nop

    :cond_1
    move v0, v2

    .line 3415
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3417
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_0

    .line 3419
    :cond_2
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3421
    const-string v1, "shouldProcessConferenceResult :: We are a merge peer"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldProcessConferenceResult :: Here is the merge host="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3424
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 3425
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    if-nez v1, :cond_3

    move v2, v3

    nop

    :cond_3
    move v0, v2

    .line 3426
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3428
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_0

    .line 3440
    :cond_4
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    xor-int/2addr v1, v3

    move v0, v1

    goto :goto_0

    .line 3444
    :cond_5
    const-string v1, "shouldProcessConferenceResult : merge in progress but call is neither host nor peer."

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 3448
    :cond_6
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldProcessConferenceResult :: returning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3449
    if-eqz v0, :cond_7

    const-string v2, "true"

    goto :goto_1

    :cond_7
    const-string v2, "false"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3448
    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3451
    monitor-exit p0

    .line 3452
    return v0

    .line 3451
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private throwImsException(Ljava/lang/Throwable;I)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3511
    instance-of v0, p1, Lcom/android/ims/ImsException;

    if-eqz v0, :cond_0

    .line 3512
    move-object v0, p1

    check-cast v0, Lcom/android/ims/ImsException;

    throw v0

    .line 3514
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method

.method private trackVideoStateHistory(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3537
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    .line 3538
    return-void
.end method

.method private updateCallProfile()V
    .locals 2

    .line 2193
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2194
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 2195
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2197
    :cond_0
    monitor-exit v0

    .line 2198
    return-void

    .line 2197
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static updateCallProfile(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p0, "call"    # Lcom/android/ims/ImsCall;

    .line 2187
    if-eqz p0, :cond_0

    .line 2188
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->updateCallProfile()V

    .line 2190
    :cond_0
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1135
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCall;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1136
    return-void
.end method

.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 5
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accept :: callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1149
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mAnswerWithRtt:Z

    if-eqz v0, :cond_0

    .line 1150
    const/4 v0, 0x1

    iput v0, p2, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 1151
    const-string v0, "accept :: changing media profile RTT mode to full"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1155
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 1161
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v2, p1, p2}, Landroid/telephony/ims/ImsCallSession;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1165
    nop

    .line 1167
    :try_start_2
    iget-boolean v2, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v2, :cond_2

    .line 1168
    sget-boolean v2, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v2, :cond_1

    .line 1169
    const-string v2, "accept :: call profile will be updated"

    invoke-virtual {p0, v2}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1172
    :cond_1
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput-object v2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1173
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->trackVideoStateHistory(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1174
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1178
    :cond_2
    iget-boolean v2, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 1179
    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1181
    :cond_3
    monitor-exit v0

    .line 1182
    return-void

    .line 1162
    :catch_0
    move-exception v2

    .line 1163
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "accept :: "

    invoke-virtual {p0, v3, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1164
    new-instance v3, Lcom/android/ims/ImsException;

    const-string v4, "accept()"

    invoke-direct {v3, v4, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v3

    .line 1156
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_4
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call to answer"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public attachSession(Landroid/telephony/ims/ImsCallSession;)V
    .locals 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attachSession :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1064
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1065
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1068
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1072
    goto :goto_0

    .line 1069
    :catch_0
    move-exception v1

    .line 1070
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "attachSession :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1071
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/ims/ImsCall;->throwImsException(Ljava/lang/Throwable;I)V

    .line 1073
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    monitor-exit v0

    .line 1074
    return-void

    .line 1073
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected checkIfConferenceMerge(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3651
    return-void
.end method

.method public checkIfRemoteUserIsSame(Ljava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    .line 658
    if-nez p1, :cond_0

    .line 659
    const/4 v0, 0x0

    return v0

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "remote_uri"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 3

    .line 635
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 636
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->close()V

    .line 638
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    goto :goto_0

    .line 640
    :cond_0
    const-string v1, "close :: Cannot close Null call session!"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 643
    :goto_0
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 644
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 645
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 646
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

    .line 647
    monitor-exit v0

    .line 648
    return-void

    .line 647
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public conferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    .locals 3
    .param p1, "state"    # Landroid/telephony/ims/ImsConferenceState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3236
    monitor-enter p0

    .line 3237
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->notifyConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    .line 3238
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 3239
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3241
    if-eqz v0, :cond_0

    .line 3243
    :try_start_1
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceStateUpdated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsConferenceState;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3246
    goto :goto_0

    .line 3244
    :catch_0
    move-exception v1

    .line 3245
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "callSessionConferenceStateUpdated :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3248
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3239
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected copyCallProfileIfNecessary(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 3647
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 3648
    return-void
.end method

.method protected createCallSessionListener()Landroid/telephony/ims/ImsCallSession$Listener;
    .locals 1

    .line 1718
    new-instance v0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;-><init>(Lcom/android/ims/ImsCall;)V

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mImsCallSessionListenerProxy:Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    .line 1719
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mImsCallSessionListenerProxy:Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    return-object v0
.end method

.method protected createNewCall(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1731
    new-instance v0, Lcom/android/ims/ImsCall;

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1734
    .local v0, "call":Lcom/android/ims/ImsCall;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->attachSession(Landroid/telephony/ims/ImsCallSession;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1740
    goto :goto_0

    .line 1735
    :catch_0
    move-exception v1

    .line 1736
    .local v1, "e":Lcom/android/ims/ImsException;
    nop

    .line 1737
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->close()V

    .line 1738
    const/4 v0, 0x0

    .line 1744
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-object v0
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deflect :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ImsCall"

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1193
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1194
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1200
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->deflect(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1204
    nop

    .line 1205
    :try_start_2
    monitor-exit v0

    .line 1206
    return-void

    .line 1201
    :catch_0
    move-exception v1

    .line 1202
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "deflect :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1203
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "deflect()"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 1195
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call to deflect"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1205
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public equalsTo(Lcom/android/ims/internal/ICall;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/ims/internal/ICall;

    .line 673
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 674
    return v0

    .line 677
    :cond_0
    instance-of v1, p1, Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_1

    .line 678
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 681
    :cond_1
    return v0
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 4
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1507
    const-string v0, "extendToConference ::"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1509
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v0

    const/16 v1, 0x66

    if-eqz v0, :cond_1

    .line 1510
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1511
    const-string v0, "extendToConference :: call is on hold"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1513
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "Not in a call to extend a call to conference"

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1517
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1518
    :try_start_0
    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-nez v2, :cond_3

    .line 1527
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_2

    .line 1533
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->extendToConference([Ljava/lang/String;)V

    .line 1534
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1535
    monitor-exit v0

    .line 1536
    return-void

    .line 1528
    :cond_2
    const-string v1, "extendToConference :: "

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1529
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1520
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extendToConference :: update is in progress; request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1521
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1520
    invoke-virtual {p0, v2}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1523
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "Call update is in progress"

    invoke-direct {v2, v3, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1535
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 840
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 842
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 848
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 849
    :catch_0
    move-exception v1

    .line 850
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "getCallExtra :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 851
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getCallExtra()"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 843
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 853
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 2

    .line 694
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 695
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-exit v0

    return-object v1

    .line 696
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallSession()Landroid/telephony/ims/ImsCallSession;
    .locals 2

    .line 813
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 814
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    monitor-exit v0

    return-object v1

    .line 815
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConferenceParticipants()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 778
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConferenceParticipants :: mConferenceParticipants"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 780
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v1, :cond_0

    .line 781
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 783
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 784
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    monitor-exit v0

    return-object v1

    .line 786
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 787
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getImsCallSessionListenerProxy()Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1727
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mImsCallSessionListenerProxy:Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    return-object v0
.end method

.method public getLastReasonInfo()Landroid/telephony/ims/ImsReasonInfo;
    .locals 2

    .line 862
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 863
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    monitor-exit v0

    return-object v1

    .line 864
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 719
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 720
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 726
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 727
    :catch_0
    move-exception v1

    .line 728
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "getLocalCallProfile :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 729
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getLocalCallProfile()"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 721
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 731
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getMediaSession()Lcom/android/ims/internal/ImsStreamMediaSession;
    .locals 2

    .line 826
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 827
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

    monitor-exit v0

    return-object v1

    .line 828
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProposedCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 2

    .line 761
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 762
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isInCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 763
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 766
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-exit v0

    return-object v1

    .line 767
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRadioTechnology()I
    .locals 5

    .line 3582
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 3583
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3584
    monitor-exit v0

    return v2

    .line 3586
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "CallRadioTech"

    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3587
    .local v1, "callType":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3588
    :cond_1
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "callRadioTech"

    invoke-virtual {v3, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 3593
    :cond_2
    nop

    .line 3595
    .local v2, "radioTechnology":I
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3598
    goto :goto_0

    .line 3596
    :catch_0
    move-exception v3

    .line 3597
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    .line 3600
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    :goto_0
    :try_start_2
    monitor-exit v0

    return v2

    .line 3601
    .end local v1    # "callType":Ljava/lang/String;
    .end local v2    # "radioTechnology":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 741
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 747
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 748
    :catch_0
    move-exception v1

    .line 749
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "getRemoteCallProfile :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 750
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getRemoteCallProfile()"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 742
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 752
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getSession()Landroid/telephony/ims/ImsCallSession;
    .locals 2

    .line 2003
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2004
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    monitor-exit v0

    return-object v1

    .line 2005
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getState()I
    .locals 2

    .line 797
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 798
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_0

    .line 799
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 802
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getState()I

    move-result v1

    monitor-exit v0

    return v1

    .line 803
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasPendingUpdate()Z
    .locals 2

    .line 873
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 874
    :try_start_0
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 875
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hold()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1291
    const-string v0, "hold :: "

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1293
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1294
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1295
    const-string v0, "hold :: call is already on hold"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1297
    :cond_0
    return-void

    .line 1300
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1301
    :try_start_0
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-nez v1, :cond_3

    .line 1308
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_2

    .line 1313
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createHoldMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSession;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1316
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1317
    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1318
    monitor-exit v0

    .line 1319
    return-void

    .line 1309
    :cond_2
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1302
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hold :: update is in progress; request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1303
    invoke-virtual {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1302
    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1304
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "Call update is in progress"

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1318
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 4
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1543
    const-string v0, "inviteParticipants ::"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1545
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1546
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1552
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->inviteParticipants([Ljava/lang/String;)V

    .line 1553
    monitor-exit v0

    .line 1554
    return-void

    .line 1547
    :cond_0
    const-string v1, "inviteParticipants :: "

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1548
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1553
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCallSessionMergePending()Z
    .locals 1

    .line 3364
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    return v0
.end method

.method public isConferenceHost()Z
    .locals 2

    .line 946
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 947
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 948
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isInCall()Z
    .locals 2

    .line 895
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 896
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    monitor-exit v0

    return v1

    .line 897
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isMergeHost()Z
    .locals 1

    .line 3346
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isMergePeer()Z
    .locals 1

    .line 3355
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMergeRequestedByConf()Z
    .locals 2

    .line 1982
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1983
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    monitor-exit v0

    return v1

    .line 1984
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMerged()Z
    .locals 1

    .line 965
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    return v0
.end method

.method public isMultiparty()Z
    .locals 2

    .line 928
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 929
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_0

    .line 930
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 933
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->isMultiparty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 934
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMuted()Z
    .locals 2

    .line 906
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 907
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMute:Z

    monitor-exit v0

    return v1

    .line 908
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOnHold()Z
    .locals 2

    .line 917
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 918
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    monitor-exit v0

    return v1

    .line 919
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPendingHold()Z
    .locals 3

    .line 884
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 885
    :try_start_0
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 886
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z
    .locals 1
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 1934
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    if-ne p1, v0, :cond_0

    .line 1935
    const/4 v0, 0x1

    return v0

    .line 1937
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoCall()Z
    .locals 2

    .line 3552
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 3553
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 3554
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isWifiCall()Z
    .locals 4

    .line 3568
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 3569
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3570
    monitor-exit v0

    return v2

    .line 3572
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getRadioTechnology()I

    move-result v1

    .line 3573
    .local v1, "radioTechnology":I
    const/16 v3, 0x12

    if-ne v1, v3, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    monitor-exit v0

    return v2

    .line 3574
    .end local v1    # "radioTechnology":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 3617
    const-string v0, "ImsCall"

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 3633
    const-string v0, "ImsCall"

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 3642
    const-string v0, "ImsCall"

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3643
    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 3609
    const-string v0, "ImsCall"

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3610
    return-void
.end method

.method public merge(Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "bgCall"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "merge(1) :: bgImsCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1435
    if-eqz p1, :cond_4

    .line 1440
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1442
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1443
    invoke-virtual {p1, v1}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1445
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1451
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->setMergePeer(Lcom/android/ims/ImsCall;)V

    goto :goto_0

    .line 1454
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->setMergeHost(Lcom/android/ims/ImsCall;)V

    .line 1456
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1458
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1459
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    goto :goto_1

    .line 1461
    :cond_3
    const-string v0, "merge : mMergeRequestedByConference not set"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1463
    :goto_1
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->merge()V

    .line 1464
    return-void

    .line 1456
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1436
    :cond_4
    new-instance v0, Lcom/android/ims/ImsException;

    const/16 v1, 0x65

    const-string v2, "No background call"

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method protected mergeInternal()V
    .locals 1

    .line 1792
    const-string v0, "mergeInternal :: "

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1795
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSession;->merge()V

    .line 1796
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1797
    return-void
.end method

.method protected processCallTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCallTerminated :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " userInitiated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1882
    const/4 v0, 0x0

    .line 1883
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-enter p0

    .line 1888
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    if-nez v1, :cond_0

    .line 1896
    const-string v1, "processCallTerminated :: burying termination during ongoing merge."

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1898
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    .line 1899
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 1900
    monitor-exit p0

    return-void

    .line 1904
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1905
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->notifyConferenceSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1906
    monitor-exit p0

    return-void

    .line 1908
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    move-object v0, v1

    .line 1909
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->clear(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1911
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1913
    if-eqz v0, :cond_2

    .line 1915
    :try_start_1
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1918
    goto :goto_0

    .line 1916
    :catch_0
    move-exception v1

    .line 1917
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "processCallTerminated :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1920
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void

    .line 1911
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public processMergeComplete()V
    .locals 7

    .line 2015
    const-string v0, "processMergeComplete :: "

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2019
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2020
    const-string v0, "processMergeComplete :: We are not the merge host!"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2021
    return-void

    .line 2025
    :cond_0
    const/4 v0, 0x0

    .line 2030
    .local v0, "swapRequired":Z
    monitor-enter p0

    .line 2031
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 2032
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2035
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    if-nez v1, :cond_1

    .line 2038
    iput-boolean v3, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 2039
    const/4 v0, 0x1

    .line 2041
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v1, v3}, Lcom/android/ims/ImsCall;->markCallAsMerged(Z)V

    .line 2042
    move-object v1, p0

    .line 2043
    .local v1, "finalHostCall":Lcom/android/ims/ImsCall;
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .local v3, "finalPeerCall":Lcom/android/ims/ImsCall;
    goto/16 :goto_1

    .line 2050
    .end local v1    # "finalHostCall":Lcom/android/ims/ImsCall;
    .end local v3    # "finalPeerCall":Lcom/android/ims/ImsCall;
    :cond_2
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_3

    .line 2051
    const-string v1, "processMergeComplete :: No transient session!"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2052
    monitor-exit p0

    return-void

    .line 2054
    :cond_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-nez v1, :cond_4

    .line 2055
    const-string v1, "processMergeComplete :: No merge peer!"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2056
    monitor-exit p0

    return-void

    .line 2061
    :cond_4
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    .line 2062
    .local v1, "transientConferenceSession":Landroid/telephony/ims/ImsCallSession;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    .line 2066
    invoke-virtual {v1, v4}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V

    .line 2076
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v4}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v4}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2085
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iput-boolean v3, v4, Lcom/android/ims/ImsCall;->mHold:Z

    .line 2086
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 2087
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2088
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iget-object v5, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v5, v4, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2097
    :cond_5
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 2098
    .local v4, "finalHostCall":Lcom/android/ims/ImsCall;
    move-object v5, p0

    .line 2099
    .local v5, "finalPeerCall":Lcom/android/ims/ImsCall;
    const/4 v0, 0x1

    .line 2100
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2101
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v6, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2103
    const-string v3, "processMergeComplete :: transient will transfer to merge peer"

    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 2105
    .end local v4    # "finalHostCall":Lcom/android/ims/ImsCall;
    .end local v5    # "finalPeerCall":Lcom/android/ims/ImsCall;
    :cond_6
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v4}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 2106
    invoke-virtual {v4}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2111
    move-object v4, p0

    .line 2112
    .restart local v4    # "finalHostCall":Lcom/android/ims/ImsCall;
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 2113
    .restart local v5    # "finalPeerCall":Lcom/android/ims/ImsCall;
    const/4 v0, 0x0

    .line 2114
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2115
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v6, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2117
    const-string v3, "processMergeComplete :: transient will stay with the merge host"

    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 2124
    .end local v4    # "finalHostCall":Lcom/android/ims/ImsCall;
    .end local v5    # "finalPeerCall":Lcom/android/ims/ImsCall;
    :cond_7
    move-object v4, p0

    .line 2125
    .restart local v4    # "finalHostCall":Lcom/android/ims/ImsCall;
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 2126
    .restart local v5    # "finalPeerCall":Lcom/android/ims/ImsCall;
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v6, v3}, Lcom/android/ims/ImsCall;->markCallAsMerged(Z)V

    .line 2127
    const/4 v0, 0x0

    .line 2128
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2129
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v3, v2}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2131
    const-string v3, "processMergeComplete :: transient will stay with us (I\'m the host)."

    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2136
    :goto_0
    move-object v3, v5

    .end local v5    # "finalPeerCall":Lcom/android/ims/ImsCall;
    .restart local v3    # "finalPeerCall":Lcom/android/ims/ImsCall;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processMergeComplete :: call="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is the final host"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2141
    invoke-virtual {v4, v1}, Lcom/android/ims/ImsCall;->setTransientSessionAsPrimary(Landroid/telephony/ims/ImsCallSession;)V

    .line 2144
    .end local v1    # "transientConferenceSession":Landroid/telephony/ims/ImsCallSession;
    move-object v1, v4

    .end local v4    # "finalHostCall":Lcom/android/ims/ImsCall;
    .local v1, "finalHostCall":Lcom/android/ims/ImsCall;
    :goto_1
    iget-object v4, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2146
    .local v4, "listener":Lcom/android/ims/ImsCall$Listener;
    invoke-static {v3}, Lcom/android/ims/ImsCall;->updateCallProfile(Lcom/android/ims/ImsCall;)V

    .line 2147
    invoke-static {v1}, Lcom/android/ims/ImsCall;->updateCallProfile(Lcom/android/ims/ImsCall;)V

    .line 2150
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->clearMergeInfo()V

    .line 2154
    invoke-direct {v3}, Lcom/android/ims/ImsCall;->notifySessionTerminatedDuringMerge()V

    .line 2157
    invoke-direct {v1}, Lcom/android/ims/ImsCall;->clearSessionTerminationFlags()V

    .line 2163
    iput-boolean v2, v1, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z

    .line 2164
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 2165
    .end local v3    # "finalPeerCall":Lcom/android/ims/ImsCall;
    .local v2, "finalPeerCall":Lcom/android/ims/ImsCall;
    if-eqz v4, :cond_8

    .line 2170
    :try_start_1
    invoke-virtual {v4, v1, v2, v0}, Lcom/android/ims/ImsCall$Listener;->onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2173
    goto :goto_2

    .line 2171
    :catch_0
    move-exception v3

    .line 2172
    .local v3, "t":Ljava/lang/Throwable;
    const-string v5, "processMergeComplete :: "

    invoke-virtual {p0, v5, v3}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2174
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_2
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 2176
    :try_start_2
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1, v3}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 2180
    goto :goto_3

    .line 2178
    :catch_1
    move-exception v3

    .line 2179
    .restart local v3    # "t":Ljava/lang/Throwable;
    const-string v5, "processMergeComplete :: "

    invoke-virtual {p0, v5, v3}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2183
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_8
    :goto_3
    return-void

    .line 2164
    .end local v1    # "finalHostCall":Lcom/android/ims/ImsCall;
    .end local v2    # "finalPeerCall":Lcom/android/ims/ImsCall;
    .end local v4    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method protected processMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processMergeFailed :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2251
    monitor-enter p0

    .line 2254
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2255
    const-string v0, "processMergeFailed :: We are not the merge host!"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2256
    monitor-exit p0

    return-void

    .line 2260
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v0, :cond_1

    .line 2261
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V

    .line 2262
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    .line 2265
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2269
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->markCallAsMerged(Z)V

    .line 2270
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 2271
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->notifySessionTerminatedDuringMerge()V

    .line 2274
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v3, :cond_2

    .line 2275
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v3, v1}, Lcom/android/ims/ImsCall;->markCallAsMerged(Z)V

    .line 2276
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 2277
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v1}, Lcom/android/ims/ImsCall;->notifySessionTerminatedDuringMerge()V

    goto :goto_0

    .line 2279
    :cond_2
    const-string v1, "processMergeFailed :: No merge peer!"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2283
    :goto_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->clearMergeInfo()V

    .line 2284
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2285
    if-eqz v0, :cond_3

    .line 2287
    :try_start_1
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2290
    goto :goto_1

    .line 2288
    :catch_0
    move-exception v1

    .line 2289
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "processMergeFailed :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2293
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    return-void

    .line 2284
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public reject(I)V
    .locals 3
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reject :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1219
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1220
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->reject(I)V

    .line 1223
    :cond_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_2

    .line 1224
    sget-boolean v1, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v1, :cond_1

    .line 1225
    const-string v1, "reject :: call profile is not updated; destroy it..."

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1228
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1232
    :cond_2
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 1233
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1235
    :cond_3
    monitor-exit v0

    .line 1236
    return-void

    .line 1235
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 4
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeParticipants :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1562
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1563
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1569
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->removeParticipants([Ljava/lang/String;)V

    .line 1571
    monitor-exit v0

    .line 1572
    return-void

    .line 1564
    :cond_0
    const-string v1, "removeParticipants :: "

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1565
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1571
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected resetConferenceMergingFlag()V
    .locals 0

    .line 3661
    return-void
.end method

.method public resetIsMergeRequestedByConf(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 1992
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1993
    :try_start_0
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    .line 1994
    monitor-exit v0

    .line 1995
    return-void

    .line 1994
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resume()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1328
    const-string v0, "resume :: "

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1331
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1332
    const-string v0, "resume :: call is not being held"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1334
    :cond_0
    return-void

    .line 1337
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1338
    :try_start_0
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-nez v1, :cond_3

    .line 1345
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_2

    .line 1353
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1354
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createResumeMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSession;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1355
    monitor-exit v0

    .line 1356
    return-void

    .line 1346
    :cond_2
    const-string v1, "resume :: "

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1347
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1339
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume :: update is in progress; request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1340
    invoke-virtual {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1339
    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1341
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "Call update is in progress"

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1355
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDtmf :: code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1585
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1586
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1587
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallSession;->sendDtmf(CLandroid/os/Message;)V

    .line 1589
    :cond_0
    monitor-exit v0

    .line 1590
    return-void

    .line 1589
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 1642
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1643
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_0

    .line 1644
    const-string v1, "sendRttMessage::no session"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1646
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1647
    const-string v1, "sendRttMessage::Not an rtt call, ignoring"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1648
    monitor-exit v0

    return-void

    .line 1650
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->sendRttMessage(Ljava/lang/String;)V

    .line 1651
    monitor-exit v0

    .line 1652
    return-void

    .line 1651
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendRttModifyRequest()V
    .locals 5

    .line 1658
    const-string v0, "sendRttModifyRequest"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1660
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1661
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_0

    .line 1662
    const-string v1, "sendRttModifyRequest::no session"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1664
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1665
    const-string v1, "sendRttModifyRequest::Already RTT call, ignoring."

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1666
    monitor-exit v0

    return-void

    .line 1669
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1670
    .local v1, "p":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/telephony/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1671
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1674
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v2}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    .line 1676
    .local v2, "requestedProfile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v3, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 1678
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v3, v2}, Landroid/telephony/ims/ImsCallSession;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1679
    .end local v1    # "p":Landroid/os/Parcel;
    .end local v2    # "requestedProfile":Landroid/telephony/ims/ImsCallProfile;
    monitor-exit v0

    .line 1680
    return-void

    .line 1679
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendRttModifyResponse(Z)V
    .locals 2
    .param p1, "status"    # Z

    .line 1689
    const-string v0, "sendRttModifyResponse"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1691
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1692
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_0

    .line 1693
    const-string v1, "sendRttModifyResponse::no session"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1695
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1696
    const-string v1, "sendRttModifyResponse::Already RTT call, ignoring."

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1697
    monitor-exit v0

    return-void

    .line 1699
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->sendRttModifyResponse(Z)V

    .line 1700
    monitor-exit v0

    .line 1701
    return-void

    .line 1700
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 4
    .param p1, "ussdMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendUssd :: ussdMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1630
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1631
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1637
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->sendUssd(Ljava/lang/String;)V

    .line 1638
    monitor-exit v0

    .line 1639
    return-void

    .line 1632
    :cond_0
    const-string v1, "sendUssd :: "

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1633
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1638
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAnswerWithRtt()V
    .locals 1

    .line 1704
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mAnswerWithRtt:Z

    .line 1705
    return-void
.end method

.method public setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 707
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 709
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->trackVideoStateHistory(Landroid/telephony/ims/ImsCallProfile;)V

    .line 710
    monitor-exit v0

    .line 711
    return-void

    .line 710
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected setCallSessionMergePending(Z)V
    .locals 0
    .param p1, "callSessionMergePending"    # Z

    .line 3374
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 3375
    return-void
.end method

.method public setIsMerged(Z)V
    .locals 0
    .param p1, "isMerged"    # Z

    .line 958
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    .line 959
    return-void
.end method

.method public setListener(Lcom/android/ims/ImsCall$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/ims/ImsCall$Listener;

    .line 976
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;Z)V

    .line 977
    return-void
.end method

.method public setListener(Lcom/android/ims/ImsCall$Listener;Z)V
    .locals 6
    .param p1, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .param p2, "callbackImmediately"    # Z

    .line 994
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 995
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 997
    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_3

    .line 1001
    :cond_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 1002
    .local v1, "inCall":Z
    iget-boolean v2, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1003
    .local v2, "onHold":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getState()I

    move-result v3

    .line 1004
    .local v3, "state":I
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 1005
    .local v4, "lastReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    if-eqz v4, :cond_1

    .line 1009
    :try_start_1
    invoke-virtual {p1, p0, v4}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 1029
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1010
    :cond_1
    if-eqz v1, :cond_3

    .line 1011
    if-eqz v2, :cond_2

    .line 1012
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallHeld(Lcom/android/ims/ImsCall;)V

    goto :goto_0

    .line 1014
    :cond_2
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallStarted(Lcom/android/ims/ImsCall;)V

    goto :goto_0

    .line 1017
    :cond_3
    const/4 v0, 0x3

    if-eq v3, v0, :cond_5

    const/16 v0, 0x8

    if-eq v3, v0, :cond_4

    goto :goto_0

    .line 1022
    :cond_4
    invoke-virtual {p1, p0, v4}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1023
    goto :goto_0

    .line 1019
    :cond_5
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallProgressing(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1020
    nop

    .line 1031
    :goto_0
    goto :goto_2

    .line 1029
    :goto_1
    nop

    .line 1030
    .local v0, "t":Ljava/lang/Throwable;
    const-string v5, "setListener() :: "

    invoke-virtual {p0, v5, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1032
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 998
    .end local v1    # "inCall":Z
    .end local v2    # "onHold":Z
    .end local v3    # "state":I
    .end local v4    # "lastReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_6
    :goto_3
    :try_start_2
    monitor-exit v0

    return-void

    .line 1005
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setMergeHost(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "mergeHost"    # Lcom/android/ims/ImsCall;

    .line 3324
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 3325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 3327
    iput-object v0, p1, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 3328
    iput-object p0, p1, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 3329
    return-void
.end method

.method public setMute(Z)V
    .locals 3
    .param p1, "muted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1040
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1041
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMute:Z

    if-eq v1, p1, :cond_1

    .line 1042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMute :: turning mute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "on"

    goto :goto_0

    :cond_0
    const-string v2, "off"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1043
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mMute:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->setMute(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1050
    goto :goto_1

    .line 1047
    :catch_0
    move-exception v1

    .line 1048
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "setMute :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1049
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/ims/ImsCall;->throwImsException(Ljava/lang/Throwable;I)V

    .line 1052
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    monitor-exit v0

    .line 1053
    return-void

    .line 1052
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected setTransientSessionAsPrimary(Landroid/telephony/ims/ImsCallSession;)V
    .locals 2
    .param p1, "transientSession"    # Landroid/telephony/ims/ImsCallSession;

    .line 1941
    monitor-enter p0

    .line 1942
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V

    .line 1943
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    .line 1944
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V

    .line 1945
    monitor-exit p0

    .line 1946
    return-void

    .line 1945
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected shouldSkipResetMergePending()Z
    .locals 1

    .line 3657
    const/4 v0, 0x0

    return v0
.end method

.method public start(Landroid/telephony/ims/ImsCallSession;Ljava/lang/String;)V
    .locals 5
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "callee"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start(1) :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1088
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1089
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1092
    :try_start_1
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V

    .line 1093
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, p2, v1}, Landroid/telephony/ims/ImsCallSession;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1097
    nop

    .line 1098
    :try_start_2
    monitor-exit v0

    .line 1099
    return-void

    .line 1094
    :catch_0
    move-exception v1

    .line 1095
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "start(1) :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1096
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "start(1)"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 1098
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public start(Landroid/telephony/ims/ImsCallSession;[Ljava/lang/String;)V
    .locals 5
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start(n) :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1113
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1114
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    :try_start_1
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V

    .line 1118
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, p2, v1}, Landroid/telephony/ims/ImsCallSession;->start([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1122
    nop

    .line 1123
    :try_start_2
    monitor-exit v0

    .line 1124
    return-void

    .line 1119
    :catch_0
    move-exception v1

    .line 1120
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "start(n) :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1121
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "start(n)"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 1123
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .line 1600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDtmf :: code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1602
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1603
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1604
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->startDtmf(C)V

    .line 1606
    :cond_0
    monitor-exit v0

    .line 1607
    return-void

    .line 1606
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopDtmf()V
    .locals 2

    .line 1613
    const-string v0, "stopDtmf :: "

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1615
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1616
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1617
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->stopDtmf()V

    .line 1619
    :cond_0
    monitor-exit v0

    .line 1620
    return-void

    .line 1619
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public terminate(I)V
    .locals 2
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminate :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1253
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1254
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1255
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 1256
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    .line 1258
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1278
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->terminate(I)V

    .line 1280
    :cond_0
    monitor-exit v0

    .line 1281
    return-void

    .line 1280
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public terminate(II)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "overrideReason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminate :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ; overrideReadon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1240
    iput p2, p0, Lcom/android/ims/ImsCall;->mOverrideReason:I

    .line 1241
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->terminate(I)V

    .line 1242
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 3463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3464
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ImsCall objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3465
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3466
    const-string v1, " onHold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3467
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Y"

    goto :goto_0

    :cond_0
    const-string v1, "N"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3468
    const-string v1, " mute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3469
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Y"

    goto :goto_1

    :cond_1
    const-string v1, "N"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3470
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_2

    .line 3471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCallProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3472
    const-string v1, " tech:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3473
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "CallRadioTech"

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3475
    :cond_2
    const-string v1, " updateRequest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3476
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3477
    const-string v1, " merging:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3478
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMerging()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Y"

    goto :goto_2

    :cond_3
    const-string v1, "N"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3479
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMerging()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3480
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3481
    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3483
    :cond_4
    const-string v1, "H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3486
    :cond_5
    :goto_3
    const-string v1, " merge action pending:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3487
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Y"

    goto :goto_4

    :cond_6
    const-string v1, "N"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3488
    const-string v1, " merged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3489
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMerged()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "Y"

    goto :goto_5

    :cond_7
    const-string v1, "N"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3490
    const-string v1, " multiParty:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3491
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "Y"

    goto :goto_6

    :cond_8
    const-string v1, "N"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3492
    const-string v1, " confHost:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3493
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isConferenceHost()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "Y"

    goto :goto_7

    :cond_9
    const-string v1, "N"

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3494
    const-string v1, " buried term:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3495
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    if-eqz v1, :cond_a

    const-string v1, "Y"

    goto :goto_8

    :cond_a
    const-string v1, "N"

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3496
    const-string v1, " isVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3497
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "Y"

    goto :goto_9

    :cond_b
    const-string v1, "N"

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3498
    const-string v1, " wasVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3499
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    if-eqz v1, :cond_c

    const-string v1, "Y"

    goto :goto_a

    :cond_c
    const-string v1, "N"

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3500
    const-string v1, " isWifi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3501
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "Y"

    goto :goto_b

    :cond_d
    const-string v1, "N"

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3502
    const-string v1, " session:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3503
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3504
    const-string v1, " transientSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3505
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3506
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3507
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 4
    .param p1, "callType"    # I
    .param p2, "mediaProfile"    # Landroid/telephony/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update :: callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mediaProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1472
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v0

    const/16 v1, 0x66

    if-eqz v0, :cond_1

    .line 1473
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1474
    const-string v0, "update :: call is on hold"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1476
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "Not in a call to update call"

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1480
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1481
    :try_start_0
    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v2, :cond_3

    .line 1482
    sget-boolean v2, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v2, :cond_2

    .line 1483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update :: update is in progress; request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1484
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1483
    invoke-virtual {p0, v2}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1486
    :cond_2
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "Call update is in progress"

    invoke-direct {v2, v3, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1490
    :cond_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_4

    .line 1496
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallSession;->update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1497
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1498
    monitor-exit v0

    .line 1499
    return-void

    .line 1491
    :cond_4
    const-string v1, "update :: "

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1492
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1498
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected updateHoldStateIfNecessary(Z)V
    .locals 0
    .param p1, "hold"    # Z

    .line 3654
    return-void
.end method

.method protected updateRequestToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "updateRequest"    # I

    .line 3257
    packed-switch p1, :pswitch_data_0

    .line 3273
    const-string v0, "UNKNOWN"

    return-object v0

    .line 3271
    :pswitch_0
    const-string v0, "UNSPECIFIED"

    return-object v0

    .line 3269
    :pswitch_1
    const-string v0, "EXTEND_TO_CONFERENCE"

    return-object v0

    .line 3267
    :pswitch_2
    const-string v0, "MERGE"

    return-object v0

    .line 3265
    :pswitch_3
    const-string v0, "RESUME"

    return-object v0

    .line 3263
    :pswitch_4
    const-string v0, "HOLD_MERGE"

    return-object v0

    .line 3261
    :pswitch_5
    const-string v0, "HOLD"

    return-object v0

    .line 3259
    :pswitch_6
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public wasVideoCall()Z
    .locals 1

    .line 3545
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    return v0
.end method
