.class public Lcom/android/email/activity/setup/AccountSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;,
        Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;,
        Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;,
        Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;,
        Lcom/android/email/activity/setup/AccountSettingsFragment$EmptyCallback;,
        Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;
    }
.end annotation


# static fields
.field public static Category:Landroid/preference/PreferenceScreen;


# instance fields
.field private final CALENDAR_SYNC_WINDOW:I

.field private final EMAIL_SYNC_WINDOW:I

.field private final EMAIL_TRUNC_SIZE:I

.field private final OOO_GET_ERROR:I

.field private final OOO_NO_PROTOCOL_SUPPORT:I

.field private final OOO_NO_STATUS:I

.field private final OOO_PROCESSING:I

.field private final OOO_RESPONSE_PARSE:I

.field private final OOO_SERVER_CONNECT:I

.field private final OOO_STATUS_COMPLETE:I

.field private final OOO_UNKNOWN_ERROR:I

.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mAccountCcBcc:Landroid/preference/ListPreference;

.field private mAccountDefault:Landroid/preference/CheckBoxPreference;

.field private mAccountDefaultPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mAccountDescription:Landroid/preference/EditTextPreference;

.field private mAccountDirty:Z

.field private mAccountEmail:Ljava/lang/String;

.field private mAccountName:Landroid/preference/EditTextPreference;

.field private mAccountNameTextWatcher:Landroid/text/TextWatcher;

.field private mAccountNotify:Landroid/preference/CheckBoxPreference;

.field private mAccountPassword:Landroid/preference/EditTextPreference;

.field private mAccountRingtone:Landroid/preference/RingtonePreference;

.field private mAccountSignature:Landroid/preference/EditTextPreference;

.field private mAccountTextPreview:Landroid/preference/EditTextPreference;

.field private mAccountVibrateWhen:Landroid/preference/ListPreference;

.field private mAddSignature:Landroid/preference/CheckBoxPreference;

.field private mAmountToSynchronize:Landroid/preference/ListPreference;

.field private mAsHandler:Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;

.field private mAutoRetryTimes:Landroid/preference/ListPreference;

.field private mCalendarSyncWindow:Landroid/preference/ListPreference;

.field private mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

.field private mCheckFrequency:Landroid/preference/ListPreference;

.field private mConflictResolution:Landroid/preference/ListPreference;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/email/Controller;

.field private mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/ControllerResultUiThreadWrapper",
            "<",
            "Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;",
            ">;"
        }
    .end annotation
.end field

.field private mConversationMode:Landroid/preference/CheckBoxPreference;

.field private mDefaultAccountId:J

.field private mEmailRetrieveSize:Landroid/preference/ListPreference;

.field private mEmailSize:Landroid/preference/ListPreference;

.field private mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

.field private mForwardWithFiles:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mLoadAccountTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mLoaded:Z

.field private mMessageFormat:Landroid/preference/ListPreference;

.field private mPassword:Ljava/lang/String;

.field private mPostEmptyTrash_0:Landroid/app/AlertDialog;

.field private mPostEmptyTrash_1:Landroid/app/AlertDialog;

.field private mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mProgressDlg:Landroid/app/ProgressDialog;

.field private mRingtone:Landroid/media/Ringtone;

.field private mRingtoneUri:Landroid/net/Uri;

.field private mSaveOnExit:Z

.field private mSevenAccount:Z

.field private mSevenSyncCalendar:Landroid/preference/PreferenceScreen;

.field private mSevenSyncContact:Landroid/preference/PreferenceScreen;

.field private mSevenSyncSchedule:Landroid/preference/PreferenceScreen;

.field private mSevenWhileLowPower:Landroid/preference/ListPreference;

.field private mSevenWhileRoaming:Landroid/preference/ListPreference;

.field private mSncEndPoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

.field private mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

.field private mStarted:Z

.field private mSyncCalendar:Landroid/preference/CheckBoxPreference;

.field private mSyncContacts:Landroid/preference/CheckBoxPreference;

.field private mSyncEmail:Landroid/preference/CheckBoxPreference;

.field private mSyncSMS:Landroid/preference/CheckBoxPreference;

.field private mSyncSchedule:Landroid/preference/Preference;

.field private mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

.field private mSyncTasks:Landroid/preference/CheckBoxPreference;

.field private mSyncWindow:Landroid/preference/ListPreference;

.field policySet:Lcom/android/emailcommon/service/PolicySet;

.field securityPolicy:Lcom/android/email/SecurityPolicy;

.field syncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

.field private zHandler:Lcom/digc/seven/Z7MailHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 219
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    .line 304
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailRetrieveSize:Landroid/preference/ListPreference;

    .line 385
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    .line 395
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->EMAIL_SYNC_WINDOW:I

    .line 397
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->EMAIL_TRUNC_SIZE:I

    .line 399
    const/16 v0, 0x66

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->CALENDAR_SYNC_WINDOW:I

    .line 412
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_STATUS_COMPLETE:I

    .line 414
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_NO_STATUS:I

    .line 416
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_NO_PROTOCOL_SUPPORT:I

    .line 418
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_PROCESSING:I

    .line 420
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_GET_ERROR:I

    .line 422
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_SERVER_CONNECT:I

    .line 424
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_RESPONSE_PARSE:I

    .line 426
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_UNKNOWN_ERROR:I

    .line 443
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAsHandler:Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;

    .line 494
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSncEndPoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    .line 495
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    .line 1112
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 2276
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPassword:Ljava/lang/String;

    .line 2527
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$42;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$42;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountNameTextWatcher:Landroid/text/TextWatcher;

    .line 2571
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$43;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$43;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefaultPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 2608
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$44;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$44;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 3233
    return-void
.end method

.method private IsEAS()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2549
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 2551
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_1

    .line 2563
    :cond_0
    :goto_0
    return v3

    .line 2554
    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v1

    .line 2558
    .local v1, info:Lcom/android/email/mail/Store$StoreInfo;
    if-eqz v1, :cond_0

    .line 2561
    iget-object v2, v1, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 2563
    .local v2, scheme:Ljava/lang/String;
    const-string v3, "eas"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_0:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_1:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAsHandler:Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onOutOfOfficeComplete(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->saveSettings()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/email/activity/setup/AccountSettingsFragment;I)[Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getSyncWindowAllowedEntries(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/email/activity/setup/AccountSettingsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onOutOfOffice()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/email/activity/setup/AccountSettingsFragment;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->convertEmailSizeToInt(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/setup/AccountSettingsFragment;I)[Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getEmailSizeAllowedEntries(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/setup/AccountSettingsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/email/activity/setup/AccountSettingsFragment;I)[Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getCalendarSyncWindowAllowedEntries(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/email/activity/setup/AccountSettingsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/email/activity/setup/AccountSettingsFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->changeSmsSettings(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileRoaming:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->showToastForAllPremiumAccounts()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileLowPower:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onSyncSchedule()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountPassword:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/email/activity/setup/AccountSettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/email/activity/setup/AccountSettingsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->IsEAS()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/digc/seven/Z7MailHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->zHandler:Lcom/digc/seven/Z7MailHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->finishDeleteAccount()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/email/activity/setup/AccountSettingsFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mDefaultAccountId:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSettingsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mStarted:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/AccountSettingsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->loadSettings()V

    return-void
.end method

.method private addSncEmailSizePreference()V
    .locals 3

    .prologue
    .line 2396
    const-string v0, "AccountSettingsFragment"

    const-string v1, " addSncEmailSizePreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    const-string v0, "account_email_size"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    .line 2400
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 2402
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 2404
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2405
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2406
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize()B

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2407
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2408
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$39;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$39;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2418
    return-void
.end method

.method private addSncMessageFormatPreference()V
    .locals 3

    .prologue
    .line 2372
    const-string v0, "AccountSettingsFragment"

    const-string v1, " addSncMessageFormatPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    const-string v0, "account_message_format"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    .line 2374
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2376
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2378
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getMessageFormat()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2379
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2380
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$38;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$38;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2393
    return-void
.end method

.method private addSncSyncSchedulePreference()V
    .locals 2

    .prologue
    .line 2347
    const-string v0, "AccountSettingsFragment"

    const-string v1, " addSncSyncSchedulePreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    const-string v0, "account_sync_schedule"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSchedule:Landroid/preference/Preference;

    .line 2349
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    .line 2350
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSchedule:Landroid/preference/Preference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$37;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$37;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 2357
    return-void
.end method

.method private addSncSyncWindowPreference()V
    .locals 4

    .prologue
    .line 2314
    const-string v0, "AccountSettingsFragment"

    const-string v1, " addSncSyncWindowPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    const-string v0, "email_window_size"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    .line 2318
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 2320
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 2323
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    const v3, 0x7f0801a1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 2324
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2325
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2326
    const-string v0, "AccountSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window window window ...account settings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2330
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2331
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$36;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$36;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2344
    return-void
.end method

.method public static buildArguments(JLjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "accountId"
    .parameter "email"

    .prologue
    .line 582
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 583
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "AccountSettingsFragment.AccountId"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 584
    const-string v1, "AccountSettingsFragment.Email"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    return-object v0
.end method

.method private changeSmsSettings(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 3291
    if-eqz p1, :cond_1

    .line 3292
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit16 v1, v1, 0x800

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 3299
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3300
    const-string v1, "flags"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3301
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3302
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3305
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->changeSmsSettings(J)V

    .line 3308
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 3309
    if-eqz v0, :cond_0

    .line 3310
    if-eqz p1, :cond_2

    .line 3311
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 3316
    :goto_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3317
    const-string v2, "syncInterval"

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3318
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3320
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3353
    :cond_0
    return-void

    .line 3294
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v1, v1, -0x801

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    goto :goto_0

    .line 3313
    :cond_2
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    goto :goto_1
.end method

.method private convertEmailSizeToInt(I)I
    .locals 1
    .parameter "size"

    .prologue
    .line 2662
    mul-int/lit16 p1, p1, 0x400

    .line 2663
    sparse-switch p1, :sswitch_data_0

    .line 2681
    const/16 v0, 0x9

    :goto_0
    return v0

    .line 2665
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2667
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 2669
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 2671
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 2673
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 2675
    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 2677
    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 2679
    :sswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 2663
    nop

    :sswitch_data_0
    .sparse-switch
        0x200 -> :sswitch_0
        0x400 -> :sswitch_1
        0x800 -> :sswitch_2
        0x1400 -> :sswitch_3
        0x2800 -> :sswitch_4
        0x5000 -> :sswitch_5
        0xc800 -> :sswitch_6
        0x19000 -> :sswitch_7
    .end sparse-switch
.end method

.method private finishDeleteAccount()V
    .locals 2

    .prologue
    .line 3284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    .line 3285
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-interface {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;->deleteAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 3286
    return-void
.end method

.method private getCalendarSyncWindowAllowedEntries(I)[Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 2700
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const v2, 0x7f0803bf

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const v3, 0x7f0803c0

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const v3, 0x7f0803c1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const v2, 0x7f0803c2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const/4 v2, 0x4

    const v3, 0x7f0803c3

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 2708
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2710
    if-le p1, v4, :cond_1

    const/16 v3, 0x8

    if-ge p1, v3, :cond_1

    .line 2711
    add-int/lit8 v3, p1, -0x3

    .line 2713
    :goto_0
    if-ge v1, v3, :cond_0

    .line 2714
    aget-object v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2713
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2716
    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    .line 2717
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2719
    :cond_1
    return-object v0
.end method

.method private getCalendarSyncWindowAllowedValues(I)[Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 2724
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "5"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "6"

    aput-object v3, v0, v2

    const-string v2, "7"

    aput-object v2, v0, v4

    const/4 v2, 0x4

    const-string v3, "0"

    aput-object v3, v0, v2

    .line 2728
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2730
    if-le p1, v4, :cond_1

    const/16 v3, 0x8

    if-ge p1, v3, :cond_1

    .line 2731
    add-int/lit8 v3, p1, -0x3

    .line 2733
    :goto_0
    if-ge v1, v3, :cond_0

    .line 2734
    aget-object v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2733
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2736
    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    .line 2737
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2739
    :cond_1
    return-object v0
.end method

.method private getDomain()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3554
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 3555
    if-nez v0, :cond_1

    .line 3556
    const-string v0, "AccountSettingsFragment"

    const-string v1, "FATAL : HostAuth is Null"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3557
    const/4 v0, 0x0

    .line 3570
    :cond_0
    :goto_0
    return-object v0

    .line 3559
    :cond_1
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 3560
    const-string v0, ""

    .line 3561
    if-eqz v1, :cond_0

    .line 3562
    const/16 v2, 0x5c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 3563
    if-ltz v2, :cond_0

    .line 3564
    if-lez v2, :cond_2

    .line 3565
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3567
    :cond_2
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto :goto_0
.end method

.method private getEmailSizeAllowedEntries(I)[Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x9

    const/4 v1, 0x0

    .line 2617
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const v2, 0x7f080332

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const v3, 0x7f080333

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const v3, 0x7f080334

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const v3, 0x7f080335

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const v3, 0x7f080336

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const v3, 0x7f080337

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const v3, 0x7f080338

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const v3, 0x7f080339

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const v3, 0x7f08033a

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const v2, 0x7f08033b

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 2630
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2632
    if-ltz p1, :cond_1

    if-ge p1, v4, :cond_1

    .line 2633
    :goto_0
    if-gt v1, p1, :cond_0

    .line 2634
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2633
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2636
    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    .line 2637
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2639
    :cond_1
    return-object v0
.end method

.method private getEmailSizeAllowedValues(I)[Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x9

    const/4 v1, 0x0

    .line 2644
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "2"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "3"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "4"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "5"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "6"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "7"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "8"

    aput-object v3, v0, v2

    const-string v2, "9"

    aput-object v2, v0, v4

    .line 2648
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2650
    if-ltz p1, :cond_1

    if-ge p1, v4, :cond_1

    .line 2651
    :goto_0
    if-gt v1, p1, :cond_0

    .line 2652
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2651
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2654
    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    .line 2655
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2657
    :cond_1
    return-object v0
.end method

.method private getSyncWindowAllowedEntries(I)[Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x6

    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 3438
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const v2, 0x7f080107

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const/4 v2, 0x1

    const v3, 0x7f080278

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const v2, 0x7f0801a2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x3

    const v3, 0x7f0801a3

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const v3, 0x7f0801a4

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const v3, 0x7f0801a5

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const v2, 0x7f0801a6

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 3448
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3450
    if-lez p1, :cond_1

    if-ge p1, v5, :cond_1

    .line 3452
    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3453
    :goto_0
    add-int/lit8 v3, p1, 0x2

    if-ge v1, v3, :cond_0

    .line 3454
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3453
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3457
    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    .line 3458
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3460
    :cond_1
    return-object v0
.end method

.method private getSyncWindowAllowedValues(I)[Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x6

    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 3465
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "-2"

    aput-object v2, v0, v4

    const/4 v2, 0x1

    const-string v3, "6"

    aput-object v3, v0, v2

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v2, 0x3

    const-string v3, "2"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "3"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "4"

    aput-object v3, v0, v2

    const-string v2, "5"

    aput-object v2, v0, v5

    .line 3469
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3471
    if-lez p1, :cond_1

    if-ge p1, v5, :cond_1

    .line 3473
    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3474
    :goto_0
    add-int/lit8 v3, p1, 0x2

    if-ge v1, v3, :cond_0

    .line 3475
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3474
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3478
    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    .line 3479
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3481
    :cond_1
    return-object v0
.end method

.method public static getTitleFromArgs(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "args"

    .prologue
    .line 589
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "AccountSettingsFragment.Email"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getUserName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3574
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 3575
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3576
    const-string v1, "AccountSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserName - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3577
    aget-object v0, v0, v4

    return-object v0
.end method

.method private loadSettings()V
    .locals 8

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    .line 1211
    const-string v0, "snc"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    move v4, v0

    .line 1212
    :goto_1
    if-eqz v4, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getSncEndpoint(Landroid/content/Context;J)Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSncEndPoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    .line 1214
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getSncUserEndpoint(Landroid/content/Context;J)Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    .line 1218
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    .line 1220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    .line 1222
    const-string v0, "account_settings"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 1223
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0802ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 1229
    const-string v1, "account_description"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    .line 1230
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1231
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1232
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$3;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$3;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1262
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$4;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$4;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1271
    const-string v1, "account_name"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    .line 1272
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1273
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1274
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$5;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$5;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1301
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$6;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$6;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1310
    const-string v1, "eas"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    if-eqz v1, :cond_2

    .line 1311
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1313
    :cond_2
    const-string v1, "add_signature"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAddSignature:Landroid/preference/CheckBoxPreference;

    .line 1316
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAddSignature:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAddSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "add_signature"

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1323
    :goto_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAddSignature:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$7;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$7;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1330
    const-string v1, "account_signature"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    .line 1332
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1333
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 1344
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    const v2, 0x7f0801d7

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 1345
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1359
    :goto_3
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$8;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$8;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1383
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$9;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$9;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1431
    const-string v1, "account_sync_period"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    .line 1432
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1433
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1434
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$10;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$10;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1446
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    if-nez v1, :cond_3

    .line 1447
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1451
    :cond_3
    const-string v0, "account_settings_cc_bcc"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    .line 1456
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "account_settings_cc_bcc"

    const-string v3, "none"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1463
    :goto_4
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    .line 1464
    :goto_5
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    .line 1466
    :goto_6
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    if-eqz v0, :cond_21

    const v0, 0x7f080282

    :goto_7
    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 1470
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$11;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$11;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1486
    const-string v0, "forward_with_files"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mForwardWithFiles:Landroid/preference/CheckBoxPreference;

    .line 1487
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mForwardWithFiles:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getForwardWithFiles()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1488
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mForwardWithFiles:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1526
    const-string v0, "account_default"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    .line 1527
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mDefaultAccountId:J

    cmp-long v0, v2, v5

    if-nez v0, :cond_23

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1528
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefaultPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1530
    const-string v0, "account_data_usage"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 1532
    const-string v1, "account_check_frequency"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    .line 1535
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v5

    .line 1540
    const-string v1, "eas"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    if-nez v1, :cond_4

    if-eqz v4, :cond_24

    .line 1541
    :cond_4
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1609
    :cond_5
    :goto_9
    const-string v1, "account_setting_main"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    sput-object v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->Category:Landroid/preference/PreferenceScreen;

    .line 1610
    const-string v1, "account_exchange_sync_settings"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 1612
    if-eqz v4, :cond_26

    .line 1613
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f08042b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 1625
    :cond_6
    :goto_a
    const/4 v2, 0x6

    .line 1627
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v3, v3, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    if-eqz v3, :cond_7

    .line 1628
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v2, v2, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    .line 1630
    :cond_7
    if-nez v2, :cond_40

    .line 1631
    const/4 v2, 0x7

    move v3, v2

    .line 1634
    :goto_b
    const-string v2, "email_window_size"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    .line 1635
    if-eqz v5, :cond_8

    iget v2, v5, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_9

    :cond_8
    const-string v2, "eas"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1637
    :cond_9
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    const v5, 0x7f0801a1

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 1638
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getSyncWindowAllowedEntries(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1639
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getSyncWindowAllowedValues(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1640
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1641
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1643
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$13;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$13;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1655
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$14;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$14;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1675
    :cond_a
    const-string v2, "eas"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1677
    const-string v2, "account_empty_trash"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/EmptyTrashDialog;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    .line 1678
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v5, v6}, Lcom/android/email/activity/setup/EmptyTrashDialog;->setAccountId(J)V

    .line 1679
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/EmptyTrashDialog;->setController(Lcom/android/email/Controller;)V

    .line 1680
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_0:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/EmptyTrashDialog;->setPositiveResultDialog(Landroid/app/Dialog;)V

    .line 1682
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v5, 0x4028

    cmpg-double v2, v2, v5

    if-gez v2, :cond_b

    .line 1683
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1687
    :cond_b
    const-string v2, "account_sync_schedule"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$15;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$15;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1707
    const-string v2, "out_of_office"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$16;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$16;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1717
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v5, 0x4028

    cmpg-double v2, v2, v5

    if-gez v2, :cond_c

    .line 1718
    const-string v2, "out_of_office"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1721
    :cond_c
    const/4 v2, 0x0

    .line 1723
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v3, :cond_d

    .line 1724
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v3, v2, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    .line 1725
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v2, v2, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    .line 1727
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v5, v5, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    .line 1728
    if-eqz v5, :cond_27

    if-lez v2, :cond_27

    .line 1736
    :cond_d
    :goto_c
    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->convertEmailSizeToInt(I)I

    move-result v3

    .line 1738
    const-string v2, "account_email_size"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    .line 1739
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getEmailSizeAllowedEntries(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1740
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getEmailSizeAllowedValues(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1741
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize()B

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1742
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1743
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$17;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$17;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1759
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$18;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$18;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1770
    const/4 v2, 0x0

    .line 1771
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v3, :cond_3f

    .line 1772
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v2, v2, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    move v3, v2

    .line 1774
    :goto_d
    const-string v2, "calendar_window_size"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    .line 1776
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    const v5, 0x7f0803be

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 1777
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    const v5, 0x7f0803be

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 1779
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getCalendarSyncWindowAllowedEntries(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1781
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getCalendarSyncWindowAllowedValues(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1783
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getCalendarSyncLookback()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1784
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1786
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOrder(I)V

    .line 1788
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$19;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$19;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1803
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$20;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$20;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1814
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1818
    const-string v2, "security_options"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$21;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$21;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1837
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v5, 0x402c

    cmpg-double v2, v2, v5

    if-gez v2, :cond_28

    .line 1838
    const-string v2, "account_textpreview"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1868
    :goto_e
    const-string v2, "eas"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1869
    const-string v2, "account_conflict"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    .line 1870
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getConflictresolution()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1871
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1872
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$23;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$23;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1879
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$24;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$24;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1894
    :cond_e
    if-eqz v4, :cond_29

    .line 1895
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->addSncSyncWindowPreference()V

    .line 1896
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->addSncSyncSchedulePreference()V

    .line 1897
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->addSncMessageFormatPreference()V

    .line 1898
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->addSncEmailSizePreference()V

    .line 1900
    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->resetEmptyTrashPreference(Landroid/preference/PreferenceCategory;)V

    .line 1901
    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->resetOutOfOfficePreference(Landroid/preference/PreferenceCategory;)V

    .line 1902
    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->resetSecurityOptionsPreference(Landroid/preference/PreferenceCategory;)V

    .line 1903
    const-string v2, "calendar_window_size"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1904
    const-string v2, "account_textpreview"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1905
    const-string v2, "account_conflict"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1917
    :cond_f
    :goto_f
    const-string v1, "account_notify"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    .line 1918
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    :goto_10
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1919
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1921
    const-string v1, "account_ringtone_select"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/RingtonePreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    .line 1923
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getRingtone()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 1924
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1933
    :cond_10
    :goto_11
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$25;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$25;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/RingtonePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1941
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v1}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1942
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "account_ringtone_select"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getRingtone()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1945
    const-string v1, "account_settings_vibrate_when"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    .line 1946
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 1947
    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1948
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2c

    const/4 v1, 0x1

    .line 1949
    :goto_12
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    .line 1950
    :goto_13
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    if-eqz v1, :cond_2e

    const-string v3, "always"

    :goto_14
    invoke-virtual {v5, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1953
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    if-eqz v1, :cond_30

    const v1, 0x7f08013f

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_15
    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1957
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$26;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$26;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1973
    :goto_16
    const-string v1, "account_servers"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 1975
    const-string v2, "incoming"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1977
    const-string v3, "eas"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1978
    const v3, 0x7f080197

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 1983
    :goto_17
    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$27;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$27;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1995
    if-eqz v4, :cond_11

    .line 1996
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2000
    :cond_11
    const-string v2, "outgoing"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 2001
    const/4 v2, 0x1

    .line 2003
    :try_start_2
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v5

    .line 2004
    if-eqz v5, :cond_12

    .line 2005
    invoke-virtual {v5}, Lcom/android/email/mail/Sender;->getSettingActivityClass()Ljava/lang/Class;
    :try_end_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 2006
    if-eqz v2, :cond_34

    const/4 v2, 0x1

    .line 2012
    :cond_12
    :goto_18
    if-eqz v2, :cond_35

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    if-nez v2, :cond_35

    if-nez v4, :cond_35

    .line 2013
    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$28;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$28;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 2024
    :goto_19
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_13

    .line 2025
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsFragment;->Category:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2028
    :cond_13
    const-string v0, "account_sync_contacts"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    .line 2029
    const-string v0, "account_sync_calendar"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    .line 2030
    const-string v0, "account_sync_email"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    .line 2033
    const-string v0, "account_conversation_mode"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConversationMode:Landroid/preference/CheckBoxPreference;

    .line 2034
    const-string v0, "account_sms_sync"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    .line 2035
    const-string v0, "account_sync_tasks"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncTasks:Landroid/preference/CheckBoxPreference;

    .line 2038
    const-string v0, "eas"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2039
    new-instance v0, Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v3, "com.android.exchange"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    const-string v3, "com.android.contacts"

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2043
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2047
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    const-string v3, "com.android.calendar"

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2049
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2051
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    const-string v3, "com.android.email.provider"

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2053
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2057
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncTasks:Landroid/preference/CheckBoxPreference;

    const-string v3, "tasks"

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2058
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncTasks:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2061
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x402c

    cmpg-double v0, v2, v4

    if-gez v0, :cond_14

    .line 2069
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2071
    :cond_14
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x402c

    cmpg-double v0, v2, v4

    if-gez v0, :cond_15

    .line 2072
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConversationMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2076
    :cond_15
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4028

    cmpg-double v0, v2, v4

    if-gez v0, :cond_36

    .line 2077
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncTasks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2131
    :cond_16
    :goto_1a
    const-string v0, "seven_sync_contacts"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncContact:Landroid/preference/PreferenceScreen;

    .line 2132
    const-string v0, "seven_sync_calendar"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncCalendar:Landroid/preference/PreferenceScreen;

    .line 2134
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    if-eqz v0, :cond_3e

    .line 2135
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    long-to-int v0, v2

    invoke-static {v0}, Lcom/seven/Z7/shared/ANSharedCommon;->getAccountName(I)Ljava/lang/String;

    move-result-object v0

    .line 2138
    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$30;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$30;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    .line 2150
    const-string v3, "yahoo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 2151
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncContact:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 2152
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncCalendar:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 2176
    :goto_1b
    const-string v0, "seven_push_service_common_settings"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 2178
    const-string v1, "seven_sync_schedule"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncSchedule:Landroid/preference/PreferenceScreen;

    .line 2179
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncSchedule:Landroid/preference/PreferenceScreen;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$31;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$31;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 2198
    const-string v1, "seven_while_roaming"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileRoaming:Landroid/preference/ListPreference;

    .line 2199
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileRoaming:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mWhileroaming:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2200
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileRoaming:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2201
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileRoaming:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$32;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$32;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2213
    const-string v1, "seven_while_power_low"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileLowPower:Landroid/preference/ListPreference;

    .line 2214
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileLowPower:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mAttachmentEnabled:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2215
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileLowPower:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileLowPower:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2216
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileLowPower:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$33;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$33;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2228
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    if-nez v1, :cond_17

    .line 2229
    sget-object v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->Category:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2233
    :cond_17
    sget-boolean v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 2234
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Category:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2250
    :cond_18
    const-string v0, "eas"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2251
    const-string v0, "account_auto_retry_times"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    .line 2252
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAutoRetryTimes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2253
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2254
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$34;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$34;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 2259
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$35;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$35;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2273
    :cond_19
    return-void

    .line 1209
    :cond_1a
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1211
    :cond_1b
    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_1

    .line 1318
    :catch_0
    move-exception v1

    .line 1319
    const-string v2, "AccountSettingsFragment"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAddSignature:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    :goto_1c
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1c

    .line 1348
    :cond_1d
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1e

    .line 1349
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    const v2, 0x7f080139

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto/16 :goto_3

    .line 1352
    :cond_1e
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1353
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1458
    :catch_1
    move-exception v0

    .line 1459
    const-string v1, "AccountSettingsFragment"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    const-string v0, "none"

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1463
    :cond_1f
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 1464
    :cond_20
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 1466
    :cond_21
    if-eqz v1, :cond_22

    const v0, 0x7f080283

    goto/16 :goto_7

    :cond_22
    const v0, 0x7f080281

    goto/16 :goto_7

    .line 1527
    :cond_23
    const/4 v0, 0x0

    goto/16 :goto_8

    .line 1547
    :cond_24
    if-eqz v5, :cond_5

    .line 1548
    iget-boolean v1, v5, Lcom/android/email/mail/Store$StoreInfo;->mPushSupported:Z

    if-eqz v1, :cond_25

    .line 1549
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    const v2, 0x7f0a0007

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1551
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 1555
    :cond_25
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncInterval()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1556
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1557
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$12;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$12;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_9

    .line 1616
    :cond_26
    const-string v2, "eas"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1617
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsFragment;->Category:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_a

    :cond_27
    move v2, v3

    .line 1733
    goto/16 :goto_c

    .line 1840
    :cond_28
    const-string v2, "account_textpreview"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    .line 1841
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 1842
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTextPreviewSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1843
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTextPreviewSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1844
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$22;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$22;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_e

    .line 1908
    :cond_29
    const-string v2, "account_message_format"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 1909
    if-eqz v2, :cond_f

    .line 1910
    const-string v2, "account_message_format"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_f

    .line 1918
    :cond_2a
    const/4 v1, 0x0

    goto/16 :goto_10

    .line 1926
    :cond_2b
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getRingtone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1927
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 1929
    if-eqz v1, :cond_10

    .line 1930
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 1948
    :cond_2c
    const/4 v1, 0x0

    goto/16 :goto_12

    .line 1949
    :cond_2d
    const/4 v2, 0x0

    goto/16 :goto_13

    .line 1950
    :cond_2e
    if-eqz v2, :cond_2f

    const-string v3, "silent"

    goto/16 :goto_14

    :cond_2f
    const-string v3, "never"

    goto/16 :goto_14

    .line 1953
    :cond_30
    if-eqz v2, :cond_31

    const v1, 0x7f080140

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_15

    :cond_31
    const v1, 0x7f080141

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_15

    .line 1969
    :cond_32
    const-string v1, "account_notifications"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 1970
    const-string v2, "account_settings_vibrate_when"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_16

    .line 1980
    :cond_33
    const v3, 0x7f080135

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_17

    .line 2006
    :cond_34
    const/4 v2, 0x0

    goto/16 :goto_18

    .line 2021
    :cond_35
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_19

    .line 2083
    :cond_36
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConversationMode:Landroid/preference/CheckBoxPreference;

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getConversationMode()I

    move-result v3

    if-ne v0, v3, :cond_38

    const/4 v0, 0x1

    :goto_1d
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2084
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConversationMode:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2085
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConversationMode:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2087
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    .line 2088
    :goto_1e
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_16

    .line 2089
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eq v2, v0, :cond_37

    .line 2090
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2092
    :cond_37
    if-eqz v0, :cond_3a

    .line 2093
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f080507

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 2097
    :goto_1f
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$29;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$29;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_1a

    .line 2083
    :cond_38
    const/4 v0, 0x0

    goto :goto_1d

    .line 2087
    :cond_39
    const/4 v0, 0x0

    goto :goto_1e

    .line 2095
    :cond_3a
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f080508

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1f

    .line 2116
    :cond_3b
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2117
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2118
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2119
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncTasks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2120
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConversationMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1a

    .line 2153
    :cond_3c
    const-string v3, "msn"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2154
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncContact:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 2155
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncCalendar:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1b

    .line 2157
    :cond_3d
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncContact:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2158
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncCalendar:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1b

    .line 2161
    :cond_3e
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncContact:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2162
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncCalendar:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1b

    .line 2008
    :catch_2
    move-exception v5

    goto/16 :goto_18

    :cond_3f
    move v3, v2

    goto/16 :goto_d

    :cond_40
    move v3, v2

    goto/16 :goto_b
.end method

.method private onOutOfOffice()V
    .locals 3

    .prologue
    .line 2747
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->getOutOfOffice(J)V

    .line 2748
    return-void
.end method

.method private onOutOfOfficeComplete(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    .line 2751
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2752
    const-string v0, "ooo_data"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2753
    const-string v0, "account_id"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2754
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 2755
    const-class v1, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080340

    const/4 v4, 0x0

    const/16 v6, 0x3ea

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2758
    return-void
.end method

.method private onPreferenceChanged()V
    .locals 1

    .prologue
    .line 2767
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    .line 2768
    return-void
.end method

.method private onSyncSchedule()V
    .locals 7

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0805ad

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2361
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    .line 2362
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2363
    const-string v0, "com.android.email.SyncScheduleExtra"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2364
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 2365
    const-class v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f08043d

    const/4 v4, 0x0

    const/16 v6, 0x3ed

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2369
    return-void
.end method

.method private resetEmptyTrashPreference(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .parameter

    .prologue
    .line 2421
    const-string v0, "AccountSettingsFragment"

    const-string v1, "resetEmptyTrashPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    const-string v0, "account_empty_trash"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/EmptyTrashDialog;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    .line 2423
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2424
    return-void
.end method

.method private resetOutOfOfficePreference(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .parameter

    .prologue
    .line 2427
    const-string v0, "AccountSettingsFragment"

    const-string v1, "resetOutOfOfficePreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    const-string v0, "out_of_office"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2429
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2430
    return-void
.end method

.method private resetSecurityOptionsPreference(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .parameter

    .prologue
    .line 2433
    const-string v0, "AccountSettingsFragment"

    const-string v1, "resetSecurityOptionsPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    const-string v0, "security_options"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2435
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2436
    return-void
.end method

.method private saveSettings()V
    .locals 13

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2781
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v0

    and-int/lit16 v1, v0, -0x2144

    .line 2790
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 2794
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 2797
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 2799
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAddSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x2000

    :goto_0
    or-int/2addr v1, v0

    .line 2801
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    .line 2802
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v6

    :goto_1
    or-int/2addr v0, v1

    .line 2806
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_0

    const-string v1, "eas"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2807
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2808
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 2814
    :cond_0
    const-string v1, "cc"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2815
    or-int/lit16 v0, v0, 0x200

    .line 2816
    and-int/lit16 v0, v0, -0x401

    .line 2824
    :goto_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setFlags(I)V

    .line 2828
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mForwardWithFiles:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setForwardWithFiles(Z)V

    .line 2834
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    if-eqz v1, :cond_2

    .line 2837
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    .line 2838
    invoke-static {v1}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parse(B)Lcom/android/emailcommon/EasRefs$EmailDataSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->toEas12Value()I

    move-result v5

    .line 2842
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v2, :cond_24

    .line 2843
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v4, v2, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    .line 2844
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v3, v2, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    .line 2845
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v2, v2, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    move v12, v2

    move v2, v3

    move v3, v4

    move v4, v12

    .line 2847
    :goto_3
    if-eqz v4, :cond_16

    if-lez v2, :cond_16

    .line 2853
    :goto_4
    if-lez v2, :cond_17

    .line 2854
    mul-int/lit16 v2, v2, 0x400

    .line 2859
    :goto_5
    if-ge v2, v5, :cond_1

    .line 2860
    const-string v3, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exchange IT Policy has restricted SyncSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    if-lez v1, :cond_1

    .line 2863
    invoke-static {v2}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parseToByte(I)B

    move-result v1

    .line 2865
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailSize(B)V

    .line 2867
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    if-eqz v1, :cond_3

    .line 2869
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2870
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 2871
    const-string v1, "AccountSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncLookback old value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SyncLookback new value :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2876
    const-string v1, "AccountSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncLookback is changed for account - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2877
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 2878
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->resetCheckSyncLookbackForAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 2888
    :cond_3
    :goto_6
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    if-eqz v1, :cond_4

    .line 2889
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setMessageFormat(I)V

    .line 2892
    :cond_4
    const-string v1, "always"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2893
    or-int/lit8 v0, v0, 0x2

    .line 2897
    :cond_5
    :goto_7
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v1}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2899
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v3, "account_ringtone_select"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setRingtone(Ljava/lang/String;)V

    .line 2900
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setFlags(I)V

    .line 2912
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_6

    const-string v0, "eas"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2913
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x402c

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_6

    .line 2914
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setTextPreviewSize(I)V

    .line 2918
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConversationMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v6

    :goto_8
    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setConversationMode(I)V

    .line 2924
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_7

    const-string v0, "eas"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2925
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2927
    const-string v1, "com.android.contacts"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 2932
    const-string v1, "com.android.calendar"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 2934
    const-string v1, "com.android.email.provider"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 2937
    const-string v1, "tasks"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncTasks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 2946
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreUnifiedAccount(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2947
    const-string v0, "AccountSettingsFragment"

    const-string v1, "Unified account is already created"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2948
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->updateExchangeProfile()V

    .line 2955
    :goto_9
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    if-eqz v0, :cond_7

    .line 2956
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2957
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setAutoRetryTimes(I)V

    .line 2961
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    if-eqz v0, :cond_9

    .line 2962
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2964
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v0, :cond_23

    .line 2965
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    .line 2966
    :goto_a
    if-lez v0, :cond_1d

    .line 2967
    if-eqz v1, :cond_8

    if-ge v0, v1, :cond_1c

    .line 2968
    :cond_8
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    .line 2985
    :cond_9
    :goto_b
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_b

    .line 2986
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 2991
    const-string v3, "account_name=? AND account_type=?"

    .line 2994
    new-array v4, v11, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    aput-object v0, v4, v7

    const-string v0, "com.android.exchange"

    aput-object v0, v4, v6

    .line 3002
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "_id"

    aput-object v9, v2, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 3006
    if-eqz v1, :cond_a

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3008
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3010
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3012
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3016
    const-string v3, "calendar_displayName"

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3022
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3027
    :cond_a
    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3028
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3035
    :cond_b
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    if-eqz v0, :cond_c

    .line 3036
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3037
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setConflictresolution(I)V

    .line 3040
    :cond_c
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    if-eqz v0, :cond_11

    .line 3041
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->zHandler:Lcom/digc/seven/Z7MailHandler;

    .line 3042
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3044
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3045
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3046
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileLowPower:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3048
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    int-to-long v8, v0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_d

    .line 3049
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    int-to-long v8, v0

    iput-wide v8, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    .line 3050
    const-string v4, "pref_truc_time"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3053
    :cond_d
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mWhileroaming:I

    if-eq v0, v2, :cond_e

    .line 3054
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mWhileroaming:I

    .line 3055
    const-string v4, "checkbox_quiet_time_roaming"

    if-ne v2, v6, :cond_1f

    move v0, v6

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3058
    :cond_e
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAttachmentEnabled:I

    if-eq v0, v3, :cond_f

    .line 3059
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAttachmentEnabled:I

    .line 3060
    const-string v2, "checkbox_quiet_time_low_power"

    if-ne v3, v6, :cond_20

    move v0, v6

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3063
    :cond_f
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 3064
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$45;

    invoke-direct {v2, p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$45;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Ljava/util/HashMap;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3081
    :cond_10
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSyncSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 3092
    :cond_11
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getAccountContentValues(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)Landroid/content/ContentValues;

    move-result-object v0

    .line 3093
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 3096
    const-string v1, "accountKey=? and type=?"

    .line 3098
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accountKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWhere(Landroid/content/Context;Ljava/lang/String;)[Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 3099
    if-eqz v2, :cond_21

    array-length v0, v2

    if-lez v0, :cond_21

    move v0, v7

    .line 3100
    :goto_e
    array-length v3, v2

    if-ge v0, v3, :cond_21

    .line 3101
    aget-object v3, v2, v0

    iget v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 3102
    aget-object v4, v2, v0

    iget v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    sparse-switch v4, :sswitch_data_0

    .line 3100
    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_12
    move v0, v7

    .line 2799
    goto/16 :goto_0

    :cond_13
    move v0, v7

    .line 2802
    goto/16 :goto_1

    .line 2817
    :cond_14
    const-string v1, "bcc"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2818
    or-int/lit16 v0, v0, 0x400

    .line 2819
    and-int/lit16 v0, v0, -0x201

    goto/16 :goto_2

    .line 2821
    :cond_15
    and-int/lit16 v0, v0, -0x401

    .line 2822
    and-int/lit16 v0, v0, -0x201

    goto/16 :goto_2

    :cond_16
    move v2, v3

    .line 2852
    goto/16 :goto_4

    .line 2857
    :cond_17
    const v2, 0x7fffffff

    goto/16 :goto_5

    .line 2881
    :cond_18
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    goto/16 :goto_6

    .line 2894
    :cond_19
    const-string v1, "silent"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2895
    or-int/lit8 v0, v0, 0x40

    goto/16 :goto_7

    :cond_1a
    move v0, v7

    .line 2918
    goto/16 :goto_8

    .line 2950
    :cond_1b
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v1, "SNC_PROFILE_TOBE_BACKEDUP"

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    goto/16 :goto_9

    .line 2970
    :cond_1c
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    goto/16 :goto_b

    .line 2976
    :cond_1d
    :try_start_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_b

    .line 2978
    :catch_0
    move-exception v0

    .line 2979
    const-string v1, "exception"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 3027
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_10
    if-eqz v1, :cond_1e

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 3028
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3027
    :cond_1e
    throw v0

    :cond_1f
    move v0, v7

    .line 3055
    goto/16 :goto_c

    :cond_20
    move v0, v7

    .line 3060
    goto/16 :goto_d

    .line 3108
    :sswitch_0
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 3109
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 3110
    const-string v8, "syncInterval"

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncInterval()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3111
    const-string v8, "peakSyncSchedule"

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3112
    const-string v8, "offpeakSyncSchedule"

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3113
    const-string v8, "syncLookback"

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3114
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    new-array v10, v11, [Ljava/lang/String;

    aput-object v4, v10, v7

    aput-object v3, v10, v6

    invoke-virtual {v8, v9, v5, v1, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_f

    .line 3123
    :cond_21
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Email;->setServicesEnabledAsync(Landroid/content/Context;)V

    .line 3127
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_22

    .line 3128
    new-array v3, v6, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    .line 3132
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v4, 0x5

    move v5, v7

    move v6, v7

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    .line 3137
    :cond_22
    return-void

    .line 3027
    :catchall_1
    move-exception v0

    goto/16 :goto_10

    :cond_23
    move v0, v7

    goto/16 :goto_a

    :cond_24
    move v4, v6

    move v2, v7

    move v3, v7

    goto/16 :goto_3

    .line 3102
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_0
        0x41 -> :sswitch_0
        0x42 -> :sswitch_0
        0x45 -> :sswitch_0
    .end sparse-switch
.end method

.method private showToastForAllPremiumAccounts()V
    .locals 3

    .prologue
    .line 3432
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f08045e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3434
    return-void
.end method

.method private updateExchangeProfile()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3490
    const-string v0, "AccountSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backing up ExchangeProfile for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3496
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-nez v0, :cond_1

    .line 3497
    const-string v0, "AccountSettingsFragment"

    const-string v1, "Cretaing New Profile to Back up"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3498
    new-instance v0, Lcom/android/email/syncnconnect/utils/SncProfile;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;-><init>()V

    .line 3503
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v1, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v4

    .line 3504
    if-eqz v4, :cond_4

    .line 3505
    iget-object v1, v4, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeServer(Ljava/lang/String;)V

    .line 3506
    iget v1, v4, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    .line 3507
    :goto_1
    iget v4, v4, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    .line 3508
    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeSecureFlag(Z)V

    .line 3509
    invoke-virtual {v0, v2}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeVerifyCertFlag(Z)V

    .line 3514
    :goto_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeUser(Ljava/lang/String;)V

    .line 3515
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeEmail(Ljava/lang/String;)V

    .line 3516
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeDomain(Ljava/lang/String;)V

    .line 3517
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setFirstName(Ljava/lang/String;)V

    .line 3519
    new-instance v1, Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v3, "com.android.exchange"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3524
    const-string v2, "com.android.calendar"

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    .line 3526
    invoke-virtual {v0, v2}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeCalSyncFlag(Z)V

    .line 3528
    const-string v2, "com.android.contacts"

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    .line 3530
    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeABSyncFlag(Z)V

    .line 3536
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v1

    invoke-static {v1}, Lcom/android/email/adapter/SncAdapter;->parseSyncLookback(I)I

    move-result v1

    .line 3537
    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeDaysToSync(I)V

    .line 3538
    const-string v1, "html"

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeMessageFormat(Ljava/lang/String;)V

    .line 3540
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setSncSyncNotificationStartTime(I)V

    .line 3542
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setSncSyncNotificationEndTime(I)V

    .line 3544
    const/4 v1, 0x5

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    .line 3546
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/email/Controller;->updateUserProfile(ILcom/android/email/syncnconnect/utils/SncProfile;)V

    .line 3547
    sget-object v1, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-eqz v1, :cond_0

    .line 3548
    const-string v1, "AccountSettingsFragment"

    const-string v2, "Exisiting Profile updated"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3549
    sput-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    .line 3551
    :cond_0
    return-void

    .line 3500
    :cond_1
    const-string v0, "AccountSettingsFragment"

    const-string v1, "Updating Exisiting Profile to Back up"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3501
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 3506
    goto/16 :goto_1

    :cond_3
    move v2, v3

    .line 3507
    goto/16 :goto_2

    .line 3511
    :cond_4
    const-string v1, "AccountSettingsFragment"

    const-string v2, "FATAL : HostAuth is Null"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 674
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 675
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 3142
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 3145
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v0, :cond_1

    .line 3228
    :cond_0
    :goto_0
    return-void

    .line 3148
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 3150
    :sswitch_0
    if-ne p2, v2, :cond_2

    .line 3151
    if-eqz p3, :cond_2

    .line 3152
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v1, "SmimeOwnCertificateAlias"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSmimeOwnCertificate(Ljava/lang/String;)V

    .line 3154
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v1, "SmimeEncryptAll"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSmimeEncryptAll(Z)V

    .line 3156
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v1, "SmimeSignAll"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSmimeSignAll(Z)V

    .line 3158
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v1, "SmimeSignAlgorithm"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSmimeSignAlgorithm(I)V

    .line 3160
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v1, "SmimeEncryptionAlgorithm"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSmimeEncryptionAlgorithm(I)V

    .line 3164
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_0

    .line 3167
    :sswitch_1
    if-ne p2, v2, :cond_3

    .line 3168
    const-string v0, "com.android.email.SyncScheduleExtra"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->syncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    .line 3169
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->syncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    .line 3170
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged()V

    .line 3172
    :cond_3
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_0

    .line 3177
    :sswitch_2
    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    .line 3178
    invoke-virtual {p0, p3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->saveSyncScheduleData(Landroid/content/Intent;)V

    .line 3179
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged()V

    goto :goto_0

    .line 3184
    :sswitch_3
    if-ne p2, v2, :cond_4

    if-eqz p3, :cond_4

    .line 3186
    const-string v0, "FILE_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 3188
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    .line 3190
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_4

    .line 3191
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    .line 3192
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3196
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account_ringtone_select"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3198
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setRingtone(Ljava/lang/String;)V

    .line 3199
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3200
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged()V

    .line 3203
    :cond_4
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto/16 :goto_0

    .line 3207
    :sswitch_4
    if-ne p2, v2, :cond_5

    .line 3208
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    .line 3210
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    .line 3211
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3213
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_6

    .line 3214
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account_ringtone_select"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3215
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->setRingtone(Ljava/lang/String;)V

    .line 3216
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3223
    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged()V

    .line 3225
    :cond_5
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto/16 :goto_0

    .line 3218
    :cond_6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account_ringtone_select"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3220
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setRingtone(Ljava/lang/String;)V

    .line 3221
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3148
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3eb -> :sswitch_1
        0x3ed -> :sswitch_2
        0xbda -> :sswitch_3
        0xbdb -> :sswitch_4
    .end sparse-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 598
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 600
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    .line 603
    instance-of v0, p1, Lcom/android/email/activity/setup/AccountSettingsXL;

    if-eqz v0, :cond_0

    .line 604
    check-cast p1, Lcom/android/email/activity/setup/AccountSettingsXL;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onAttach(Landroid/app/Fragment;)V

    .line 606
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f0801ed

    const/4 v8, 0x1

    .line 619
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 623
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    .line 624
    new-instance v4, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/email/activity/setup/AccountSettingsFragment$1;)V

    invoke-direct {v4, v5, v6}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    .line 627
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_0:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    .line 628
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 629
    .local v3, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0801f1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 632
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_0:Landroid/app/AlertDialog;

    .line 635
    .end local v3           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_1:Landroid/app/AlertDialog;

    if-nez v4, :cond_1

    .line 636
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 637
    .restart local v3       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080042

    new-instance v6, Lcom/android/email/activity/setup/AccountSettingsFragment$1;

    invoke-direct {v6, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 643
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_1:Landroid/app/AlertDialog;

    .line 649
    .end local v3           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    const v4, 0x7f060003

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->addPreferencesFromResource(I)V

    .line 653
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 654
    .local v2, b:Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 655
    const-string v4, "AccountSettingsFragment.AccountId"

    const-wide/16 v5, -0x1

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 656
    .local v0, accountId:J
    const-string v4, "AccountSettingsFragment.Email"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountEmail:Ljava/lang/String;

    .line 657
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    if-nez v4, :cond_2

    .line 658
    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->startLoadingAccount(J)V

    .line 662
    .end local v0           #accountId:J
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    .line 665
    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/AccountSettingsFragment;->setHasOptionsMenu(Z)V

    .line 666
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 3583
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 3585
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 767
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 769
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 770
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    .line 771
    return-void
.end method

.method public onModifyUserAccount(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 2503
    const-string v0, "AccountSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModifyUserAccount - mAccountId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " password "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    const-string v0, "AccountSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmailSync :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    const-string v0, "AccountSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isContactSync :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v4

    .line 2507
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 2508
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSncEndPoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    if-nez v0, :cond_0

    .line 2509
    const-string v0, "AccountSettingsFragment"

    const-string v1, "FATAL - mSncEndPoint is null from Snc Module"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    :goto_0
    return-void

    .line 2512
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSncEndPoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2513
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 2514
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSncEndPoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/syncnconnect/utils/SncService;

    .line 2515
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2517
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2518
    :cond_2
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2521
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2524
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller;->modifyUserAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 738
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 739
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    if-eqz v0, :cond_0

    .line 740
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->saveSettings()V

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 743
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    .line 3591
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 3593
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    .line 3595
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3596
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3595
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3598
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 705
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 707
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    if-eqz v1, :cond_2

    .line 712
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 714
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 718
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 719
    .local v0, refreshedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v1, :cond_1

    .line 721
    :cond_0
    iput-boolean v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    .line 722
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;->abandonEdit()V

    .line 730
    .end local v0           #refreshedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :goto_0
    return-void

    .line 725
    .restart local v0       #refreshedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 726
    iput-boolean v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    .line 729
    .end local v0           #refreshedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 779
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 780
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 686
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mStarted:Z

    .line 689
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    if-nez v0, :cond_0

    .line 690
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->loadSettings()V

    .line 692
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 754
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 755
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mStarted:Z

    .line 756
    return-void
.end method

.method public ringtoneDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 3368
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3369
    const v0, 0x7f080525

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3370
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3371
    const v0, 0x7f080524

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3373
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 3374
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 3375
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    .line 3374
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3377
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3378
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3380
    const v0, 0x7f080143

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3381
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment$46;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3428
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public saveSyncScheduleData(Landroid/content/Intent;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 2280
    const-string v0, "AccountSettingsFragment"

    const-string v1, "saveSyncScheduleData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    const-string v0, "com.android.email.SyncScheduleExtra"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    .line 2282
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    if-eqz v0, :cond_3

    .line 2283
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2285
    const-string v0, "AccountSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncSchedule of account - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is changed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2287
    const-string v0, "peakDays"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2288
    const-string v0, "peakStartMinute"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2289
    const-string v0, "peakEndMinute"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2290
    const-string v0, "peakSchedule"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2291
    const-string v0, "offPeakSchedule"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2292
    const-string v0, "roamingSchedule"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2294
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccounts(Landroid/content/Context;Ljava/lang/String;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 2295
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 2296
    iget-wide v5, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    iget-wide v5, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2295
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2300
    :cond_1
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 2301
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v1, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 2303
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    .line 2306
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreUnifiedAccount(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 2307
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0}, Lcom/android/email/Controller;->setupPushForUnifiedAccount()V

    .line 2308
    iput-object v9, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    .line 2311
    :cond_3
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 786
    if-nez p1, :cond_0

    sget-object p1, Lcom/android/email/activity/setup/AccountSettingsFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    .line 787
    return-void
.end method

.method public startLoadingAccount(J)V
    .locals 4
    .parameter "accountId"

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 794
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/email/activity/setup/AccountSettingsFragment$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    .line 795
    return-void
.end method
