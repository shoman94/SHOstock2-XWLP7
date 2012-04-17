.class public Lcom/android/email/activity/setup/SyncScheduleSettings;
.super Landroid/preference/PreferenceActivity;
.source "SyncScheduleSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static mPeakDaysArray:[Z


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private mDayStrings:[Ljava/lang/String;

.field private mEndHour:I

.field private mEndMinute:I

.field private mHandler:Landroid/os/Handler;

.field private mOffPeakSchedule:I

.field private mPeakSchedule:I

.field private mRoamingSchedule:I

.field private mStartHour:I

.field private mStartMinute:I

.field private mSyncEndTime:I

.field private mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

.field private mSyncStartTime:I

.field private mThreeCharDayStrings:[Ljava/lang/String;

.field private offPeakSchedule:Landroid/preference/ListPreference;

.field private peakDays:Landroid/preference/Preference;

.field private peakEndTime:Landroid/preference/Preference;

.field private peakSchedule:Landroid/preference/ListPreference;

.field private peakStartTime:Landroid/preference/Preference;

.field private whileRoaming:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/SyncScheduleSettings;->TAG:Ljava/lang/String;

    .line 92
    const/4 v0, 0x7

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakDaysArray:[Z

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
    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mRoamingSchedule:I

    .line 96
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mCalendar:Ljava/util/Calendar;

    .line 384
    new-instance v0, Lcom/android/email/activity/setup/SyncScheduleSettings$11;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/SyncScheduleSettings$11;-><init>(Lcom/android/email/activity/setup/SyncScheduleSettings;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/SyncScheduleSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->peakSchedule:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/SyncScheduleSettings;Landroid/preference/Preference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->showTimePickerDialog(Landroid/preference/Preference;Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakSchedule:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/setup/SyncScheduleSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncEndTime:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncEndTime:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mEndHour:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mEndMinute:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/email/activity/setup/SyncScheduleSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->peakEndTime:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/setup/SyncScheduleSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->whileRoaming:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mRoamingSchedule:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/email/activity/setup/SyncScheduleSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/email/activity/setup/SyncScheduleSettings;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->pad(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/email/activity/setup/SyncScheduleSettings;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->getMinuteOfDay(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/SyncScheduleSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->offPeakSchedule:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mOffPeakSchedule:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/SyncScheduleSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->showPeakDaysDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/SyncScheduleSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncStartTime:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncStartTime:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/SyncScheduleSettings;I)Landroid/util/Pair;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mStartHour:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mStartMinute:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/SyncScheduleSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->peakStartTime:Landroid/preference/Preference;

    return-object v0
.end method

.method private getMinuteOfDay(II)I
    .locals 1
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 381
    mul-int/lit8 v0, p1, 0x3c

    add-int/2addr v0, p2

    return v0
.end method

.method private getPeakDays()B
    .locals 3

    .prologue
    .line 358
    const/4 v1, 0x0

    .line 359
    .local v1, peakDays:B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 360
    sget-object v2, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakDaysArray:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 361
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v2, v1

    int-to-byte v1, v2

    .line 359
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_1
    return v1
.end method

.method private onSave()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 333
    new-instance v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    iget v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncStartTime:I

    iget v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncEndTime:I

    invoke-direct {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->getPeakDays()B

    move-result v3

    iget v4, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakSchedule:I

    iget v5, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mOffPeakSchedule:I

    iget v6, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mRoamingSchedule:I

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    .line 335
    .local v0, saveSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;
    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setResult(I)V

    .line 336
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 337
    .local v7, resultIntent:Landroid/content/Intent;
    const-string v1, "com.android.email.SyncScheduleExtra"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0, v8, v7}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setResult(ILandroid/content/Intent;)V

    .line 339
    invoke-virtual {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->finish()V

    .line 340
    return-void
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .parameter "c"

    .prologue
    .line 343
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 344
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private readDataFromIntent()V
    .locals 2

    .prologue
    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    .line 315
    invoke-virtual {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.SyncScheduleExtra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.SyncScheduleExtra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    iput-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    .line 321
    :goto_0
    return-void

    .line 318
    :cond_0
    sget-object v0, Lcom/android/email/activity/setup/SyncScheduleSettings;->TAG:Ljava/lang/String;

    const-string v1, "Expecting SyncScheduleData in parcelable extra EXTRA_SCHEDULE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->finish()V

    goto :goto_0
.end method

.method private restorePeakDaysArray()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 351
    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v1

    .line 352
    .local v1, peakDays:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 353
    sget-object v4, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakDaysArray:[Z

    shl-int v2, v3, v0

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    move v2, v3

    :goto_1
    aput-boolean v2, v4, v0

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 355
    :cond_1
    return-void
.end method

.method private restoreSettings()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakSchedule:I

    .line 325
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mOffPeakSchedule:I

    .line 326
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mRoamingSchedule:I

    .line 327
    invoke-direct {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->restorePeakDaysArray()V

    .line 328
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncStartTime:I

    .line 329
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncEndTime:I

    .line 330
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
    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, hour:I
    const/4 v1, 0x0

    .line 370
    .local v1, minute:I
    if-nez p1, :cond_0

    .line 371
    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 372
    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 377
    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 374
    :cond_0
    div-int/lit8 v0, p1, 0x3c

    .line 375
    rem-int/lit8 v1, p1, 0x3c

    goto :goto_0
.end method

.method private setupOffPeakSchedule()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "account_sync_offpeaktime"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->offPeakSchedule:Landroid/preference/ListPreference;

    .line 159
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->offPeakSchedule:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mOffPeakSchedule:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->offPeakSchedule:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->offPeakSchedule:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->offPeakSchedule:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/SyncScheduleSettings$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/SyncScheduleSettings$2;-><init>(Lcom/android/email/activity/setup/SyncScheduleSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 170
    return-void
.end method

.method private setupPeakDays()V
    .locals 2

    .prologue
    .line 173
    const-string v0, "account_sync_peakdays"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->peakDays:Landroid/preference/Preference;

    .line 174
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->peakDays:Landroid/preference/Preference;

    new-instance v1, Lcom/android/email/activity/setup/SyncScheduleSettings$3;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/SyncScheduleSettings$3;-><init>(Lcom/android/email/activity/setup/SyncScheduleSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 181
    return-void
.end method

.method private setupPeakEndTime()V
    .locals 4

    .prologue
    .line 205
    iget v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncEndTime:I

    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v0

    .line 206
    .local v0, hourMinute:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mEndHour:I

    .line 207
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mEndMinute:I

    .line 209
    const-string v1, "account_sync_peakendtime"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->peakEndTime:Landroid/preference/Preference;

    .line 210
    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->peakEndTime:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mEndHour:I

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/SyncScheduleSettings;->pad(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mEndMinute:I

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/SyncScheduleSettings;->pad(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->peakEndTime:Landroid/preference/Preference;

    new-instance v2, Lcom/android/email/activity/setup/SyncScheduleSettings$5;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/SyncScheduleSettings$5;-><init>(Lcom/android/email/activity/setup/SyncScheduleSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 223
    return-void
.end method

.method private setupPeakSchedule()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "account_sync_peaktime"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->peakSchedule:Landroid/preference/ListPreference;

    .line 144
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->peakSchedule:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakSchedule:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->peakSchedule:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->peakSchedule:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->peakSchedule:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/SyncScheduleSettings$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/SyncScheduleSettings$1;-><init>(Lcom/android/email/activity/setup/SyncScheduleSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    return-void
.end method

.method private setupPeakStartTime()V
    .locals 4

    .prologue
    .line 184
    iget v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncStartTime:I

    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v0

    .line 185
    .local v0, hourMinute:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mStartHour:I

    .line 186
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mStartMinute:I

    .line 188
    const-string v1, "account_sync_peakstarttime"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->peakStartTime:Landroid/preference/Preference;

    .line 189
    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->peakStartTime:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mStartHour:I

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/SyncScheduleSettings;->pad(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mStartMinute:I

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/SyncScheduleSettings;->pad(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->peakStartTime:Landroid/preference/Preference;

    new-instance v2, Lcom/android/email/activity/setup/SyncScheduleSettings$4;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/SyncScheduleSettings$4;-><init>(Lcom/android/email/activity/setup/SyncScheduleSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 202
    return-void
.end method

.method private setupRoaming()V
    .locals 3

    .prologue
    .line 226
    const-string v1, "account_sync_while_roaming"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->whileRoaming:Landroid/preference/ListPreference;

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, position:I
    iget v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mRoamingSchedule:I

    packed-switch v1, :pswitch_data_0

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->whileRoaming:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->whileRoaming:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->whileRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->whileRoaming:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/email/activity/setup/SyncScheduleSettings$6;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/SyncScheduleSettings$6;-><init>(Lcom/android/email/activity/setup/SyncScheduleSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 253
    return-void

    .line 230
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private showPeakDaysDialog()V
    .locals 6

    .prologue
    .line 256
    const/4 v3, 0x7

    new-array v1, v3, [Z

    .line 257
    .local v1, peakDaysOld:[Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 258
    sget-object v3, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakDaysArray:[Z

    aget-boolean v3, v3, v0

    aput-boolean v3, v1, v0

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 261
    .local v2, peakScheduleDialog:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f080387

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 262
    iget-object v3, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mDayStrings:[Ljava/lang/String;

    sget-object v4, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakDaysArray:[Z

    new-instance v5, Lcom/android/email/activity/setup/SyncScheduleSettings$7;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/SyncScheduleSettings$7;-><init>(Lcom/android/email/activity/setup/SyncScheduleSettings;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 270
    const v3, 0x7f08038c

    new-instance v4, Lcom/android/email/activity/setup/SyncScheduleSettings$8;

    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/SyncScheduleSettings$8;-><init>(Lcom/android/email/activity/setup/SyncScheduleSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 277
    new-instance v3, Lcom/android/email/activity/setup/SyncScheduleSettings$9;

    invoke-direct {v3, p0, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings$9;-><init>(Lcom/android/email/activity/setup/SyncScheduleSettings;[Z)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 286
    return-void
.end method

.method private showTimePickerDialog(Landroid/preference/Preference;Z)V
    .locals 6
    .parameter "preference"
    .parameter "isStartTime"

    .prologue
    .line 290
    iget v3, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mEndHour:I

    .line 291
    .local v3, hour:I
    iget v4, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mEndMinute:I

    .line 292
    .local v4, minute:I
    if-eqz p2, :cond_0

    .line 293
    iget v3, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mStartHour:I

    .line 294
    iget v4, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mStartMinute:I

    .line 297
    :cond_0
    new-instance v0, Landroid/app/TimePickerDialog;

    new-instance v2, Lcom/android/email/activity/setup/SyncScheduleSettings$10;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/email/activity/setup/SyncScheduleSettings$10;-><init>(Lcom/android/email/activity/setup/SyncScheduleSettings;Landroid/preference/Preference;Z)V

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 310
    .local v0, timePicker:Landroid/app/TimePickerDialog;
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 311
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->onSave()V

    .line 140
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const v0, 0x7f060015

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->addPreferencesFromResource(I)V

    .line 122
    invoke-virtual {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mDayStrings:[Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mThreeCharDayStrings:[Ljava/lang/String;

    .line 126
    invoke-direct {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->readDataFromIntent()V

    .line 128
    invoke-direct {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->restoreSettings()V

    .line 130
    invoke-direct {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setupPeakSchedule()V

    .line 131
    invoke-direct {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setupOffPeakSchedule()V

    .line 132
    invoke-direct {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setupPeakDays()V

    .line 133
    invoke-direct {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setupPeakStartTime()V

    .line 134
    invoke-direct {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setupPeakEndTime()V

    .line 135
    invoke-direct {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setupRoaming()V

    .line 136
    return-void
.end method
