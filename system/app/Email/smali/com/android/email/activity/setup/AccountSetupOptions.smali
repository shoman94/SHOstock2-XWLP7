.class public Lcom/android/email/activity/setup/AccountSetupOptions;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static SYNC_WINDOW_EAS_DEFAULT:I


# instance fields
.field mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoDownloadView:Landroid/widget/CheckBox;

.field private mBackgroundAttachmentsView:Landroid/widget/CheckBox;

.field private mCalendarSyncSpinner:Landroid/widget/Spinner;

.field private mCheckFrequencyView:Landroid/widget/Spinner;

.field private mDefaultString:Landroid/widget/TextView;

.field private mDefaultView:Landroid/widget/CheckBox;

.field private mDonePressed:Z

.field private mEmailSizeView:Landroid/widget/Spinner;

.field private mNextButton:Landroid/view/MenuItem;

.field private mNotifyString:Landroid/widget/TextView;

.field private mNotifyView:Landroid/widget/CheckBox;

.field private mOffPeakScheduleSpinner:Landroid/widget/Spinner;

.field private mPeakScheduleSpinner:Landroid/widget/Spinner;

.field private mPreviousButton:Landroid/view/MenuItem;

.field private mSaveAccountAndFinish:Z

.field private mSyncCalendarString:Landroid/widget/TextView;

.field private mSyncCalendarView:Landroid/widget/CheckBox;

.field private mSyncContactsString:Landroid/widget/TextView;

.field private mSyncContactsView:Landroid/widget/CheckBox;

.field private mSyncEmailString:Landroid/widget/TextView;

.field private mSyncEmailView:Landroid/widget/CheckBox;

.field private mSyncSmsString:Landroid/widget/TextView;

.field private mSyncSmsView:Landroid/widget/CheckBox;

.field private mSyncTasksString:Landroid/widget/TextView;

.field private mSyncTasksView:Landroid/widget/CheckBox;

.field private mSyncWindowView:Landroid/widget/Spinner;

.field private oldSyncTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, -0x2

    sput v0, Lcom/android/email/activity/setup/AccountSetupOptions;->SYNC_WINDOW_EAS_DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    .line 131
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDonePressed:Z

    .line 148
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSaveAccountAndFinish:Z

    .line 681
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupOptions$3;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupOptions$3;-><init>(Lcom/android/email/activity/setup/AccountSetupOptions;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupOptions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->oldSyncTime:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/setup/AccountSetupOptions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->oldSyncTime:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupOptions;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupOptions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->optionsComplete()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSetupOptions;I[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupOptions;->showErrorDialog(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static actionOptions(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 153
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 155
    return-void
.end method

.method private enableCalendarSyncWindowSpinner()V
    .locals 9

    .prologue
    .line 902
    const v6, 0x7f10007f

    invoke-virtual {p0, v6}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 905
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0016

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 907
    .local v3, calendarSyncValues:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 911
    .local v2, calendarSyncEntries:[Ljava/lang/CharSequence;
    array-length v6, v2

    new-array v0, v6, [Lcom/android/email/activity/setup/SpinnerOption;

    .line 913
    .local v0, calendarSync:[Lcom/android/email/activity/setup/SpinnerOption;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v6, v2

    if-ge v4, v6, :cond_0

    .line 914
    aget-object v6, v3, v4

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 915
    .local v5, value:I
    new-instance v6, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget-object v8, v2, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v0, v4

    .line 913
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 920
    .end local v5           #value:I
    :cond_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v1, p0, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 922
    .local v1, calendarSyncAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v6, 0x1090009

    invoke-virtual {v1, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 923
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCalendarSyncSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 924
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCalendarSyncSpinner:Landroid/widget/Spinner;

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getCalendarSyncLookback()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 930
    return-void
.end method

.method private enableEASEmailSizeSpinner()V
    .locals 12

    .prologue
    .line 934
    const v10, 0x7f10007c

    invoke-virtual {p0, v10}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 936
    const/4 v1, -0x1

    .line 937
    .local v1, emailSizeDefaultIndex:I
    const v10, 0x7f08033c

    invoke-virtual {p0, v10}, Lcom/android/email/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, emailSizeDefault:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0006

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 940
    .local v5, emailSizeValues:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0005

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 943
    .local v2, emailSizeEntries:[Ljava/lang/CharSequence;
    const/4 v4, -0x1

    .line 945
    .local v4, emailSizeIndex:I
    array-length v8, v2

    .line 946
    .local v8, eseSz:I
    new-array v6, v8, [Lcom/android/email/activity/setup/SpinnerOption;

    .line 947
    .local v6, emailSizes:[Lcom/android/email/activity/setup/SpinnerOption;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v8, :cond_1

    .line 948
    aget-object v10, v2, v9

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 949
    .local v3, emailSizeEntry:Ljava/lang/String;
    aget-object v10, v5, v9

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 951
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 952
    move v1, v4

    .line 955
    :cond_0
    new-instance v10, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v10, v11, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v10, v6, v9

    .line 947
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 958
    .end local v3           #emailSizeEntry:Ljava/lang/String;
    :cond_1
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v10, 0x1090008

    invoke-direct {v7, p0, v10, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 960
    .local v7, emailSizesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v10, 0x1090009

    invoke-virtual {v7, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 961
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mEmailSizeView:Landroid/widget/Spinner;

    invoke-virtual {v10, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 962
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mEmailSizeView:Landroid/widget/Spinner;

    invoke-virtual {v10, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 964
    return-void
.end method

.method private enableEASSyncWindowSpinner()V
    .locals 10

    .prologue
    .line 804
    const v7, 0x7f10007a

    invoke-virtual {p0, v7}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 807
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a000c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 809
    .local v6, windowValues:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 813
    .local v3, windowEntries:[Ljava/lang/CharSequence;
    array-length v7, v3

    new-array v4, v7, [Lcom/android/email/activity/setup/SpinnerOption;

    .line 814
    .local v4, windowOptions:[Lcom/android/email/activity/setup/SpinnerOption;
    const/4 v0, -0x1

    .line 815
    .local v0, defaultIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v3

    if-ge v1, v7, :cond_1

    .line 816
    aget-object v7, v6, v1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 817
    .local v2, value:I
    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget-object v9, v3, v1

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v4, v1

    .line 818
    sget v7, Lcom/android/email/activity/setup/AccountSetupOptions;->SYNC_WINDOW_EAS_DEFAULT:I

    if-ne v2, v7, :cond_0

    .line 819
    move v0, v1

    .line 815
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 823
    .end local v2           #value:I
    :cond_1
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v7, 0x1090008

    invoke-direct {v5, p0, v7, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 825
    .local v5, windowOptionsAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v7, 0x1090009

    invoke-virtual {v5, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 826
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v7, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 828
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 830
    if-ltz v0, :cond_2

    .line 831
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 833
    :cond_2
    return-void
.end method

.method private enableOffPeakScheduleWindowSpinner()V
    .locals 9

    .prologue
    .line 869
    const v6, 0x7f100077

    invoke-virtual {p0, v6}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 872
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 874
    .local v4, offPeakScheduleValues:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 878
    .local v3, offPeakScheduleEntries:[Ljava/lang/CharSequence;
    array-length v6, v3

    new-array v1, v6, [Lcom/android/email/activity/setup/SpinnerOption;

    .line 880
    .local v1, offPeakSchedule:[Lcom/android/email/activity/setup/SpinnerOption;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_0

    .line 881
    aget-object v6, v4, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 882
    .local v5, value:I
    new-instance v6, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget-object v8, v3, v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v1, v0

    .line 880
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 887
    .end local v5           #value:I
    :cond_0
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v2, p0, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 889
    .local v2, offPeakScheduleAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v6, 0x1090009

    invoke-virtual {v2, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 891
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mOffPeakScheduleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 892
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mOffPeakScheduleSpinner:Landroid/widget/Spinner;

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 898
    return-void
.end method

.method private enablePeakScheduleWindowSpinner()V
    .locals 9

    .prologue
    .line 837
    const v6, 0x7f100074

    invoke-virtual {p0, v6}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 840
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 842
    .local v4, peakScheduleValues:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0011

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 846
    .local v3, peakScheduleEntries:[Ljava/lang/CharSequence;
    array-length v6, v3

    new-array v1, v6, [Lcom/android/email/activity/setup/SpinnerOption;

    .line 848
    .local v1, peakSchedule:[Lcom/android/email/activity/setup/SpinnerOption;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_0

    .line 849
    aget-object v6, v4, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 850
    .local v5, value:I
    new-instance v6, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget-object v8, v3, v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v1, v0

    .line 848
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 855
    .end local v5           #value:I
    :cond_0
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v2, p0, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 857
    .local v2, peakScheduleAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v6, 0x1090009

    invoke-virtual {v2, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 858
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mPeakScheduleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 859
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mPeakScheduleSpinner:Landroid/widget/Spinner;

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 865
    return-void
.end method

.method private onDone()V
    .locals 22

    .prologue
    .line 560
    const-string v1, "Email"

    const-string v2, "AccountSetupOptions onDone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    .line 562
    .local v3, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 563
    const/16 v17, 0x0

    .line 564
    .local v17, syncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v17

    .line 565
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit16 v13, v1, -0x102

    .line 573
    .local v13, newFlags:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    or-int/lit8 v13, v13, 0x1

    .line 576
    :cond_0
    invoke-virtual {v3, v13}, Lcom/android/emailcommon/provider/EmailContent$Account;->setFlags(I)V

    .line 577
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mBackgroundAttachmentsView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 578
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mBackgroundAttachmentsView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setAutoDownload(Z)V

    .line 581
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v1, v1, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 582
    const v1, 0x7f10007a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 583
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v1, v1, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 584
    .local v19, window:I
    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 586
    .end local v19           #window:I
    :cond_2
    const v1, 0x7f100074

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 587
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mPeakScheduleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v1, v1, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 588
    .local v15, peakSchedule:I
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/android/emailcommon/utility/SyncScheduleData;->setPeakSchedule(I)V

    .line 590
    .end local v15           #peakSchedule:I
    :cond_3
    const v1, 0x7f100077

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 591
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mOffPeakScheduleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v1, v1, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 593
    .local v14, offPeakSchedule:I
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/emailcommon/utility/SyncScheduleData;->setOffPeakSchedule(I)V

    .line 595
    .end local v14           #offPeakSchedule:I
    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    .line 596
    const v1, 0x7f10007f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 597
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCalendarSyncSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v1, v1, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 598
    .restart local v19       #window:I
    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    .line 601
    .end local v19           #window:I
    :cond_5
    const v1, 0x7f10007c

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 602
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mEmailSizeView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v1, v1, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v11, v1

    .line 604
    .local v11, currentSizeByte:B
    invoke-virtual {v3, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailSize(B)V

    .line 606
    .end local v11           #currentSizeByte:B
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 607
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mBackgroundAttachmentsView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setAutoDownload(Z)V

    .line 609
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 610
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "in AccountSetupOptions with already-saved account"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 612
    :cond_7
    iget-object v1, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v1, :cond_8

    .line 613
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "in AccountSetupOptions with null mHostAuthRecv"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 619
    :cond_8
    iget v1, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 620
    const/4 v9, 0x0

    .line 621
    .local v9, calendar:Z
    const/4 v10, 0x0

    .line 622
    .local v10, contacts:Z
    const/4 v12, 0x0

    .line 623
    .local v12, email:Z
    const/16 v18, 0x0

    .line 624
    .local v18, tasks:Z
    const-string v1, "eas"

    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 628
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getPolicySet()Lcom/android/emailcommon/service/PolicySet;

    move-result-object v16

    .line 629
    .local v16, policySet:Lcom/android/emailcommon/service/PolicySet;
    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v16}, Lcom/android/emailcommon/service/PolicySet;->getSecurityCode()J

    move-result-wide v1

    const-wide/16 v20, 0x0

    cmp-long v1, v1, v20

    if-eqz v1, :cond_9

    .line 630
    invoke-virtual/range {v16 .. v16}, Lcom/android/emailcommon/service/PolicySet;->getSecurityCode()J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    .line 631
    iget v1, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 634
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    .line 635
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    .line 636
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncEmailView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v12

    .line 637
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncTasksView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v18

    .line 639
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncSmsView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    .line 640
    .local v8, alsoSyncSms:Z
    if-eqz v8, :cond_a

    .line 641
    iget v1, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit16 v1, v1, 0x800

    iput v1, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 652
    .end local v8           #alsoSyncSms:Z
    .end local v16           #policySet:Lcom/android/emailcommon/service/PolicySet;
    :cond_a
    move v4, v12

    .line 653
    .local v4, email2:Z
    move v5, v9

    .line 654
    .local v5, calendar2:Z
    move v6, v10

    .line 655
    .local v6, contacts2:Z
    move/from16 v7, v18

    .line 656
    .local v7, tasks2:Z
    new-instance v1, Lcom/android/email/activity/setup/AccountSetupOptions$2;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/email/activity/setup/AccountSetupOptions$2;-><init>(Lcom/android/email/activity/setup/AccountSetupOptions;Lcom/android/emailcommon/provider/EmailContent$Account;ZZZZ)V

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 675
    return-void
.end method

.method private optionsComplete()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 733
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v1

    .line 735
    .local v1, authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v1, :cond_0

    .line 736
    invoke-virtual {v1, v3}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 737
    invoke-static {v3}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 741
    :cond_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 742
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    .line 743
    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v2

    .line 744
    .local v2, intent:Landroid/content/Intent;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/email/activity/setup/AccountSetupOptions;->startActivityForResult(Landroid/content/Intent;I)V

    .line 749
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 747
    :cond_1
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptions;->setResult(I)V

    .line 748
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->saveAccountAndFinish()V

    goto :goto_0
.end method

.method private saveAccountAndFinish()V
    .locals 1

    .prologue
    .line 766
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupOptions$5;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupOptions$5;-><init>(Lcom/android/email/activity/setup/AccountSetupOptions;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 796
    return-void
.end method

.method private varargs showErrorDialog(I[Ljava/lang/Object;)V
    .locals 1
    .parameter "msgResId"
    .parameter "args"

    .prologue
    .line 709
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupOptions$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupOptions$4;-><init>(Lcom/android/email/activity/setup/AccountSetupOptions;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupOptions;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 725
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 517
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v0

    .line 519
    .local v0, authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v0, :cond_0

    .line 520
    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 521
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 523
    :cond_0
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->finish()V

    .line 524
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 756
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSaveAccountAndFinish:Z

    .line 757
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->saveAccountAndFinish()V

    .line 758
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 531
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 549
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 503
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 509
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .parameter "savedInstanceState"

    .prologue
    .line 205
    invoke-super/range {p0 .. p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 206
    invoke-static/range {p0 .. p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 207
    const v19, 0x7f04001b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->setContentView(I)V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    .line 218
    .local v3, actionBar:Landroid/app/ActionBar;
    const v19, 0x7f100073

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    .line 219
    const v19, 0x7f10007b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    .line 220
    const v19, 0x7f100076

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mPeakScheduleSpinner:Landroid/widget/Spinner;

    .line 221
    const v19, 0x7f100079

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mOffPeakScheduleSpinner:Landroid/widget/Spinner;

    .line 222
    const v19, 0x7f100081

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mCalendarSyncSpinner:Landroid/widget/Spinner;

    .line 223
    const v19, 0x7f10007e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mEmailSizeView:Landroid/widget/Spinner;

    .line 225
    const v19, 0x7f100046

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultString:Landroid/widget/TextView;

    .line 226
    const v19, 0x7f100084

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyString:Landroid/widget/TextView;

    .line 227
    const v19, 0x7f10008c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsString:Landroid/widget/TextView;

    .line 228
    const v19, 0x7f100090

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarString:Landroid/widget/TextView;

    .line 229
    const v19, 0x7f100088

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncEmailString:Landroid/widget/TextView;

    .line 232
    const v19, 0x7f100094

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncTasksString:Landroid/widget/TextView;

    .line 234
    const v19, 0x7f100098

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncSmsString:Landroid/widget/TextView;

    .line 235
    const v19, 0x7f100045

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    .line 236
    const v19, 0x7f100085

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    .line 240
    sget-object v19, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v19

    if-lez v19, :cond_1

    .line 252
    :goto_0
    const v19, 0x7f10008d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    .line 253
    const v19, 0x7f100091

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    .line 254
    const v19, 0x7f100089

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncEmailView:Landroid/widget/CheckBox;

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncEmailView:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 256
    const v19, 0x7f100095

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncTasksView:Landroid/widget/CheckBox;

    .line 258
    const v19, 0x7f10009d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mBackgroundAttachmentsView:Landroid/widget/CheckBox;

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mBackgroundAttachmentsView:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 261
    const v19, 0x7f100099

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncSmsView:Landroid/widget/CheckBox;

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncEmailView:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncTasksView:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncSmsView:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mBackgroundAttachmentsView:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultString:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyString:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsString:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarString:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncTasksString:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncEmailString:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncSmsString:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 289
    const v19, 0x7f100072

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setSelected(Z)V

    .line 294
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 295
    .local v2, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    const/4 v11, 0x0

    .line 297
    .local v11, info:Lcom/android/email/mail/Store$StoreInfo;
    if-eqz v2, :cond_2

    .line 298
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v11

    .line 299
    if-nez v11, :cond_3

    .line 300
    const-string v19, "Email"

    const-string v20, "info is null "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static/range {p0 .. p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->finish()V

    .line 485
    :cond_0
    :goto_1
    return-void

    .line 242
    .end local v2           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v11           #info:Lcom/android/email/mail/Store$StoreInfo;
    :cond_1
    const v19, 0x7f100044

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 310
    .restart local v2       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v11       #info:Lcom/android/email/mail/Store$StoreInfo;
    :cond_2
    const-string v19, "Email"

    const-string v20, "Account is null "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-static/range {p0 .. p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->finish()V

    goto :goto_1

    .line 316
    :cond_3
    iget-boolean v0, v11, Lcom/android/email/mail/Store$StoreInfo;->mPushSupported:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 317
    const v9, 0x7f0a0008

    .line 318
    .local v9, frequencyValuesId:I
    const v7, 0x7f0a0007

    .line 323
    .local v7, frequencyEntriesId:I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v8

    .line 324
    .local v8, frequencyValues:[Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 327
    .local v6, frequencyEntries:[Ljava/lang/CharSequence;
    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v4, v0, [Lcom/android/email/activity/setup/SpinnerOption;

    .line 328
    .local v4, checkFrequencies:[Lcom/android/email/activity/setup/SpinnerOption;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_5

    .line 329
    new-instance v19, Lcom/android/email/activity/setup/SpinnerOption;

    aget-object v20, v8, v10

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    aget-object v21, v6, v10

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v19, v4, v10

    .line 328
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 320
    .end local v4           #checkFrequencies:[Lcom/android/email/activity/setup/SpinnerOption;
    .end local v6           #frequencyEntries:[Ljava/lang/CharSequence;
    .end local v7           #frequencyEntriesId:I
    .end local v8           #frequencyValues:[Ljava/lang/CharSequence;
    .end local v9           #frequencyValuesId:I
    .end local v10           #i:I
    :cond_4
    const v9, 0x7f0a0004

    .line 321
    .restart local v9       #frequencyValuesId:I
    const v7, 0x7f0a0003

    .restart local v7       #frequencyEntriesId:I
    goto :goto_2

    .line 333
    .restart local v4       #checkFrequencies:[Lcom/android/email/activity/setup/SpinnerOption;
    .restart local v6       #frequencyEntries:[Ljava/lang/CharSequence;
    .restart local v8       #frequencyValues:[Ljava/lang/CharSequence;
    .restart local v10       #i:I
    :cond_5
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v19, 0x1090008

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v5, v0, v1, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 335
    .local v5, checkFrequenciesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v19, 0x1090009

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 339
    iget v0, v11, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 340
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->enableEASSyncWindowSpinner()V

    .line 341
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->enablePeakScheduleWindowSpinner()V

    .line 342
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->enableOffPeakScheduleWindowSpinner()V

    .line 343
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->enableEASEmailSizeSpinner()V

    .line 344
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->enableCalendarSyncWindowSpinner()V

    .line 347
    :cond_6
    const-string v19, "ro.csc.sales_code"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 348
    .local v12, salesCode:Ljava/lang/String;
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_8

    const-string v19, "TNL"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "CRO"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "DTM"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "MAX"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "MBM"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "TPL"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "TRG"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "TMZ"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 355
    :cond_7
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncInterval()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->oldSyncTime:I

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/email/activity/setup/AccountSetupOptions$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions$1;-><init>(Lcom/android/email/activity/setup/AccountSetupOptions;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 387
    :cond_8
    iget-boolean v0, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isDefault()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 388
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 390
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    move-object/from16 v20, v0

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v19

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_11

    const/16 v19, 0x1

    :goto_4
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncInterval()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 395
    const-string v19, "eas"

    iget-object v0, v11, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 398
    const v19, 0x7f10008b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 400
    sget-object v19, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-eqz v19, :cond_12

    .line 401
    sget-object v19, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    invoke-virtual/range {v19 .. v19}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeABSyncFlag()Z

    move-result v15

    .line 402
    .local v15, syncContacts:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 410
    .end local v15           #syncContacts:Z
    :goto_5
    const-string v19, "ro.csc.sales_code"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 411
    .local v13, sales_code:Ljava/lang/String;
    const-string v19, "PTR"

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    const-string v19, "CEL"

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    const-string v19, "MIR"

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 412
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 415
    :cond_c
    const v19, 0x7f10008f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 417
    sget-object v19, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-eqz v19, :cond_13

    .line 418
    sget-object v19, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    invoke-virtual/range {v19 .. v19}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeCalSyncFlag()Z

    move-result v14

    .line 419
    .local v14, syncCalendar:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 427
    .end local v14           #syncCalendar:Z
    :goto_6
    const v19, 0x7f100087

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncEmailView:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 433
    const v19, 0x7f100072

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 440
    const-wide/high16 v17, 0x4004

    .line 441
    .local v17, version:D
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 442
    .local v16, tmpPtVer:Ljava/lang/String;
    if-eqz v16, :cond_d

    .line 443
    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v17

    .line 446
    :cond_d
    const-wide/high16 v19, 0x402c

    cmpl-double v19, v17, v19

    if-ltz v19, :cond_14

    .line 455
    const v19, 0x7f100097

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncSmsView:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 468
    :goto_7
    const-wide/high16 v19, 0x4028

    cmpl-double v19, v17, v19

    if-ltz v19, :cond_e

    .line 469
    const v19, 0x7f100093

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncTasksView:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 477
    .end local v13           #sales_code:Ljava/lang/String;
    .end local v16           #tmpPtVer:Ljava/lang/String;
    .end local v17           #version:D
    :cond_e
    const-string v19, "pop3"

    iget-object v0, v11, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 478
    const v19, 0x7f10009b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 482
    :cond_f
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isAutoSetup()Z

    move-result v19

    if-nez v19, :cond_10

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 483
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->onDone()V

    goto/16 :goto_1

    .line 390
    :cond_11
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 406
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_5

    .line 423
    .restart local v13       #sales_code:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_6

    .line 463
    .restart local v16       #tmpPtVer:Ljava/lang/String;
    .restart local v17       #version:D
    :cond_14
    const v19, 0x7f100097

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 165
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 180
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 196
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 187
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDonePressed:Z

    if-nez v1, :cond_0

    .line 188
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDonePressed:Z

    .line 189
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->onDone()V

    goto :goto_0

    .line 193
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->onBackPressed()V

    goto :goto_0

    .line 180
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100039 -> :sswitch_0
        0x7f1002bb -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 172
    const v0, 0x7f1002bb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mPreviousButton:Landroid/view/MenuItem;

    .line 173
    const v0, 0x7f100039

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mNextButton:Landroid/view/MenuItem;

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 489
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onResume()V

    .line 490
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 493
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSaveAccountAndFinish:Z

    if-nez v1, :cond_0

    .line 494
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->setAccountId(J)V

    .line 495
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinished(Landroid/app/Activity;J)V

    .line 496
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->finish()V

    .line 499
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 971
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v0, v1

    .line 1151
    :goto_1
    return v0

    .line 973
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 993
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 1013
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    .line 1036
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_3

    .line 1060
    :sswitch_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_4

    .line 1083
    :sswitch_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_5

    .line 1104
    :sswitch_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_6

    .line 1128
    :sswitch_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_7

    goto :goto_0

    .line 1130
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mBackgroundAttachmentsView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    .line 975
    :pswitch_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    .line 978
    :pswitch_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    .line 981
    :pswitch_3
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    .line 984
    :pswitch_4
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 985
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 986
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 989
    :goto_2
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    goto :goto_1

    .line 988
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 995
    :pswitch_5
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    .line 998
    :pswitch_6
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    .line 1001
    :pswitch_7
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 1004
    :pswitch_8
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 1005
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1006
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1009
    :goto_3
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 1008
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 1015
    :pswitch_9
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 1018
    :pswitch_a
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 1021
    :pswitch_b
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 1024
    :pswitch_c
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 1025
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1026
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1031
    :goto_4
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 1028
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4

    .line 1038
    :pswitch_d
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 1041
    :pswitch_e
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 1044
    :pswitch_f
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 1047
    :pswitch_10
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 1048
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1049
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1054
    :goto_5
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 1051
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    .line 1062
    :pswitch_11
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncEmailView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 1065
    :pswitch_12
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncEmailView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 1068
    :pswitch_13
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncEmailView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 1071
    :pswitch_14
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncEmailView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 1072
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncEmailView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1073
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncEmailView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1076
    :goto_6
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncEmailView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 1075
    :cond_4
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncEmailView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_6

    .line 1085
    :pswitch_15
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncTasksView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 1088
    :pswitch_16
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncTasksView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 1091
    :pswitch_17
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncTasksView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 1094
    :pswitch_18
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncTasksView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 1095
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncTasksView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1096
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncTasksView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1099
    :goto_7
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncTasksView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 1098
    :cond_5
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncTasksView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_7

    .line 1106
    :pswitch_19
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncSmsView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 1109
    :pswitch_1a
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncSmsView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 1112
    :pswitch_1b
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncSmsView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 1115
    :pswitch_1c
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncSmsView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 1116
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncSmsView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1117
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncSmsView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1122
    :goto_8
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncSmsView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 1119
    :cond_6
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncSmsView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_8

    .line 1133
    :pswitch_1d
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mBackgroundAttachmentsView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 1136
    :pswitch_1e
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mBackgroundAttachmentsView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 1139
    :pswitch_1f
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mBackgroundAttachmentsView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 1140
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mBackgroundAttachmentsView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1141
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mBackgroundAttachmentsView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1146
    :goto_9
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAutoDownloadView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 1143
    :cond_7
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mBackgroundAttachmentsView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_9

    .line 971
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100046 -> :sswitch_0
        0x7f100084 -> :sswitch_1
        0x7f100088 -> :sswitch_4
        0x7f10008c -> :sswitch_2
        0x7f100090 -> :sswitch_3
        0x7f100094 -> :sswitch_5
        0x7f100098 -> :sswitch_6
        0x7f10009c -> :sswitch_7
    .end sparse-switch

    .line 973
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 993
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1013
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_c
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 1036
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_d
        :pswitch_10
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 1060
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_11
        :pswitch_14
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 1083
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_15
        :pswitch_18
        :pswitch_16
        :pswitch_17
    .end packed-switch

    .line 1104
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_19
        :pswitch_1c
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    .line 1128
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1f
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method
