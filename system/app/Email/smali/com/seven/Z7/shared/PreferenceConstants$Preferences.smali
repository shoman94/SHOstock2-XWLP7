.class final enum Lcom/seven/Z7/shared/PreferenceConstants$Preferences;
.super Ljava/lang/Enum;
.source "PreferenceConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/shared/PreferenceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Preferences"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/seven/Z7/shared/PreferenceConstants$Preferences;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum EMAIL_TRUNC_MAX_ATTACHMENT_SIZE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum EMAIL_TRUNC_SIGNATURE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum EMAIL_TRUNC_SIZE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum EMAIL_TRUNC_TIME:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum EMAIL_TRUNC_USE_SIGNATURE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum IM_AUDIO_NOTIFICATION:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum IM_AUTO_SIGN_IN:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum IM_INVISIBLE_SIGN_IN:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum IM_NEW_MESSAGE_NOTIFICATION:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum IM_SAVE_PASSWORD:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum IM_VIBRATE_NOTIFICATION:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum LOG_ALLOW_REMOTE_DOWNLOAD:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum LOG_LEVEL:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum NOTIFICATION_AUDIABLE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum NOTIFICATION_VIBRATE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum NOTIFICATION_VISUAL:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum PAUSE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum QUIET_LOW_POWER:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum QUIET_ROAMING:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum QUIET_TIME_NIGHTS:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum QUIET_TIME_WEEKENDS:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum QUIET_WEEKDAYS_PUSH_END:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum QUIET_WEEKDAYS_PUSH_START:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum QUIET_WEEKDENDS_PUSH_END:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum QUIET_WEEKDEND_PUSH_FRI:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum QUIET_WEEKDEND_PUSH_MON:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum QUIET_WEEKDEND_PUSH_SAT:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum QUIET_WEEKDEND_PUSH_SUN:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum QUIET_WEEKDEND_PUSH_THU:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum QUIET_WEEKDEND_PUSH_TUE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum QUIET_WEEKDEND_PUSH_WED:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum QUIET_WEEKENDS_PUSH_START:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum SERVICE_CONTACT_REVERSE_DISPLAY_NAME:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum SERVICE_ENABLE_EXTERNAL_LOG:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

.field public static final enum SERVICE_SEND_NOTIFICATIONS:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;


# instance fields
.field public mGroup:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

.field public mType:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

.field public mValueType:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v15, 0x3

    const/4 v14, 0x2

    const/4 v4, 0x4

    .line 20
    new-instance v0, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v1, "QUIET_TIME_NIGHTS"

    sget-object v3, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v5, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->QUIET_TIME:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    invoke-direct/range {v0 .. v5}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v0, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_TIME_NIGHTS:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 21
    new-instance v5, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v6, "QUIET_TIME_WEEKENDS"

    sget-object v8, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v10, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->QUIET_TIME:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v5, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_TIME_WEEKENDS:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 22
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "QUIET_LOW_POWER"

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->QUIET_TIME:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v10, v14

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_LOW_POWER:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 24
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "QUIET_ROAMING"

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->QUIET_TIME:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v10, v15

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_ROAMING:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 25
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "QUIET_WEEKDAYS_PUSH_START"

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_LOCAL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->QUIET_TIME:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v10, v4

    move v12, v14

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_WEEKDAYS_PUSH_START:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 26
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "QUIET_WEEKDAYS_PUSH_END"

    const/4 v10, 0x5

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_LOCAL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->QUIET_TIME:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v14

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_WEEKDAYS_PUSH_END:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 27
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "QUIET_WEEKENDS_PUSH_START"

    const/4 v10, 0x6

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_LOCAL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->QUIET_TIME:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v14

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_WEEKENDS_PUSH_START:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 28
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "QUIET_WEEKDENDS_PUSH_END"

    const/4 v10, 0x7

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_LOCAL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->QUIET_TIME:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v14

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_WEEKDENDS_PUSH_END:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 31
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "QUIET_WEEKDEND_PUSH_SAT"

    const/16 v10, 0x8

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->QUIET_TIME:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_WEEKDEND_PUSH_SAT:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 32
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "QUIET_WEEKDEND_PUSH_SUN"

    const/16 v10, 0x9

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->QUIET_TIME:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_WEEKDEND_PUSH_SUN:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 33
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "QUIET_WEEKDEND_PUSH_MON"

    const/16 v10, 0xa

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->QUIET_TIME:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_WEEKDEND_PUSH_MON:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 35
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "QUIET_WEEKDEND_PUSH_TUE"

    const/16 v10, 0xb

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->QUIET_TIME:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_WEEKDEND_PUSH_TUE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 36
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "QUIET_WEEKDEND_PUSH_WED"

    const/16 v10, 0xc

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->QUIET_TIME:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_WEEKDEND_PUSH_WED:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 38
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "QUIET_WEEKDEND_PUSH_THU"

    const/16 v10, 0xd

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->QUIET_TIME:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_WEEKDEND_PUSH_THU:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 39
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "QUIET_WEEKDEND_PUSH_FRI"

    const/16 v10, 0xe

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->QUIET_TIME:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_WEEKDEND_PUSH_FRI:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 43
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "NOTIFICATION_AUDIABLE"

    const/16 v10, 0xf

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_LOCAL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->NOTIFICATIONS:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->NOTIFICATION_AUDIABLE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 44
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "NOTIFICATION_VIBRATE"

    const/16 v10, 0x10

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_LOCAL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->NOTIFICATIONS:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->NOTIFICATION_VIBRATE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 45
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "NOTIFICATION_VISUAL"

    const/16 v10, 0x11

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_LOCAL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->NOTIFICATIONS:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->NOTIFICATION_VISUAL:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 49
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "LOG_LEVEL"

    const/16 v10, 0x12

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->LOG:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v14

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->LOG_LEVEL:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "LOG_ALLOW_REMOTE_DOWNLOAD"

    const/16 v10, 0x13

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->LOG:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->LOG_ALLOW_REMOTE_DOWNLOAD:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 52
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "PAUSE"

    const/16 v10, 0x14

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_LOCAL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->PAUSE:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->PAUSE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 55
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "EMAIL_TRUNC_TIME"

    const/16 v10, 0x15

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->ACCOUNT_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->EMAIL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v14

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->EMAIL_TRUNC_TIME:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 56
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "EMAIL_TRUNC_SIZE"

    const/16 v10, 0x16

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->ACCOUNT_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->EMAIL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v14

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->EMAIL_TRUNC_SIZE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 57
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "EMAIL_TRUNC_USE_SIGNATURE"

    const/16 v10, 0x17

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->ACCOUNT_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->EMAIL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->EMAIL_TRUNC_USE_SIGNATURE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 58
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "EMAIL_TRUNC_SIGNATURE"

    const/16 v10, 0x18

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->ACCOUNT_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->EMAIL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v15

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->EMAIL_TRUNC_SIGNATURE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 59
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "EMAIL_TRUNC_MAX_ATTACHMENT_SIZE"

    const/16 v10, 0x19

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->ACCOUNT_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->EMAIL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v14

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->EMAIL_TRUNC_MAX_ATTACHMENT_SIZE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 63
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "IM_AUTO_SIGN_IN"

    const/16 v10, 0x1a

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->ACCOUNT_LOCAL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->IM:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->IM_AUTO_SIGN_IN:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 64
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "IM_INVISIBLE_SIGN_IN"

    const/16 v10, 0x1b

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->ACCOUNT_LOCAL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->IM:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->IM_INVISIBLE_SIGN_IN:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 65
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "IM_NEW_MESSAGE_NOTIFICATION"

    const/16 v10, 0x1c

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->ACCOUNT_LOCAL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->IM:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->IM_NEW_MESSAGE_NOTIFICATION:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 66
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "IM_AUDIO_NOTIFICATION"

    const/16 v10, 0x1d

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->ACCOUNT_LOCAL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->IM:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->IM_AUDIO_NOTIFICATION:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 67
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "IM_VIBRATE_NOTIFICATION"

    const/16 v10, 0x1e

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->ACCOUNT_LOCAL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->IM:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->IM_VIBRATE_NOTIFICATION:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 68
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "IM_SAVE_PASSWORD"

    const/16 v10, 0x1f

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->ACCOUNT_LOCAL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->IM:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->IM_SAVE_PASSWORD:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 72
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "SERVICE_SEND_NOTIFICATIONS"

    const/16 v10, 0x20

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_LOCAL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->API:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->SERVICE_SEND_NOTIFICATIONS:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 73
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "SERVICE_CONTACT_REVERSE_DISPLAY_NAME"

    const/16 v10, 0x21

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_LOCAL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->API:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->SERVICE_CONTACT_REVERSE_DISPLAY_NAME:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 74
    new-instance v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    const-string v9, "SERVICE_ENABLE_EXTERNAL_LOG"

    const/16 v10, 0x22

    sget-object v11, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_LOCAL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v13, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->API:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;-><init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V

    sput-object v8, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->SERVICE_ENABLE_EXTERNAL_LOG:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    .line 19
    const/16 v0, 0x23

    new-array v0, v0, [Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    sget-object v1, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_TIME_NIGHTS:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v1, v0, v2

    sget-object v1, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_TIME_WEEKENDS:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v1, v0, v7

    sget-object v1, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_LOW_POWER:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v1, v0, v14

    sget-object v1, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_ROAMING:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v1, v0, v15

    sget-object v1, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_WEEKDAYS_PUSH_START:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_WEEKDAYS_PUSH_END:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_WEEKENDS_PUSH_START:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_WEEKDENDS_PUSH_END:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_WEEKDEND_PUSH_SAT:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_WEEKDEND_PUSH_SUN:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_WEEKDEND_PUSH_MON:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_WEEKDEND_PUSH_TUE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_WEEKDEND_PUSH_WED:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_WEEKDEND_PUSH_THU:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->QUIET_WEEKDEND_PUSH_FRI:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->NOTIFICATION_AUDIABLE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->NOTIFICATION_VIBRATE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->NOTIFICATION_VISUAL:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->LOG_LEVEL:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->LOG_ALLOW_REMOTE_DOWNLOAD:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->PAUSE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->EMAIL_TRUNC_TIME:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->EMAIL_TRUNC_SIZE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->EMAIL_TRUNC_USE_SIGNATURE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->EMAIL_TRUNC_SIGNATURE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->EMAIL_TRUNC_MAX_ATTACHMENT_SIZE:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->IM_AUTO_SIGN_IN:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->IM_INVISIBLE_SIGN_IN:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->IM_NEW_MESSAGE_NOTIFICATION:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->IM_AUDIO_NOTIFICATION:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->IM_VIBRATE_NOTIFICATION:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->IM_SAVE_PASSWORD:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->SERVICE_SEND_NOTIFICATIONS:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->SERVICE_CONTACT_REVERSE_DISPLAY_NAME:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->SERVICE_ENABLE_EXTERNAL_LOG:Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    aput-object v2, v0, v1

    sput-object v0, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->$VALUES:[Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceType;ILcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;)V
    .locals 0
    .parameter
    .parameter
    .parameter "type"
    .parameter "valueType"
    .parameter "group"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;",
            "I",
            "Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    iput-object p3, p0, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->mType:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    .line 85
    iput p4, p0, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->mValueType:I

    .line 86
    iput-object p5, p0, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->mGroup:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    .line 87
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seven/Z7/shared/PreferenceConstants$Preferences;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    return-object v0
.end method

.method public static values()[Lcom/seven/Z7/shared/PreferenceConstants$Preferences;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->$VALUES:[Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    invoke-virtual {v0}, [Lcom/seven/Z7/shared/PreferenceConstants$Preferences;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seven/Z7/shared/PreferenceConstants$Preferences;

    return-object v0
.end method
