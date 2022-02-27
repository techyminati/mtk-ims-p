.class public abstract Lcom/mediatek/common/voicecommand/VoiceCommandListener;
.super Ljava/lang/Object;
.source "VoiceCommandListener.java"


# static fields
.field private static final ACTION_COMMON_INDEX:I = 0x1

.field public static final ACTION_EXTRA_RESULT:Ljava/lang/String; = "Result"

.field public static final ACTION_EXTRA_RESULT_ERROR:I = 0xa

.field public static final ACTION_EXTRA_RESULT_INFO:Ljava/lang/String; = "Result_Info"

.field public static final ACTION_EXTRA_RESULT_INFO1:Ljava/lang/String; = "Reslut_Info1"

.field public static final ACTION_EXTRA_RESULT_SUCCESS:I = 0x1

.field public static final ACTION_EXTRA_SEND:Ljava/lang/String; = "Send"

.field public static final ACTION_EXTRA_SEND_INFO:Ljava/lang/String; = "Send_Info"

.field public static final ACTION_EXTRA_SEND_INFO1:Ljava/lang/String; = "Send_Info1"

.field public static final ACTION_EXTRA_SEND_INFO2:Ljava/lang/String; = "Send_Info2"

.field public static final ACTION_MAIN_VOICE_COMMON:I = 0x1

.field public static final ACTION_MAIN_VOICE_CONTACTS:I = 0x5

.field public static final ACTION_MAIN_VOICE_RECOGNITION:I = 0x4

.field public static final ACTION_MAIN_VOICE_TRAINING:I = 0x3

.field public static final ACTION_MAIN_VOICE_UI:I = 0x2

.field public static final ACTION_MAIN_VOICE_WAKEUP:I = 0x6

.field public static final ACTION_VOICE_COMMON_COMMAND_PATH:I = 0x2

.field public static final ACTION_VOICE_COMMON_KEYWORD:I = 0x1

.field public static final ACTION_VOICE_COMMON_PROCESS_STATE:I = 0x3

.field public static final ACTION_VOICE_CONTACTS_DISABLE:I = 0x4

.field public static final ACTION_VOICE_CONTACTS_ENABLE:I = 0x3

.field public static final ACTION_VOICE_CONTACTS_INTENSITY:I = 0x5

.field public static final ACTION_VOICE_CONTACTS_NAME:I = 0x8

.field public static final ACTION_VOICE_CONTACTS_NOTIFY:I = 0x7

.field public static final ACTION_VOICE_CONTACTS_ORIENTATION:I = 0xb

.field public static final ACTION_VOICE_CONTACTS_RECOGNITION_DISABLE:I = 0xd

.field public static final ACTION_VOICE_CONTACTS_RECOGNITION_ENABLE:I = 0xc

.field public static final ACTION_VOICE_CONTACTS_SEARCH_COUNT:I = 0xa

.field public static final ACTION_VOICE_CONTACTS_SELECTED:I = 0x6

.field public static final ACTION_VOICE_CONTACTS_SPEECH_DETECTED:I = 0x9

.field public static final ACTION_VOICE_CONTACTS_START:I = 0x1

.field public static final ACTION_VOICE_CONTACTS_STOP:I = 0x2

.field public static final ACTION_VOICE_RECOGNITION_INTENSITY:I = 0x2

.field public static final ACTION_VOICE_RECOGNITION_NOTIFY:I = 0x3

.field public static final ACTION_VOICE_RECOGNITION_START:I = 0x1

.field public static final ACTION_VOICE_TRAINING_CONTINUE:I = 0x9

.field public static final ACTION_VOICE_TRAINING_FINISH:I = 0x8

.field public static final ACTION_VOICE_TRAINING_INTENSITY:I = 0x3

.field public static final ACTION_VOICE_TRAINING_MODIFY:I = 0x7

.field public static final ACTION_VOICE_TRAINING_NOTIFY:I = 0x5

.field public static final ACTION_VOICE_TRAINING_PASSWORD_FILE:I = 0x4

.field public static final ACTION_VOICE_TRAINING_RESET:I = 0x6

.field public static final ACTION_VOICE_TRAINING_START:I = 0x1

.field public static final ACTION_VOICE_TRAINING_STOP:I = 0x2

.field public static final ACTION_VOICE_UI_DISALBE:I = 0x4

.field public static final ACTION_VOICE_UI_ENABLE:I = 0x3

.field public static final ACTION_VOICE_UI_NOTIFY:I = 0x5

.field public static final ACTION_VOICE_UI_START:I = 0x1

.field public static final ACTION_VOICE_UI_STOP:I = 0x2

.field public static final ACTION_VOICE_WAKEUP_COMMAND_STATUS:I = 0x7

.field public static final ACTION_VOICE_WAKEUP_DISABLE:I = 0x3

.field public static final ACTION_VOICE_WAKEUP_ENABLE:I = 0x2

.field public static final ACTION_VOICE_WAKEUP_INIT:I = 0x5

.field public static final ACTION_VOICE_WAKEUP_IPO_SHUTDOWN_STATUS:I = 0x8

.field public static final ACTION_VOICE_WAKEUP_MODE:I = 0x6

.field public static final ACTION_VOICE_WAKEUP_NOTIFY:I = 0x4

.field public static final ACTION_VOICE_WAKEUP_START:I = 0x1

.field public static final VOICE_COMMAND_SERVICE:Ljava/lang/String; = "voicecommand"

.field private static final VOICE_ERROR_COMMON:I = 0x3e8

.field public static final VOICE_ERROR_COMMON_ILLEGAL_PROCESS:I = 0x3ed

.field public static final VOICE_ERROR_COMMON_INVALID_ACTION:I = 0x3ef

.field public static final VOICE_ERROR_COMMON_INVALID_DATA:I = 0x3f0

.field public static final VOICE_ERROR_COMMON_NOTIFY_FAIL:I = 0x3f1

.field public static final VOICE_ERROR_COMMON_NO_PERMISSION:I = 0x3ea

.field public static final VOICE_ERROR_COMMON_PROCESS_OFF:I = 0x3e9

.field public static final VOICE_ERROR_COMMON_REGISTERED:I = 0x3eb

.field public static final VOICE_ERROR_COMMON_SERVICE:I = 0x3ee

.field public static final VOICE_ERROR_COMMON_UNREGISTER:I = 0x3ec

.field private static final VOICE_ERROR_CONTACTS:I = 0x190

.field public static final VOICE_ERROR_CONTACTS_SEND_INVALID:I = 0x192

.field public static final VOICE_ERROR_CONTACTS_VOICE_INVALID:I = 0x191

.field private static final VOICE_ERROR_RECOGNIZE:I = 0x0

.field public static final VOICE_ERROR_RECOGNIZE_DENIED:I = 0x1

.field public static final VOICE_ERROR_RECOGNIZE_LOWLY:I = 0x3

.field public static final VOICE_ERROR_RECOGNIZE_NOISY:I = 0x2

.field private static final VOICE_ERROR_SETTING:I = 0xc8

.field private static final VOICE_ERROR_TRAINING:I = 0x64

.field public static final VOICE_ERROR_TRAINING_NOISY:I = 0x66

.field public static final VOICE_ERROR_TRAINING_NOT_ENOUGH:I = 0x65

.field public static final VOICE_ERROR_TRAINING_PASSWORD_DIFF:I = 0x67

.field public static final VOICE_ERROR_TRAINING_PASSWORD_EXIST:I = 0x68

.field private static final VOICE_ERROR_UI:I = 0x12c

.field public static final VOICE_ERROR_UI_INVALID:I = 0x12d

.field public static final VOICE_NO_ERROR:I = 0x0

.field public static final VOICE_SERVICE_ACTION:Ljava/lang/String; = "com.mediatek.voicecommand"

.field public static final VOICE_SERVICE_CATEGORY:Ljava/lang/String; = "com.mediatek.nativeservice"

.field public static final VOICE_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.voicecommand"

.field public static final VOICE_TRAINING_SERVICE_ACTION:Ljava/lang/String; = "com.mediatek.intent.action.bindEnrollmentService"

.field public static final VOICE_TRAINING_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.voicecommand.vis"

.field public static final VOICE_WAKEUP_ACTIVTY_ACTION:Ljava/lang/String; = "com.mediatek.voicecommand.VOW_INTERACT"

.field public static final VOICE_WAKEUP_MODE_SPEAKER_DEPENDENT:I = 0x2

.field public static final VOICE_WAKEUP_MODE_SPEAKER_INDEPENDENT:I = 0x1

.field public static final VOICE_WAKEUP_MODE_UNLOCK:I = 0x0

.field public static final VOICE_WAKEUP_SERVICE_ACTION:Ljava/lang/String; = "com.mediatek.voicecommand.VoiceWakeupInteractionService"

.field public static final VOICE_WAKEUP_STATUS_COMMAND_CHECKED:I = 0x2

.field public static final VOICE_WAKEUP_STATUS_COMMAND_UNCHECKED:I = 0x1

.field public static final VOICE_WAKEUP_STATUS_NOCOMMAND_UNCHECKED:I = 0x0

.field public static final VOW_ENROLLMENT_BCP47_LOCALE:Ljava/lang/String; = "en-US"

.field public static final VOW_ENROLLMENT_TEXT:Ljava/lang/String; = "Hello There"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
