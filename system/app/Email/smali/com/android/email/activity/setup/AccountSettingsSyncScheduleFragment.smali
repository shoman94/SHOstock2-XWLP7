.class public Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;
.super Landroid/preference/PreferenceFragment;
.source "AccountSettingsSyncScheduleFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static mPeakDaysArray:[Z


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private final mCalendar:Ljava/util/Calendar;

.field private mEndHour:I

.field private mEndMinute:I

.field private mLoaded:Z

.field private mOffPeakSchedule:I

.field private mPeakSchedule:I

.field private mRoamingSchedule:I

.field private mStartHour:I

.field private mStartMinute:I

.field private mSyncEndTime:I

.field private mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

.field private mSyncStartTime:I

.field private offPeakSchedule:Landroid/preference/ListPreference;

.field private pa:Landroid/preference/PreferenceActivity;

.field private peakDays:Landroid/preference/Preference;

.field private peakEndTime:Landroid/preference/Preference;

.field private peakSchedule:Landroid/preference/ListPreference;

.field private peakStartTime:Landroid/preference/Preference;

.field private tmpEndTime:I

.field private tmpStartTime:I

.field private whileRoaming:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->TAG:Ljava/lang/String;

    .line 133
    const/4 v0, 0x7

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    return-void

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mRoamingSchedule:I

    .line 137
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakSchedule:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakStartTime:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakSchedule:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;Landroid/content/Context;Landroid/preference/Preference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->showTimePickerDialog(Landroid/content/Context;Landroid/preference/Preference;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncEndTime:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncEndTime:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakEndTime:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getMinuteOfDay(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->offPeakSchedule:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mOffPeakSchedule:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mRoamingSchedule:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncStartTime:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncStartTime:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)Landroid/util/Pair;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartHour:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartMinute:I

    return p1
.end method

.method private getMinuteOfDay(II)I
    .locals 1
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 785
    mul-int/lit8 v0, p1, 0x3c

    add-int/2addr v0, p2

    return v0
.end method

.method private getPeakDays()B
    .locals 3

    .prologue
    .line 762
    const/4 v1, 0x0

    .line 763
    .local v1, peakDays:B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 764
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 765
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v2, v1

    int-to-byte v1, v2

    .line 763
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 768
    :cond_1
    return v1
.end method

.method private loadSettings(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setupPeakStartTime(Landroid/content/Context;)V

    .line 366
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setupPeakEndTime(Landroid/content/Context;)V

    .line 367
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setupPeakDays()V

    .line 368
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setupPeakSchedule()V

    .line 369
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setupOffPeakSchedule()V

    .line 370
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setupRoaming(Landroid/content/Context;)V

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mLoaded:Z

    .line 395
    return-void
.end method

.method private onSave()V
    .locals 8

    .prologue
    .line 738
    new-instance v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncStartTime:I

    iget v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncEndTime:I

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getPeakDays()B

    move-result v3

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakSchedule:I

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mOffPeakSchedule:I

    iget v6, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mRoamingSchedule:I

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    .line 741
    .local v0, saveSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 742
    .local v7, resultIntent:Landroid/content/Intent;
    const-string v1, "com.android.email.SyncScheduleExtra"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 743
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->pa:Landroid/preference/PreferenceActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v7}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 744
    return-void
.end method

.method private readDataFromBundle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 701
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    .line 702
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.android.email.SyncScheduleExtra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    .line 703
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extraAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 705
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    if-nez v0, :cond_0

    .line 706
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->TAG:Ljava/lang/String;

    const-string v1, "Expecting SyncScheduleData in parcelable extra EXTRA_SCHEDULE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->pa:Landroid/preference/PreferenceActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 709
    :cond_0
    return-void
.end method

.method private restorePeakDaysArray()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 755
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v1

    .line 756
    .local v1, peakDays:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 757
    sget-object v4, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    shl-int v2, v3, v0

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    move v2, v3

    :goto_1
    aput-boolean v2, v4, v0

    .line 756
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 757
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 759
    :cond_1
    return-void
.end method

.method private restoreSettings()V
    .locals 7

    .prologue
    const/4 v4, -0x2

    .line 712
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    if-nez v0, :cond_0

    .line 713
    new-instance v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v1, 0x1e0

    const/16 v2, 0x3fc

    const/16 v3, 0x3e

    const/4 v6, 0x0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakSchedule:I

    .line 719
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mOffPeakSchedule:I

    .line 724
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mRoamingSchedule:I

    .line 725
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->restorePeakDaysArray()V

    .line 726
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncStartTime:I

    .line 727
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncEndTime:I

    .line 728
    return-void
.end method

.method private setHoursAndMinutes(I)Landroid/util/Pair;
    .locals 5
    .parameter "syncTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 772
    const/4 v0, 0x0

    .line 773
    .local v0, hour:I
    const/4 v1, 0x0

    .line 774
    .local v1, minute:I
    if-eqz p1, :cond_0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 775
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 776
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 781
    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 778
    :cond_1
    div-int/lit8 v0, p1, 0x3c

    .line 779
    rem-int/lit8 v1, p1, 0x3c

    goto :goto_0
.end method

.method private setupOffPeakSchedule()V
    .locals 2

    .prologue
    .line 438
    const-string v0, "account_sync_offpeaktime"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->offPeakSchedule:Landroid/preference/ListPreference;

    .line 439
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->offPeakSchedule:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mOffPeakSchedule:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->offPeakSchedule:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->offPeakSchedule:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->offPeakSchedule:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 450
    return-void
.end method

.method private setupPeakDays()V
    .locals 2

    .prologue
    .line 453
    const-string v0, "account_sync_peakdays"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakDays:Landroid/preference/Preference;

    .line 454
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakDays:Landroid/preference/Preference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$3;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$3;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 461
    return-void
.end method

.method private setupPeakEndTime(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 603
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncEndTime:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v6

    .line 604
    .local v6, hourMinute:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    .line 605
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    .line 606
    const-string v0, "account_sync_peakendtime"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakEndTime:Landroid/preference/Preference;

    .line 608
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mLoaded:Z

    if-eqz v0, :cond_0

    .line 609
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->tmpEndTime:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v7

    .line 610
    .local v7, tempHourMinute:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    .line 611
    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    .line 614
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakEndTime:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    new-instance v0, Ljava/util/Date;

    iget-object v2, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 622
    .end local v7           #tempHourMinute:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakEndTime:Landroid/preference/Preference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$7;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 633
    return-void

    .line 619
    :cond_0
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakEndTime:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    new-instance v0, Ljava/util/Date;

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setupPeakSchedule()V
    .locals 2

    .prologue
    .line 423
    const-string v0, "account_sync_peaktime"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakSchedule:Landroid/preference/ListPreference;

    .line 424
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakSchedule:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakSchedule:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakSchedule:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakSchedule:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakSchedule:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 435
    return-void
.end method

.method private setupPeakStartTime(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 570
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncStartTime:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v6

    .line 571
    .local v6, hourMinute:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartHour:I

    .line 572
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartMinute:I

    .line 573
    const-string v0, "account_sync_peakstarttime"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakStartTime:Landroid/preference/Preference;

    .line 575
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mLoaded:Z

    if-eqz v0, :cond_0

    .line 576
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->tmpStartTime:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v7

    .line 577
    .local v7, tempHourMinute:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    .line 578
    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    .line 581
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakStartTime:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    new-instance v0, Ljava/util/Date;

    iget-object v2, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 589
    .end local v7           #tempHourMinute:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakStartTime:Landroid/preference/Preference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$6;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 600
    return-void

    .line 586
    :cond_0
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakStartTime:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    new-instance v0, Ljava/util/Date;

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartHour:I

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartMinute:I

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setupRoaming(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const v11, 0x7f0803a2

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 464
    const-string v7, "account_sync_while_roaming"

    invoke-virtual {p0, v7}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    .line 466
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v6

    .line 467
    .local v6, securityPolicy:Lcom/android/email/SecurityPolicy;
    const/4 v0, 0x0

    .line 472
    .local v0, policySet:Lcom/android/emailcommon/service/PolicySet;
    new-array v2, v9, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v8

    .line 474
    .local v2, roamingType1:[Ljava/lang/CharSequence;
    new-array v3, v9, [Ljava/lang/CharSequence;

    const-string v7, "0"

    aput-object v7, v3, v8

    .line 475
    .local v3, roamingType1entryValues:[Ljava/lang/CharSequence;
    new-array v4, v10, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    const v7, 0x7f0803a3

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v9

    .line 478
    .local v4, roamingType2:[Ljava/lang/CharSequence;
    new-array v5, v10, [Ljava/lang/CharSequence;

    const-string v7, "0"

    aput-object v7, v5, v8

    const-string v7, "1"

    aput-object v7, v5, v9

    .line 481
    .local v5, roamingType2entryValues:[Ljava/lang/CharSequence;
    if-eqz v6, :cond_0

    .line 482
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    .line 484
    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v7, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    if-eqz v7, :cond_1

    .line 485
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v7, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 486
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 515
    :goto_0
    const/4 v1, 0x0

    .line 516
    .local v1, position:I
    iget v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mRoamingSchedule:I

    packed-switch v7, :pswitch_data_0

    .line 521
    :goto_1
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 522
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    new-instance v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$4;

    invoke-direct {v8, p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$4;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)V

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 543
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    new-instance v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$5;

    invoke-direct {v8, p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$5;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)V

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 553
    return-void

    .line 488
    .end local v1           #position:I
    :cond_1
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 489
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 518
    .restart local v1       #position:I
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_1

    .line 516
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private showTimePickerDialog(Landroid/content/Context;Landroid/preference/Preference;Z)V
    .locals 7
    .parameter "context"
    .parameter "preference"
    .parameter "isStartTime"

    .prologue
    .line 675
    iget v3, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    .line 676
    .local v3, hour:I
    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    .line 677
    .local v4, minute:I
    if-eqz p3, :cond_0

    .line 678
    iget v3, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartHour:I

    .line 679
    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartMinute:I

    .line 682
    :cond_0
    new-instance v0, Landroid/app/TimePickerDialog;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$8;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$8;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;Landroid/preference/Preference;Z)V

    const-string v1, "24"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "time_12_24"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v5, 0x1

    :goto_0
    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 697
    .local v0, timePicker:Landroid/app/TimePickerDialog;
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 698
    return-void

    .line 682
    .end local v0           #timePicker:Landroid/app/TimePickerDialog;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 161
    if-eqz p1, :cond_0

    .line 162
    const-string v2, "AccountSettingsSyncScheduleFragment.startTime"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->tmpStartTime:I

    .line 163
    const-string v2, "AccountSettingsSyncScheduleFragment.endTime"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->tmpEndTime:I

    .line 164
    const-string v2, "AccountSettingsSyncScheduleFragment.loaded"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mLoaded:Z

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 168
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->pa:Landroid/preference/PreferenceActivity;

    .line 173
    const v2, 0x7f060015

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->addPreferencesFromResource(I)V

    .line 174
    const-string v2, "sync_syncshedule"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 176
    .local v1, topCategory:Landroid/preference/PreferenceCategory;
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->readDataFromBundle()V

    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->restoreSettings()V

    .line 180
    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->loadSettings(Landroid/content/Context;)V

    .line 184
    new-instance v2, Landroid/content/Intent;

    const-string v3, "refresh_widget"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 185
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHasOptionsMenu(Z)V

    .line 186
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 298
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 299
    const v0, 0x7f0f0014

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 300
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 315
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 325
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 317
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->onSave()V

    goto :goto_0

    .line 320
    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->pa:Landroid/preference/PreferenceActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 315
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100029 -> :sswitch_1
        0x7f1002c0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    .line 304
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    .line 305
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 306
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f1002c0

    if-eq v2, v3, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f100029

    if-eq v2, v3, :cond_0

    .line 308
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 305
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 346
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 347
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncStartTime:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v6

    .line 348
    .local v6, hourMinute:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartHour:I

    .line 349
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartMinute:I

    .line 352
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakStartTime:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    new-instance v0, Ljava/util/Date;

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartHour:I

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartMinute:I

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v8, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 355
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncEndTime:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v6

    .line 356
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    .line 357
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    .line 360
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakEndTime:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    new-instance v0, Ljava/util/Date;

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v8, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 362
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 334
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 336
    const-string v0, "AccountSettingsSyncScheduleFragment.startTime"

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncStartTime:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    const-string v0, "AccountSettingsSyncScheduleFragment.endTime"

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncEndTime:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 339
    const-string v0, "AccountSettingsSyncScheduleFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    return-void
.end method

.method showRequireManualSyncRoamingToast()V
    .locals 5

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v1

    .line 557
    .local v1, securityPolicy:Lcom/android/email/SecurityPolicy;
    const/4 v0, 0x0

    .line 558
    .local v0, policySet:Lcom/android/emailcommon/service/PolicySet;
    if-eqz v1, :cond_0

    .line 559
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    .line 561
    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    if-eqz v2, :cond_1

    .line 562
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0803a4

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 566
    :cond_1
    return-void
.end method
