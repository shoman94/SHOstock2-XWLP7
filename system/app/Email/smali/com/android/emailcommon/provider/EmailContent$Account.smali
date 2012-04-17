.class public final Lcom/android/emailcommon/provider/EmailContent$Account;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/emailcommon/provider/EmailContent$AccountColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Account"
.end annotation


# static fields
.field public static final ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

.field public static final ADD_TO_FIELD_URI:Landroid/net/Uri;

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ID_PROJECTION:[Ljava/lang/String;

.field public static DEVICE_IS_ALLOWED:I

.field public static DEVICE_IS_BLOCKED:I

.field public static DEVICE_IS_QUARANTINED:I

.field public static final ID_TYPE_PROJECTION:[Ljava/lang/String;

.field public static final RESET_NEW_MESSAGE_COUNT_URI:Landroid/net/Uri;

.field public static mEmailMessageDiffEnabled:I

.field public static mEmailSize:I

.field public static mIRMTemplateTimeStamp:Ljava/lang/String;


# instance fields
.field public accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

.field public mAccountKey:J

.field public mAccountType:I

.field public mAttachmentEnabled:I

.field public mAutoDownload:Z

.field public mAutoRetryTimes:I

.field public mCalendarSyncLookback:I

.field public mCbaCertificateAlias:Ljava/lang/String;

.field public mCompatibilityUuid:Ljava/lang/String;

.field public mConflictFlags:I

.field public mConversationMode:I

.field public mDays:Ljava/lang/String;

.field public mDeviceInfoSent:I

.field public mDisplayName:Ljava/lang/String;

.field public mEasLocalChangeEnabled:Z

.field public mEmailAddress:Ljava/lang/String;

.field public mEmailRetrieveSizeValues:[Ljava/lang/String;

.field public mFlags:I

.field public mForwardWithFiles:Z

.field public mHostAuthKeyRecv:J

.field public mHostAuthKeySend:J

.field public transient mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

.field public transient mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

.field public mIsDefault:Z

.field public mIsInPeakPeriod:Z

.field public mMessageFormat:I

.field public mNewMessageCount:I

.field public mOffPeakTime:I

.field public mPeakEndTime:Ljava/lang/String;

.field public mPeakStartTime:Ljava/lang/String;

.field public mPeakTime:I

.field public mPolicyKey:Ljava/lang/String;

.field public mProtocolVersion:Ljava/lang/String;

.field public mRecentMessages:I

.field public mRingtoneUri:Ljava/lang/String;

.field public mSecurityFlags:J

.field public mSecuritySyncKey:Ljava/lang/String;

.field public mSenderName:Ljava/lang/String;

.field public mSevenAccountKey:J

.field public mShowImage:Z

.field public mSignature:Ljava/lang/String;

.field public mSizeLimit:J

.field public mSmimeEncryptAll:Z

.field public mSmimeEncryptionAlgorithm:I

.field public mSmimeOwnCertificateAlias:Ljava/lang/String;

.field public mSmimeSignAlgorithm:I

.field public mSmimeSignAll:Z

.field public mSyncInterval:I

.field public mSyncKey:Ljava/lang/String;

.field public mSyncLookback:I

.field private mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

.field public mTextPreviewSize:I

.field public mTimeLimit:J

.field public mTypeMsg:I

.field public mWhileroaming:I

.field public mdeviceBlockedType:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    .line 3565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/accountIdAddToField"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->ADD_TO_FIELD_URI:Landroid/net/Uri;

    .line 3568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/resetNewMessageCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->RESET_NEW_MESSAGE_COUNT_URI:Landroid/net/Uri;

    .line 3822
    sput v3, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_ALLOWED:I

    .line 3824
    sput v4, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_BLOCKED:I

    .line 3826
    sput v5, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_QUARANTINED:I

    .line 3979
    const/16 v0, 0x39

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "emailAddress"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "syncKey"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "syncLookback"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "syncInterval"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hostAuthKeyRecv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hostAuthKeySend"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "isDefault"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "compatibilityUuid"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "senderName"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ringtoneUri"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "protocolVersion"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "newMessageCount"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "securityFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "securitySyncKey"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "signature"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "emailsize"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "policyKey"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "peakDays"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "peakStartMinute"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "peakEndMinute"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "peakSchedule"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "offPeakSchedule"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "roamingSchedule"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "calendarSyncLookback"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "typeMsg"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "sevenAccountKey"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "sizeLimit"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "timeLimit"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "peakTime"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "offPeakTime"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "days"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "peakStartTime"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "peakEndTime"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "whileRoaming"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "attachmentEnabled"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "smimeOwnCertificateAlias"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "smimeOptionsFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "smimeSignAlgorithm"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "smimeEncryptionAlgorithm"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "conversationMode"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "textPreview"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "deviceInfoSent"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "deviceBlockedType"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "conflict"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "IRMTemplateTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "cbaCertificateAlias"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "messageFormat"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "accountType"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "easLocalChange"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "forwardWithFiles"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "autoDownload"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "recentMessages"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "showImage"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "autoRetryTimes"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 4074
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_TYPE_PROJECTION:[Ljava/lang/String;

    .line 4082
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "flags"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    .line 4108
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "isDefault"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->DEFAULT_ID_PROJECTION:[Ljava/lang/String;

    .line 5783
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Account$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Account$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v4, -0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 4115
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 3717
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 3719
    iput v8, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    .line 3799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailRetrieveSizeValues:[Ljava/lang/String;

    .line 3886
    iput v9, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    .line 4116
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 4119
    const-string v0, "VZW_LTE"

    invoke-static {v0}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    .line 4124
    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    .line 4125
    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    .line 4126
    const/16 v0, 0x2001

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 4127
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 4140
    const/16 v0, 0x9

    sput v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    .line 4141
    const-string v0, "U1_NA_SPR"

    invoke-static {v0}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4142
    const/4 v0, 0x6

    sput v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    .line 4144
    :cond_0
    sput v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailMessageDiffEnabled:I

    .line 4146
    iput v8, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    .line 4148
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    .line 4149
    new-instance v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v1, 0x1e0

    const/16 v2, 0x3fc

    const/16 v3, 0x3e

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    .line 4161
    iput-boolean v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsInPeakPeriod:Z

    .line 4164
    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 4166
    iput v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    .line 4168
    iput v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConversationMode:I

    .line 4171
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTextPreviewSize:I

    .line 4174
    iput v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDeviceInfoSent:I

    .line 4178
    iput v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    .line 4179
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    .line 4183
    iput-boolean v8, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    .line 4184
    iput-boolean v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoDownload:Z

    .line 4186
    iput v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRecentMessages:I

    .line 4187
    iput-boolean v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mShowImage:Z

    .line 4190
    iput v9, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    .line 4193
    return-void

    .line 4119
    :cond_1
    const-string v0, "content://media/internal/audio/media/32"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5874
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 3717
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 3719
    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    .line 3799
    iput-object v5, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailRetrieveSizeValues:[Ljava/lang/String;

    .line 3886
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    .line 5875
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 5876
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 5877
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    .line 5878
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 5879
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 5880
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    .line 5881
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    .line 5882
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    .line 5883
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    .line 5884
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 5885
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    .line 5886
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 5887
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    .line 5888
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    .line 5889
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 5890
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    .line 5891
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    .line 5892
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 5893
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    .line 5895
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sput v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    .line 5896
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    .line 5897
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    .line 5898
    const-class v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    .line 5900
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 5902
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConversationMode:I

    .line 5905
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTextPreviewSize:I

    .line 5908
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDeviceInfoSent:I

    .line 5912
    iput-object v5, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 5913
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    .line 5914
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v0, p1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 5917
    :cond_0
    iput-object v5, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 5918
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    .line 5919
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v0, p1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 5922
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    .line 5926
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    .line 5927
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    .line 5931
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    .line 5932
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoDownload:Z

    .line 5934
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRecentMessages:I

    .line 5935
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mShowImage:Z

    .line 5938
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    .line 5940
    sget v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    const/16 v3, 0x9

    if-ne v0, v3, :cond_6

    :goto_4
    sput v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailMessageDiffEnabled:I

    .line 5941
    return-void

    :cond_2
    move v0, v2

    .line 5885
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 5931
    goto :goto_1

    :cond_4
    move v0, v2

    .line 5932
    goto :goto_2

    :cond_5
    move v0, v2

    .line 5935
    goto :goto_3

    :cond_6
    move v1, v2

    .line 5940
    goto :goto_4
.end method

.method public static clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 5428
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5430
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 5435
    .local v8, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5437
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 5440
    .local v6, accountId:J
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 5441
    .local v10, flags:I
    and-int/lit8 v1, v10, 0x20

    if-eqz v1, :cond_0

    and-int/lit16 v1, v10, 0x4000

    if-nez v1, :cond_0

    .line 5443
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 5444
    .local v9, cv:Landroid/content/ContentValues;
    const-string v1, "flags"

    and-int/lit8 v2, v10, -0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5445
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 5446
    .local v11, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v9, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5452
    .end local v6           #accountId:J
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v10           #flags:I
    .end local v11           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5453
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1

    .line 5452
    :cond_2
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5453
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5455
    :cond_3
    return-void
.end method

.method public static getAccountForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 4
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 5380
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v0

    .line 5381
    .local v0, accountId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 5382
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 5384
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getAccountIdForMessageId(Landroid/content/Context;J)J
    .locals 2
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 5369
    const-string v0, "accountKey"

    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getKeyColumnLong(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAccountIdFromShortcutSafeUri(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 12
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    const-wide/16 v10, -0x1

    const/4 v6, 0x0

    .line 5267
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.email.provider"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-wide v0, v10

    .line 5288
    :goto_0
    return-wide v0

    .line 5271
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    .line 5272
    .local v9, ps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "account"

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-wide v0, v10

    .line 5273
    goto :goto_0

    .line 5277
    :cond_3
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 5282
    .local v8, id:Ljava/lang/String;
    :try_start_0
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 5283
    :catch_0
    move-exception v0

    .line 5288
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "compatibilityUuid =?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v8, v4, v6

    const/4 v5, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getAccountIdWhere(Landroid/content/Context;Ljava/lang/String;)J
    .locals 7
    .parameter "context"
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    .line 5348
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5351
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5352
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 5355
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5356
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5358
    :cond_0
    :goto_0
    return-wide v0

    .line 5355
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5356
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5358
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 5355
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5356
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getDefaultAccountId(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 5304
    const-string v2, "isDefault=1"

    invoke-static {p0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 5305
    .local v0, id:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 5309
    const-string v2, "displayName is not \'##snc##\'"

    invoke-static {p0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 5312
    :cond_0
    return-wide v0
.end method

.method private static getDefaultAccountWhere(Landroid/content/Context;Ljava/lang/String;)J
    .locals 9
    .parameter "context"
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    .line 5230
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->DEFAULT_ID_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getEmailSize(B)I
    .locals 2
    .parameter "size"

    .prologue
    const v0, 0xf000

    .line 4592
    if-nez p0, :cond_1

    .line 4593
    const/16 v0, 0x600

    .line 4600
    :cond_0
    :goto_0
    return v0

    .line 4594
    :cond_1
    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    .line 4596
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 4597
    const v0, 0x19000

    goto :goto_0
.end method

.method private getId(Landroid/net/Uri;)J
    .locals 2
    .parameter "u"

    .prologue
    .line 4519
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInboxId(Landroid/content/Context;J)J
    .locals 9
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v6, 0x0

    .line 5416
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "type = 0 AND accountKey =?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getProtocol(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 5324
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 5325
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_0

    .line 5326
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 5328
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getShortcutSafeUriFromUuid(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "uuid"

    .prologue
    .line 5251
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isSecurityHold(Landroid/content/Context;J)Z
    .locals 10
    .parameter "context"
    .parameter "accountId"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 5407
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static isValidId(Landroid/content/Context;J)Z
    .locals 8
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5394
    const-wide/high16 v0, 0x1000

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 5397
    :goto_0
    return v7

    :cond_0
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id =?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    move v6, v7

    :cond_1
    move v7, v6

    goto :goto_0
.end method

.method public static restoreAccountWithEmailAddress(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 4233
    .line 4235
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emailAddress=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4238
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4239
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4247
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4248
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 4247
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4248
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    goto :goto_0

    .line 4243
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 4244
    :goto_1
    :try_start_2
    const-string v2, "EmailContent >>"

    const-string v3, "IllegalStateException in restoreAccountWithId"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4247
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4248
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_0

    .line 4247
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4248
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 4247
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_2

    .line 4243
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 4196
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 4199
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4202
    if-nez v1, :cond_1

    move-object v0, v6

    .line 4220
    :cond_0
    :goto_0
    return-object v0

    .line 4206
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4207
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4215
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4216
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 4218
    :catch_0
    move-exception v0

    .line 4219
    const-string v1, "EmailContent >>"

    const-string v2, "RuntimeException in restoreAccountWithId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    .line 4220
    goto :goto_0

    .line 4215
    :cond_2
    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4216
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    move-object v0, v6

    goto :goto_0

    .line 4211
    :catch_1
    move-exception v0

    .line 4212
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4215
    if-eqz v1, :cond_4

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4216
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    goto :goto_0

    .line 4215
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 4216
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public static restoreAccountWithSevenAccountId(Landroid/content/Context;I)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 4254
    .line 4256
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sevenAccountKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4259
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4260
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4268
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4269
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 4268
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4269
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    goto :goto_0

    .line 4264
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 4265
    :goto_1
    :try_start_2
    const-string v2, "EmailContent >>"

    const-string v3, "IllegalStateException in restoreAccountWithSevenAccountId"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4268
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4269
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_0

    .line 4268
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4269
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 4268
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_2

    .line 4264
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static restoreAccounts(Landroid/content/Context;)[Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 4324
    .line 4326
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4328
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 4348
    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4349
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v6

    .line 4353
    :goto_0
    return-object v0

    .line 4331
    :cond_2
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 4332
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 4348
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4349
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_0

    .line 4335
    :cond_4
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v1, v0, [Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 4336
    const/4 v0, 0x0

    .line 4337
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v0

    .line 4339
    :goto_1
    add-int/lit8 v4, v3, 0x1

    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    aput-object v0, v1, v3

    .line 4340
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-nez v0, :cond_a

    .line 4348
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4349
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v1

    .line 4353
    goto :goto_0

    .line 4348
    :cond_6
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4349
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v6

    goto :goto_0

    .line 4344
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 4345
    :goto_2
    :try_start_4
    const-string v2, "EmailContent >>"

    const-string v3, "IllegalStateException in restoreAccounts(Context context)"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4348
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4349
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v0, v6

    goto :goto_0

    .line 4348
    :catchall_0
    move-exception v0

    move-object v2, v6

    :goto_3
    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_9

    .line 4349
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    .line 4348
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 4344
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :cond_a
    move v3, v4

    goto :goto_1
.end method

.method public static restoreAccounts(Landroid/content/Context;Ljava/lang/String;)[Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 4276
    .line 4279
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4281
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 4305
    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4306
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v6

    .line 4309
    :goto_0
    return-object v0

    .line 4285
    :cond_2
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 4286
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 4305
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4306
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_0

    .line 4289
    :cond_4
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v1, v0, [Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 4290
    const/4 v0, 0x0

    .line 4292
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v0

    .line 4294
    :goto_1
    add-int/lit8 v4, v3, 0x1

    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    aput-object v0, v1, v3

    .line 4295
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-nez v0, :cond_a

    .line 4305
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4306
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v1

    .line 4309
    goto :goto_0

    .line 4305
    :cond_6
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4306
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v6

    goto :goto_0

    .line 4299
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 4300
    :goto_2
    :try_start_4
    const-string v2, "EmailContent >>"

    const-string v3, "IllegalStateException in restoreAccounts(Context context, String where)"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4305
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4306
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v0, v6

    goto :goto_0

    .line 4305
    :catchall_0
    move-exception v0

    move-object v2, v6

    :goto_3
    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_9

    .line 4306
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    .line 4305
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 4299
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :cond_a
    move v3, v4

    goto :goto_1
.end method

.method public static restoreUnifiedAccount(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 2
    .parameter "context"

    .prologue
    .line 4226
    const-string v1, "snc@snc.snc"

    invoke-static {p0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithEmailAddress(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 4227
    .local v0, acct:Lcom/android/emailcommon/provider/EmailContent$Account;
    return-object v0
.end method

.method public static setSyncStatus(Landroid/content/Context;Ljava/lang/Long;I)V
    .locals 6
    .parameter "context"
    .parameter "acctId"
    .parameter "syncStatus"

    .prologue
    const/4 v5, 0x0

    .line 4388
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4389
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "isInitSyncComplete"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4390
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4393
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 5777
    const/4 v0, 0x0

    return v0
.end method

.method public dumpAccountInfo()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x5b

    const/16 v5, 0x5d

    const/16 v4, 0x2f

    .line 5968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5969
    const-string v1, " *** ACCOUNT ***\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5970
    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5971
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5973
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5976
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5979
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5980
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5983
    const-string v1, "[Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5985
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5988
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5992
    const-string v1, "[SyncSchedule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5995
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5997
    const-string v1, "[SMIME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSmimeFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6002
    const-string v1, "[ mMessageFormat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6003
    const-string v1, "[ mAccountType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6007
    const-string v1, "[ mForwardWithFiles = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6008
    const-string v1, "[ mAutoDownload = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoDownload:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6010
    const-string v1, "[ mRecentMessages = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRecentMessages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6011
    const-string v1, "[ mShowImage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mShowImage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6013
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dumpHostAuthInfo(Lcom/android/emailcommon/provider/EmailContent$HostAuth;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x2f

    .line 6017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6018
    const-string v1, " *** HOSTAUTH *** ::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6019
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6020
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6021
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6025
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6026
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6027
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()I
    .locals 1

    .prologue
    .line 4994
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    return v0
.end method

.method public getAutoRetryTimes()I
    .locals 1

    .prologue
    .line 4877
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    return v0
.end method

.method public getCalendarSyncLookback()I
    .locals 1

    .prologue
    .line 4777
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    return v0
.end method

.method public getConflictresolution()I
    .locals 1

    .prologue
    .line 4659
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    return v0
.end method

.method public getConversationMode()I
    .locals 1

    .prologue
    .line 4889
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConversationMode:I

    return v0
.end method

.method public getDefaultEmailRetrieveSize(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 4639
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailRetrieveSizeValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4640
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailRetrieveSizeValues:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4642
    :goto_0
    return v0

    :cond_0
    const v0, 0xc800

    goto :goto_0
.end method

.method public getDeletePolicy()I
    .locals 1

    .prologue
    .line 5057
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4526
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4542
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailRetrieveSize()I
    .locals 1

    .prologue
    .line 4619
    sget v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    return v0
.end method

.method public getEmailSize()B
    .locals 1

    .prologue
    .line 4587
    sget v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    int-to-byte v0, v0

    return v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 4951
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    return v0
.end method

.method public getForwardWithFiles()Z
    .locals 1

    .prologue
    .line 4721
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    return v0
.end method

.method public getLargeMsgCriSize(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 4647
    const-string v1, "EmailContent >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current EmailRetrieveSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4648
    sget v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getMinEmailRetrieveSize(Landroid/content/Context;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4649
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultEmailRetrieveSize(Landroid/content/Context;)I

    move-result v0

    .line 4653
    .local v0, criSize:I
    :goto_0
    const-string v1, "EmailContent >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LargeMsg criterion size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4654
    return v0

    .line 4651
    .end local v0           #criSize:I
    :cond_0
    sget v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    .restart local v0       #criSize:I
    goto :goto_0
.end method

.method public getMessageFormat()I
    .locals 1

    .prologue
    .line 4978
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    return v0
.end method

.method public getMinEmailRetrieveSize(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 4632
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailRetrieveSizeValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4633
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailRetrieveSizeValues:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4635
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x800

    goto :goto_0
.end method

.method public getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .locals 4
    .parameter "context"

    .prologue
    .line 5175
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v0, :cond_0

    .line 5176
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 5177
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 5182
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    return-object v0

    .line 5179
    :cond_1
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    goto :goto_0
.end method

.method public getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .locals 4
    .parameter "context"

    .prologue
    .line 5164
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v0, :cond_0

    .line 5165
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 5166
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 5171
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    return-object v0

    .line 5168
    :cond_1
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    goto :goto_0
.end method

.method public getProtocol(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 5339
    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 5340
    .local v0, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-eqz v0, :cond_0

    .line 5341
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 5343
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRingtone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4970
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityFlags()J
    .locals 2

    .prologue
    .line 5071
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    return-wide v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4559
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 4560
    const-string v0, ""

    .line 4562
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSenderUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 5103
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v1, :cond_0

    .line 5104
    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 5107
    :cond_0
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_1

    .line 5108
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->getStoreUri()Ljava/lang/String;

    move-result-object v0

    .line 5109
    .local v0, senderUri:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 5113
    .end local v0           #senderUri:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getSevenAccountKey()J
    .locals 2

    .prologue
    .line 4914
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4575
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSmimeEncryptionAlgorithm()I
    .locals 1

    .prologue
    .line 4854
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    return v0
.end method

.method public getSmimeFlags()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5682
    const/4 v0, 0x0

    .line 5683
    .local v0, flags:I
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptAll:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    shl-int/lit8 v0, v1, 0x0

    .line 5684
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAll:Z

    if-eqz v1, :cond_1

    :goto_1
    shl-int/lit8 v1, v2, 0x1

    or-int/2addr v0, v1

    .line 5685
    return v0

    :cond_0
    move v1, v3

    .line 5683
    goto :goto_0

    :cond_1
    move v2, v3

    .line 5684
    goto :goto_1
.end method

.method public getSmimeOwnCertificate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4799
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getSmimeSignAlgorithm()I
    .locals 1

    .prologue
    .line 4837
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    return v0
.end method

.method public getStoreUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 5088
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v1, :cond_0

    .line 5089
    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 5092
    :cond_0
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_1

    .line 5093
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->getStoreUri()Ljava/lang/String;

    move-result-object v0

    .line 5094
    .local v0, storeUri:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 5098
    .end local v0           #storeUri:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getSyncInterval()I
    .locals 1

    .prologue
    .line 4705
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    return v0
.end method

.method public getSyncLookback()I
    .locals 1

    .prologue
    .line 4760
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    return v0
.end method

.method public getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;
    .locals 1

    .prologue
    .line 5019
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    return-object v0
.end method

.method public getTextPreviewSize()I
    .locals 1

    .prologue
    .line 4670
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTextPreviewSize:I

    return v0
.end method

.method public getTypeMsg()I
    .locals 1

    .prologue
    .line 4922
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5066
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    return-object v0
.end method

.method public isEasAccount(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 5203
    const-string v0, "eas"

    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cursor"

    .prologue
    const/16 v6, 0x9

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4397
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 4398
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 4399
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    .line 4400
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 4401
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 4402
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    .line 4403
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    .line 4404
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    .line 4405
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    .line 4406
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 4407
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    .line 4408
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 4409
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    .line 4410
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    .line 4411
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 4412
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    .line 4413
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    .line 4414
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 4415
    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    .line 4418
    const/16 v1, 0x12

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sput v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    .line 4419
    sget v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    if-ne v1, v6, :cond_1

    move v1, v2

    :goto_1
    sput v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailMessageDiffEnabled:I

    .line 4420
    const/16 v1, 0x13

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    .line 4422
    const/16 v1, 0x2a

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConversationMode:I

    .line 4424
    const/16 v1, 0x2b

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTextPreviewSize:I

    .line 4426
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v4, 0x14

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/utility/SyncScheduleData;->setPeakDay(I)V

    .line 4427
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v4, 0x15

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/utility/SyncScheduleData;->setStartMinute(I)V

    .line 4428
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v4, 0x16

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/utility/SyncScheduleData;->setEndMinute(I)V

    .line 4429
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v4, 0x17

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/utility/SyncScheduleData;->setPeakSchedule(I)V

    .line 4432
    const/16 v1, 0x18

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 4433
    .local v0, value:I
    sparse-switch v0, :sswitch_data_0

    .line 4444
    const/4 v0, -0x2

    .line 4446
    :sswitch_0
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/utility/SyncScheduleData;->setOffPeakSchedule(I)V

    .line 4448
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v4, 0x19

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/utility/SyncScheduleData;->setRoamingSchedule(I)V

    .line 4451
    const/16 v1, 0x1a

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 4453
    const/16 v1, 0x1b

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    .line 4454
    const/16 v1, 0x1c

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    .line 4455
    const/16 v1, 0x1e

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    .line 4456
    const/16 v1, 0x1d

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSizeLimit:J

    .line 4464
    const/16 v1, 0x1f

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakTime:I

    .line 4465
    const/16 v1, 0x20

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mOffPeakTime:I

    .line 4466
    const/16 v1, 0x21

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDays:Ljava/lang/String;

    .line 4467
    const/16 v1, 0x22

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakStartTime:Ljava/lang/String;

    .line 4468
    const/16 v1, 0x23

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakEndTime:Ljava/lang/String;

    .line 4469
    const/16 v1, 0x24

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mWhileroaming:I

    .line 4470
    const/16 v1, 0x25

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAttachmentEnabled:I

    .line 4473
    const/16 v1, 0x26

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    .line 4477
    const/16 v1, 0x27

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSmimeFlags(I)V

    .line 4478
    const/16 v1, 0x28

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    .line 4479
    const/16 v1, 0x29

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    .line 4483
    const/16 v1, 0x2c

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDeviceInfoSent:I

    .line 4486
    const/16 v1, 0x2d

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mdeviceBlockedType:I

    .line 4488
    const/16 v1, 0x2e

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    .line 4491
    const/16 v1, 0x2f

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mIRMTemplateTimeStamp:Ljava/lang/String;

    .line 4494
    const/16 v1, 0x30

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    .line 4498
    const/16 v1, 0x31

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    .line 4499
    const/16 v1, 0x32

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    .line 4503
    const/16 v1, 0x33

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEasLocalChangeEnabled:Z

    .line 4507
    const/16 v1, 0x34

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_3

    move v1, v3

    :goto_3
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    .line 4508
    const/16 v1, 0x35

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_4

    move v1, v3

    :goto_4
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoDownload:Z

    .line 4510
    const/16 v1, 0x36

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRecentMessages:I

    .line 4511
    const/16 v1, 0x37

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_5

    :goto_5
    iput-boolean v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mShowImage:Z

    .line 4514
    const/16 v1, 0x38

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    .line 4516
    return-void

    .end local v0           #value:I
    :cond_0
    move v1, v3

    .line 4407
    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 4419
    goto/16 :goto_1

    .restart local v0       #value:I
    :cond_2
    move v1, v2

    .line 4503
    goto :goto_2

    :cond_3
    move v1, v2

    .line 4507
    goto :goto_3

    :cond_4
    move v1, v2

    .line 4508
    goto :goto_4

    :cond_5
    move v3, v2

    .line 4511
    goto :goto_5

    .line 4433
    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x5 -> :sswitch_0
        0xf -> :sswitch_0
        0x3c -> :sswitch_0
        0xf0 -> :sswitch_0
        0x2d0 -> :sswitch_0
    .end sparse-switch
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .locals 24
    .parameter "context"

    .prologue
    .line 5526
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSaved()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 5527
    new-instance v21, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v21

    .line 5534
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 5535
    invoke-super/range {p0 .. p1}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v20

    .line 5670
    :goto_0
    return-object v20

    .line 5538
    :cond_1
    const/4 v9, 0x0

    .line 5539
    .local v9, index:I
    const/16 v17, -0x1

    .line 5540
    .local v17, recvIndex:I
    const/16 v19, -0x1

    .line 5544
    .local v19, sendIndex:I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 5545
    .local v15, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 5546
    add-int/lit8 v10, v9, 0x1

    .end local v9           #index:I
    .local v10, index:I
    move/from16 v17, v9

    .line 5547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v10

    .line 5550
    .end local v10           #index:I
    .restart local v9       #index:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 5551
    add-int/lit8 v10, v9, 0x1

    .end local v9           #index:I
    .restart local v10       #index:I
    move/from16 v19, v9

    .line 5552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v10

    .line 5559
    .end local v10           #index:I
    .restart local v9       #index:I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 5569
    invoke-static/range {p1 .. p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v5

    .local v5, currentDefaultAccountId:J
    const-wide/16 v21, -0x1

    cmp-long v21, v5, v21

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v21, v0

    cmp-long v21, v5, v21

    if-eqz v21, :cond_4

    .line 5571
    add-int/lit8 v9, v9, 0x1

    .line 5573
    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v12

    .line 5576
    .local v12, modifyMe:Lcom/android/emailcommon/provider/EmailContent$Account;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 5582
    .local v8, cv1:Landroid/content/ContentValues;
    const-string v21, "isDefault"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5583
    const-string v21, "emailsize"

    sget v22, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5584
    sget-object v21, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5594
    .end local v5           #currentDefaultAccountId:J
    .end local v8           #cv1:Landroid/content/ContentValues;
    .end local v12           #modifyMe:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_4
    const/4 v7, 0x0

    .line 5595
    .local v7, cv:Landroid/content/ContentValues;
    if-gez v17, :cond_5

    if-ltz v19, :cond_7

    .line 5596
    :cond_5
    new-instance v7, Landroid/content/ContentValues;

    .end local v7           #cv:Landroid/content/ContentValues;
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 5597
    .restart local v7       #cv:Landroid/content/ContentValues;
    if-ltz v17, :cond_6

    .line 5598
    const-string v21, "hostAuthKeyRecv"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5600
    :cond_6
    if-ltz v19, :cond_7

    .line 5601
    const-string v21, "hostAuthKeySend"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5605
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 5606
    .local v4, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 5607
    if-eqz v7, :cond_8

    .line 5608
    invoke-virtual {v4, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 5610
    :cond_8
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5613
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "com.android.email.provider"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v18

    .line 5616
    .local v18, results:[Landroid/content/ContentProviderResult;
    if-ltz v17, :cond_9

    .line 5617
    aget-object v21, v18, v17

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getId(Landroid/net/Uri;)J

    move-result-wide v13

    .line 5618
    .local v13, newId:J
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    .line 5619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 5621
    .end local v13           #newId:J
    :cond_9
    if-ltz v19, :cond_a

    .line 5622
    aget-object v21, v18, v19

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getId(Landroid/net/Uri;)J

    move-result-wide v13

    .line 5623
    .restart local v13       #newId:J
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    .line 5624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 5626
    .end local v13           #newId:J
    :cond_a
    aget-object v21, v18, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v20, v0

    .line 5627
    .local v20, u:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getId(Landroid/net/Uri;)J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 5633
    new-instance v21, Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    invoke-direct/range {v21 .. v21}, Lcom/android/emailcommon/provider/EmailContent$AccountCB;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    .line 5634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 5635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mAccountKey:J

    .line 5636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mSevenAccountKey:J

    .line 5637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mTimeLimit:J

    .line 5638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mTypeMsg:I

    .line 5641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakTime:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mPeakTime:I

    .line 5642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mOffPeakTime:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mOffPeakTime:I

    .line 5643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDays:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mDays:Ljava/lang/String;

    .line 5644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakStartTime:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mPeakStartTime:Ljava/lang/String;

    .line 5645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakEndTime:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mPeakEndTime:Ljava/lang/String;

    .line 5646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mWhileroaming:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mWhileroaming:I

    .line 5647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAttachmentEnabled:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mAttachmentEnabled:I

    .line 5649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    .line 5650
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5651
    .end local v15           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local v16, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :try_start_1
    sget-object v21, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->toContentValues()Landroid/content/ContentValues;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5653
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "com.android.email.provider"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v18

    move-object/from16 v15, v16

    .line 5658
    .end local v16           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v15       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_b
    :try_start_2
    const-string v3, "com.android.email.action.ACCOUNT_UPDATED"

    .line 5659
    .local v3, ACTION:Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5660
    .local v11, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 5665
    .end local v3           #ACTION:Ljava/lang/String;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v18           #results:[Landroid/content/ContentProviderResult;
    .end local v20           #u:Landroid/net/Uri;
    :catch_0
    move-exception v21

    .line 5670
    :goto_1
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 5667
    :catch_1
    move-exception v21

    goto :goto_1

    .end local v15           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v16       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v18       #results:[Landroid/content/ContentProviderResult;
    .restart local v20       #u:Landroid/net/Uri;
    :catch_2
    move-exception v21

    move-object/from16 v15, v16

    .end local v16           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v15       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    goto :goto_1

    .line 5665
    .end local v15           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v16       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_3
    move-exception v21

    move-object/from16 v15, v16

    .end local v16           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v15       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    goto :goto_1
.end method

.method public setAccountKey(J)V
    .locals 0
    .parameter "accountKey"

    .prologue
    .line 4902
    iput-wide p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountKey:J

    .line 4903
    return-void
.end method

.method public setAccountType(I)V
    .locals 0
    .parameter "accountType"

    .prologue
    .line 5003
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    .line 5004
    return-void
.end method

.method public setAutoDownload(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 4733
    iput-boolean p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoDownload:Z

    .line 4734
    return-void
.end method

.method public setAutoRetryTimes(I)V
    .locals 0
    .parameter "retryTimes"

    .prologue
    .line 4881
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    .line 4882
    return-void
.end method

.method public setCalendarSyncLookback(I)Z
    .locals 3
    .parameter "days"

    .prologue
    const/4 v2, 0x4

    .line 4782
    if-eq p1, v2, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_1

    .line 4785
    :cond_0
    const/4 v0, 0x1

    .line 4786
    .local v0, success:Z
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 4792
    :goto_0
    return v0

    .line 4788
    .end local v0           #success:Z
    :cond_1
    iput v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 4789
    const/4 v0, 0x0

    .restart local v0       #success:Z
    goto :goto_0
.end method

.method public setCbaCertificate(Ljava/lang/String;)V
    .locals 0
    .parameter "alias"

    .prologue
    .line 4814
    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    .line 4815
    return-void
.end method

.method public setConflictresolution(I)V
    .locals 0
    .parameter "conflict"

    .prologue
    .line 4663
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    .line 4664
    return-void
.end method

.method public setConversationMode(I)V
    .locals 0
    .parameter "conv_mode"

    .prologue
    .line 4893
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConversationMode:I

    .line 4894
    return-void
.end method

.method public setDefaultAccount(Z)V
    .locals 0
    .parameter "newDefaultState"

    .prologue
    .line 5223
    iput-boolean p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    .line 5224
    return-void
.end method

.method public setDeletePolicy(I)V
    .locals 2
    .parameter "newPolicy"

    .prologue
    .line 5047
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, -0xd

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 5048
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    shl-int/lit8 v1, p1, 0x2

    and-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 5049
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 4535
    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    .line 4536
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "emailAddress"

    .prologue
    .line 4552
    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 4553
    return-void
.end method

.method public setEmailSize(B)V
    .locals 0
    .parameter "emailSize"

    .prologue
    .line 4604
    sput p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    .line 4605
    return-void
.end method

.method public setFlags(I)V
    .locals 0
    .parameter "newFlags"

    .prologue
    .line 4963
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 4964
    return-void
.end method

.method public setForwardWithFiles(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 4725
    iput-boolean p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    .line 4726
    return-void
.end method

.method public setMessageFormat(I)V
    .locals 0
    .parameter "messageFormat"

    .prologue
    .line 4987
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    .line 4988
    return-void
.end method

.method public setRingtone(Ljava/lang/String;)V
    .locals 0
    .parameter "newUri"

    .prologue
    .line 5014
    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    .line 5015
    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 4571
    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    .line 4572
    return-void
.end method

.method public setSenderUri(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "senderUri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5150
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v0, :cond_0

    .line 5151
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 5152
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 5158
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_1

    .line 5159
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setStoreUri(Ljava/lang/String;)V

    .line 5161
    :cond_1
    return-void

    .line 5154
    :cond_2
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    goto :goto_0
.end method

.method public setSevenAccountKey(J)V
    .locals 0
    .parameter "sevenAccountKey"

    .prologue
    .line 4910
    iput-wide p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    .line 4911
    return-void
.end method

.method public setShowImage(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 4749
    iput-boolean p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mShowImage:Z

    .line 4750
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .parameter "signature"

    .prologue
    .line 4579
    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    .line 4580
    return-void
.end method

.method public setSizeLimit(J)V
    .locals 0
    .parameter "sizeLimit"

    .prologue
    .line 4934
    iput-wide p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSizeLimit:J

    .line 4935
    return-void
.end method

.method public setSmimeEncryptAll(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 4833
    iput-boolean p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptAll:Z

    .line 4834
    return-void
.end method

.method public setSmimeEncryptionAlgorithm(I)V
    .locals 0
    .parameter "encryptionAlgorithm"

    .prologue
    .line 4870
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    .line 4871
    return-void
.end method

.method public setSmimeFlags(I)V
    .locals 3
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5695
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptAll:Z

    .line 5696
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAll:Z

    .line 5697
    return-void

    :cond_0
    move v0, v2

    .line 5695
    goto :goto_0

    :cond_1
    move v1, v2

    .line 5696
    goto :goto_1
.end method

.method public setSmimeOwnCertificate(Ljava/lang/String;)V
    .locals 0
    .parameter "alias"

    .prologue
    .line 4803
    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    .line 4804
    return-void
.end method

.method public setSmimeSignAlgorithm(I)V
    .locals 0
    .parameter "signAlgorithm"

    .prologue
    .line 4850
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    .line 4851
    return-void
.end method

.method public setSmimeSignAll(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 4825
    iput-boolean p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAll:Z

    .line 4826
    return-void
.end method

.method public setStoreUri(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "storeUri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5127
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v0, :cond_0

    .line 5128
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 5129
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 5135
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_1

    .line 5136
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setStoreUri(Ljava/lang/String;)V

    .line 5138
    :cond_1
    return-void

    .line 5131
    :cond_2
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    goto :goto_0
.end method

.method public setSyncInterval(I)V
    .locals 0
    .parameter "minutes"

    .prologue
    .line 4716
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    .line 4717
    return-void
.end method

.method public setSyncLookback(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 4771
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    .line 4772
    return-void
.end method

.method public setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V
    .locals 2
    .parameter "syncScheduleData"

    .prologue
    .line 5024
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->setPeakDay(I)V

    .line 5025
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->setStartMinute(I)V

    .line 5026
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->setEndMinute(I)V

    .line 5027
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->setPeakSchedule(I)V

    .line 5028
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->setOffPeakSchedule(I)V

    .line 5029
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->setRoamingSchedule(I)V

    .line 5030
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 5031
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 5032
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 5033
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 5034
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 5035
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 5037
    return-void
.end method

.method public setTextPreviewSize(I)V
    .locals 0
    .parameter "textPreview"

    .prologue
    .line 4674
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTextPreviewSize:I

    .line 4675
    return-void
.end method

.method public setTimeLimit(J)V
    .locals 0
    .parameter "timeLimit"

    .prologue
    .line 4926
    iput-wide p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    .line 4927
    return-void
.end method

.method public setTypeMsg(I)V
    .locals 0
    .parameter "typeMsg"

    .prologue
    .line 4918
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    .line 4919
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 5704
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5705
    const-string v1, "displayName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5706
    const-string v1, "emailAddress"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5707
    const-string v1, "syncKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5708
    const-string v1, "syncLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5709
    const-string v1, "syncInterval"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5710
    const-string v1, "hostAuthKeyRecv"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5711
    const-string v1, "hostAuthKeySend"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5712
    const-string v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5713
    const-string v1, "isDefault"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5714
    const-string v1, "compatibilityUuid"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5715
    const-string v1, "senderName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5716
    const-string v1, "ringtoneUri"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5717
    const-string v1, "protocolVersion"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5718
    const-string v1, "newMessageCount"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5719
    const-string v1, "securityFlags"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5720
    const-string v1, "securitySyncKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5721
    const-string v1, "signature"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5724
    const-string v1, "emailsize"

    sget v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5725
    const-string v1, "conflict"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5726
    const-string v1, "policyKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5727
    const-string v1, "peakDays"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5728
    const-string v1, "peakStartMinute"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5729
    const-string v1, "peakEndMinute"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5730
    const-string v1, "peakSchedule"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5731
    const-string v1, "offPeakSchedule"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5732
    const-string v1, "roamingSchedule"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5735
    const-string v1, "calendarSyncLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5737
    const-string v1, "smimeOwnCertificateAlias"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5739
    const-string v1, "smimeOptionsFlags"

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSmimeFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5742
    const-string v1, "conversationMode"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConversationMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5745
    const-string v1, "textPreview"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTextPreviewSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5748
    const-string v1, "deviceInfoSent"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDeviceInfoSent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5752
    const-string v1, "cbaCertificateAlias"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5755
    const-string v1, "messageFormat"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5756
    const-string v1, "accountType"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5760
    const-string v1, "forwardWithFiles"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5761
    const-string v1, "autoDownload"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoDownload:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5763
    const-string v1, "recentMessages"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRecentMessages:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5764
    const-string v1, "showImage"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mShowImage:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5767
    const-string v1, "autoRetryTimes"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5770
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3a

    .line 5948
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5949
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5950
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5951
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5953
    :cond_0
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5954
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5955
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5956
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 5957
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5958
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5959
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 5960
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5961
    :cond_3
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5962
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/content/Context;Landroid/content/ContentValues;)I
    .locals 9
    .parameter "context"
    .parameter "cv"

    .prologue
    const/4 v5, 0x0

    .line 5476
    const-string v6, "isDefault"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "isDefault"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5478
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5483
    .local v4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .local v0, currentDefaultAccountId:J
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-eqz v6, :cond_0

    iget-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v6, v0, v6

    if-eqz v6, :cond_0

    .line 5486
    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    .line 5489
    .local v3, modifyMe:Lcom/android/emailcommon/provider/EmailContent$Account;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 5496
    .local v2, cv1:Landroid/content/ContentValues;
    const-string v6, "isDefault"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5497
    const-string v6, "emailsize"

    sget v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5498
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5502
    .end local v2           #cv1:Landroid/content/ContentValues;
    .end local v3           #modifyMe:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_0
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5506
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "com.android.email.provider"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5507
    const/4 v5, 0x1

    .line 5515
    .end local v0           #currentDefaultAccountId:J
    .end local v4           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    return v5

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v5

    goto :goto_0

    .line 5510
    .restart local v0       #currentDefaultAccountId:J
    .restart local v4       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v6

    goto :goto_0

    .line 5508
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5798
    iget-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5799
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5800
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5801
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5802
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5803
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5804
    iget-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5805
    iget-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5806
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5807
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 5808
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5809
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5810
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5811
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5812
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5813
    iget-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5814
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5815
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5818
    sget v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5819
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5820
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5821
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5825
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5827
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConversationMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5830
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTextPreviewSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5833
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDeviceInfoSent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5837
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_1

    .line 5838
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 5839
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5844
    :goto_1
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_2

    .line 5845
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 5846
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5851
    :goto_2
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5855
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5856
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5860
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 5861
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoDownload:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 5863
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRecentMessages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5864
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mShowImage:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 5867
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5869
    return-void

    :cond_0
    move v0, v2

    .line 5807
    goto/16 :goto_0

    .line 5841
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 5848
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2

    :cond_3
    move v0, v2

    .line 5860
    goto :goto_3

    :cond_4
    move v0, v2

    .line 5861
    goto :goto_4

    :cond_5
    move v1, v2

    .line 5864
    goto :goto_5
.end method
