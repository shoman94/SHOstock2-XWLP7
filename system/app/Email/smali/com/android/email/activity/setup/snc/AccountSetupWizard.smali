.class public Lcom/android/email/activity/setup/snc/AccountSetupWizard;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults;,
        Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;,
        Lcom/android/email/activity/setup/snc/AccountSetupWizard$ViewHolder;,
        Lcom/android/email/activity/setup/snc/AccountSetupWizard$ImageAdapter;,
        Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;
    }
.end annotation


# static fields
.field private static mProviderHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private doneMenuItem:Landroid/view/MenuItem;

.field private mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mChangeObserver:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;

.field private mContext:Landroid/content/Context;

.field private mControllerCallback:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults;

.field private mGetMDNDialog:Landroid/app/AlertDialog$Builder;

.field private mGetMDNView:Landroid/widget/EditText;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReportAccountAuthenticatorError:Z

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mShowMDN:Landroid/widget/CheckBox;

.field private mSncEndpointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalAccount:I

.field private mUserEndpointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private pkm:Landroid/content/pm/PackageManager;

.field returnToCallerFlowMode:Z

.field returnToMessageList:Z

.field setUpWizardMode:Z

.field setUpWizardModeFromService:Z

.field setupFromAccountManager:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProviderHash:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    .line 100
    iput-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mSncEndpointList:Ljava/util/List;

    .line 101
    iput-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mUserEndpointList:Ljava/util/List;

    .line 102
    iput-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mSharedPref:Landroid/content/SharedPreferences;

    .line 103
    iput-boolean v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->setUpWizardMode:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->returnToCallerFlowMode:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->returnToMessageList:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->setUpWizardModeFromService:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->setupFromAccountManager:Z

    .line 108
    iput-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mChangeObserver:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;

    .line 114
    iput-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mGetMDNDialog:Landroid/app/AlertDialog$Builder;

    .line 892
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/snc/AccountSetupWizard;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->selectAccount(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/snc/AccountSetupWizard;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getUserConfiguredAccountResponse(Landroid/os/Bundle;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mGetMDNView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->createProgressDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)[Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/email/activity/setup/snc/AccountSetupWizard;[Lcom/android/emailcommon/provider/EmailContent$Account;)[Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object p1
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProviderHash:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->addExchangeAccount()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->showErrorDialog()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/snc/AccountSetupWizard;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->addMailAccount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mTotalAccount:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/email/activity/setup/snc/AccountSetupWizard;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mTotalAccount:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->doneMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/snc/AccountSetupWizard;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getAvailableAccountResponse(Landroid/os/Bundle;Ljava/util/List;)V

    return-void
.end method

.method public static actionAccountCreateFinished(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setFlowMode(I)V

    .line 123
    const-string v1, "com.android.email.extra.return"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method public static actionAccountSetupDone(Landroid/app/Activity;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    const-string v1, "com.android.email.extra.messagelist"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 132
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setFlowMode(I)V

    .line 133
    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 134
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method

.method public static actionNewAccount(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 141
    return-void
.end method

.method private addExchangeAccount()V
    .locals 3

    .prologue
    .line 702
    const-string v0, "AccountSetupWizard"

    const-string v1, "Adding ExchangeAccount"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v0, "Corporate"

    .line 705
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 706
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 707
    const-string v2, "MAIL_PROVIDER"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->startActivity(Landroid/content/Intent;)V

    .line 709
    return-void
.end method

.method private addMailAccount(Ljava/lang/String;)V
    .locals 5
    .parameter "mailProvider"

    .prologue
    .line 712
    const-string v2, "AccountSetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addMailAccount for Provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 715
    .local v1, mDPM:Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/variant/DPMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DPMWraper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 717
    const-string v2, "AccountSetupWizard"

    const-string v3, "POP/IMAP Email account not allowed"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->showErrorDialog()Landroid/app/AlertDialog;

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getSetupIntent()Landroid/content/Intent;

    move-result-object v0

    .line 722
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 723
    const-string v2, "MAIL_PROVIDER"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    const/high16 v2, 0x1400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 725
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->startActivity(Landroid/content/Intent;)V

    .line 726
    sget-boolean v2, Lcom/android/email/Email;->SETUP_FROM_ACCOUNT_MANAGER_FLOW:Z

    if-eqz v2, :cond_0

    .line 727
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->finish()V

    goto :goto_0
.end method

.method private buildDefaultProviderInfo()V
    .locals 5

    .prologue
    .line 358
    const-string v2, "AccountSetupWizard"

    const-string v3, "buildDefaultProviderInfo"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    sget-object v2, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProviderHash:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 360
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-gt v0, v2, :cond_0

    .line 361
    new-instance v1, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Lcom/android/email/esp/ServiceProvider;->getProviderImageResourceId(I)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Lcom/android/email/esp/ServiceProvider;->getAccountProviderName(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Lcom/android/email/esp/ServiceProvider;->getProviderId(I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;-><init>(ILjava/lang/String;I)V

    .line 365
    .local v1, provider:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;
    sget-object v2, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProviderHash:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    .end local v1           #provider:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;
    :cond_0
    return-void
.end method

.method private buildSncProviderInfo()V
    .locals 8

    .prologue
    .line 371
    const-string v1, "AccountSetupWizard"

    const-string v2, "buildSncProviderInfo"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mSncEndpointList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 373
    const-string v1, "AccountSetupWizard"

    const-string v2, "Failed to build provider info since list is null"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_0
    return-void

    .line 376
    :cond_1
    sget-object v1, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProviderHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 377
    const/4 v3, -0x1

    .line 378
    .local v3, providerId:I
    const/4 v7, -0x1

    .line 379
    .local v7, type:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mSncEndpointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mSncEndpointList:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/esp/ServiceProvider;->getSncProvider(Ljava/lang/String;)I

    move-result v3

    .line 381
    const/4 v1, 0x5

    invoke-static {v1, v3}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v7

    .line 382
    new-instance v0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mSncEndpointList:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/esp/ServiceProvider;->getProviderImageFromSnc(Ljava/lang/String;)I

    move-result v1

    invoke-static {v7}, Lcom/android/email/esp/ServiceProvider;->getAccountProviderName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mSncEndpointList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-virtual {v4}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mSncEndpointList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-virtual {v5}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;-><init>(ILjava/lang/String;ILjava/util/List;Ljava/lang/String;)V

    .line 386
    .local v0, provider:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;
    sget-object v1, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProviderHash:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private checkSnCRestoreFlow()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 446
    invoke-static {p0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->checkRestoreFlowDone(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mSncEndpointList:Ljava/util/List;

    if-nez v2, :cond_0

    .line 448
    const-string v2, "AccountSetupWizard"

    const-string v3, "SnC Restore flow not completed, trying again"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    sget-object v2, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProviderHash:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 451
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->createProgressDialog()V

    .line 452
    const/4 v2, 0x5

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v0

    .line 454
    .local v0, type:I
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/Controller;->getAvailableAccounts(I)V

    .line 455
    const-string v2, "snc_settings_preferences"

    invoke-virtual {p0, v2, v1}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mSharedPref:Landroid/content/SharedPreferences;

    .line 457
    const/4 v1, 0x1

    .line 459
    .end local v0           #type:I
    :cond_0
    return v1
.end method

.method private createProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 870
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 871
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 872
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 873
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080566

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 874
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 875
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/email/activity/setup/snc/AccountSetupWizard$6;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$6;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 883
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 884
    const-string v0, "AccountSetupWizard"

    const-string v1, "Created Progress dialog"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    return-void
.end method

.method private getAvailableAccountResponse(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 917
    .line 919
    const-string v0, "AccountSetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAvailableAccountsReceived - Bundle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    if-eqz p2, :cond_0

    .line 921
    const-string v0, "AccountSetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No of Received SncEndpoint - list "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    :cond_0
    if-eqz p1, :cond_1

    .line 924
    const-string v0, "status_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 925
    const-string v0, "status_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 926
    const-string v0, "AccountSetupWizard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAvailableAccountResponse - resultCode :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " errorMessage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    iput-object p2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mSncEndpointList:Ljava/util/List;

    .line 929
    if-nez v3, :cond_2

    invoke-static {p0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->checkRestoreFlowDone(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getInstance(Landroid/content/Context;)Lcom/android/email/syncnconnect/SyncConnectImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->isUserRegistered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 932
    const-string v0, "AccountSetupWizard"

    const-string v1, "onAvailableAccountsReceived - isUserRegistered is [true]"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const/4 v0, 0x5

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v0

    .line 935
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/email/Controller;->getUserConfiguredAccounts(I)V

    .line 1058
    :cond_1
    :goto_0
    return-void

    .line 937
    :cond_2
    const-string v0, "AccountSetupWizard"

    const-string v5, "onAvailableAccountsReceived - isUserRegistered is [false]"

    invoke-static {v0, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    .line 940
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 941
    iput-object v7, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 944
    :cond_3
    const/16 v0, 0x191

    if-eq v3, v0, :cond_4

    const/4 v0, -0x1

    if-ne v3, v0, :cond_5

    :cond_4
    sget-boolean v0, Lcom/android/email/Email;->SNC_DEBUG_DEV:Z

    if-eqz v0, :cond_5

    .line 948
    invoke-direct {p0, v2, v7}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->showGetMDNDialog(ZLjava/lang/String;)V

    goto :goto_0

    .line 957
    :cond_5
    sget-boolean v0, Lcom/android/email/Email;->SETUP_WIZARD_FLOW_FROM_SERVICE:Z

    if-eqz v0, :cond_6

    .line 958
    const-string v0, "AccountSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Account Backed up or Its failure case - errorMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->launchSetupWizard()V

    .line 961
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->finish()V

    goto :goto_0

    .line 964
    :cond_6
    sget-boolean v0, Lcom/android/email/Email;->SETUP_WIZARD_FLOW:Z

    if-eqz v0, :cond_d

    .line 965
    const-string v0, "AccountSetupWizard"

    const-string v5, "SetupWizard Mode"

    invoke-static {v0, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getMailProvider()Ljava/lang/String;

    move-result-object v5

    .line 967
    const-string v0, "Corporate"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "others"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "@verizon.net"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 970
    :goto_1
    if-eqz v3, :cond_8

    if-ne v0, v1, :cond_8

    .line 971
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 972
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 973
    const v1, 0x7f080574

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 974
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 975
    const-string v1, "Ok"

    new-instance v3, Lcom/android/email/activity/setup/snc/AccountSetupWizard$7;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$7;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 982
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 983
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 967
    goto :goto_1

    .line 986
    :cond_8
    const-string v0, "Corporate"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 987
    const-string v0, "AccountSetupWizard"

    const-string v1, "Launching Exchange basics from SetupWizard mode"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->addExchangeAccount()V

    goto/16 :goto_0

    .line 991
    :cond_9
    const-string v0, "others"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "@verizon.net"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 994
    :cond_a
    const-string v0, "AccountSetupWizard"

    const-string v1, "Launching Legacy basics from SetupWizard mode"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/variant/DPMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DPMWraper;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 997
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->showErrorDialog()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1000
    :cond_b
    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 1002
    const-string v0, "AccountSetupWizard"

    const-string v1, "Verizon -  Legacy Account"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.CREATE_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1005
    const-string v1, "MAIL_PROVIDER"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1006
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->startActivity(Landroid/content/Intent;)V

    .line 1007
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->finish()V

    goto/16 :goto_0

    .line 1011
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.CREATE_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1012
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mSncEndpointList:Ljava/util/List;

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setSncEndpointList(Ljava/util/List;)V

    .line 1014
    invoke-static {v7}, Lcom/android/email/activity/setup/SetupData;->setSncProviderString(Ljava/lang/String;)V

    .line 1015
    const-string v1, "MAIL_PROVIDER"

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getMailProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1016
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->startActivity(Landroid/content/Intent;)V

    .line 1017
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->finish()V

    goto/16 :goto_0

    .line 1022
    :cond_d
    if-eqz v3, :cond_10

    .line 1028
    const v0, 0x7f080113

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1029
    if-eqz v4, :cond_e

    .line 1030
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1034
    :cond_e
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1035
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->buildDefaultProviderInfo()V

    .line 1040
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mChangeObserver:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;

    if-eqz v0, :cond_f

    .line 1041
    new-instance v0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mChangeObserver:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;

    .line 1042
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mChangeObserver:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1046
    :cond_f
    const v0, 0x7f1000ac

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 1047
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setTranscriptMode(I)V

    .line 1048
    new-instance v1, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ImageAdapter;

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v1, p0, p0, v2}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ImageAdapter;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;Landroid/content/Context;[Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1049
    new-instance v1, Lcom/android/email/activity/setup/snc/AccountSetupWizard$8;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$8;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    .line 1037
    :cond_10
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->buildSncProviderInfo()V

    goto :goto_2
.end method

.method private getSetupIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 678
    const/4 v0, 0x0

    .line 679
    .local v0, intent:Landroid/content/Intent;
    sget v1, Lcom/android/email/Email;->ACCOUNT_SETUP_OPTION:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 680
    const-string v1, "AccountSetupWizard"

    const-string v2, "getSetupIntent: Legacy Account"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.android.email.CREATE_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 698
    .restart local v0       #intent:Landroid/content/Intent;
    :goto_0
    return-object v0

    .line 685
    :cond_0
    const-string v1, "AccountSetupWizard"

    const-string v2, "getSetupIntent: Snc Account"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.android.email.CREATE_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 694
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mSncEndpointList:Ljava/util/List;

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setSncEndpointList(Ljava/util/List;)V

    goto :goto_0
.end method

.method private getUserConfiguredAccountResponse(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1061
    const-string v0, "AccountSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfiguredAccountsReceived - Bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    if-eqz p2, :cond_0

    .line 1063
    const-string v0, "AccountSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No of Received SncUserEndpoint - list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1068
    iput-object v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1071
    :cond_1
    if-eqz p1, :cond_2

    .line 1072
    const-string v0, "status_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1073
    const-string v1, "status_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1074
    const-string v2, "AccountSetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfiguredAccountsReceived - resultCode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errorMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    if-nez v0, :cond_6

    .line 1078
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1079
    iput-object p2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mUserEndpointList:Ljava/util/List;

    .line 1081
    invoke-static {p0, p2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->actionDisplayAccounts(Landroid/app/Activity;Ljava/util/List;)V

    .line 1123
    :cond_2
    :goto_0
    return-void

    .line 1086
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->buildSncProviderInfo()V

    .line 1087
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_4

    .line 1088
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1089
    iput-object v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1092
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mChangeObserver:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;

    if-eqz v0, :cond_5

    .line 1093
    new-instance v0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mChangeObserver:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;

    .line 1094
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mChangeObserver:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1098
    :cond_5
    const v0, 0x7f1000ac

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 1099
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setTranscriptMode(I)V

    .line 1100
    new-instance v1, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ImageAdapter;

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v1, p0, p0, v2}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ImageAdapter;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;Landroid/content/Context;[Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1101
    new-instance v1, Lcom/android/email/activity/setup/snc/AccountSetupWizard$9;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$9;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 1109
    :cond_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1110
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1111
    const-string v2, "error"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1112
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1113
    const-string v1, "Ok"

    new-instance v2, Lcom/android/email/activity/setup/snc/AccountSetupWizard$10;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$10;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1119
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1120
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private launchSetupWizard()V
    .locals 3

    .prologue
    .line 1191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.setupwizard.START_SETUPWIZARD_ACCOUNTSETUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1192
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/email/Email;->SETUP_WIZARD_FLOW_FROM_SERVICE:Z

    .line 1193
    const-string v1, "AccountSetupWizard"

    const-string v2, "Launching SetupWizard application"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->startActivity(Landroid/content/Intent;)V

    .line 1195
    return-void
.end method

.method private selectAccount(I)V
    .locals 10
    .parameter "position"

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 465
    const-string v3, "AccountSetupWizard"

    const-string v4, "selectAccount"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    sget-object v3, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mProviderHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;

    .line 470
    .local v2, provider:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;
    invoke-virtual {v2}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/activity/setup/SetupData;->setSncProviderString(Ljava/lang/String;)V

    .line 472
    iget-object v3, v2, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->mServiceList:Ljava/util/List;

    invoke-static {v3}, Lcom/android/email/activity/setup/SetupData;->setProviderServiceList(Ljava/util/List;)V

    .line 474
    invoke-virtual {v2}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->getProviderId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 596
    const-string v3, "AccountSetupWizard"

    const-string v4, "No account match !!!"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 476
    :pswitch_0
    const-string v3, "AccountSetupWizard"

    const-string v4, "Exchange account selected"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v3}, Lcom/android/email/esp/ServiceProvider;->checkEasConfigured([Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 478
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->showDialog(I)V

    goto :goto_0

    .line 480
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->addExchangeAccount()V

    goto :goto_0

    .line 484
    :pswitch_1
    const-string v3, "AccountSetupWizard"

    const-string v4, "AOL account selected"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->checkSnCRestoreFlow()Z

    move-result v3

    if-nez v3, :cond_0

    .line 492
    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v8, v3}, Lcom/android/email/esp/ServiceProvider;->checkProviderConfigured(I[Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v3, v4}, Lcom/android/email/esp/ServiceProvider;->checkProviderConfigured(I[Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 496
    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->showDialog(I)V

    goto :goto_0

    .line 498
    :cond_3
    invoke-static {v8}, Lcom/android/email/esp/ServiceProvider;->getProviderString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->addMailAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 502
    :pswitch_2
    const-string v3, "AccountSetupWizard"

    const-string v4, "YAHOO account selected"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->checkSnCRestoreFlow()Z

    move-result v3

    if-nez v3, :cond_0

    .line 510
    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v5, v3}, Lcom/android/email/esp/ServiceProvider;->checkProviderConfigured(I[Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 512
    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->showDialog(I)V

    goto :goto_0

    .line 514
    :cond_4
    invoke-static {v5}, Lcom/android/email/esp/ServiceProvider;->getProviderString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->addMailAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 519
    :pswitch_3
    const-string v3, "AccountSetupWizard"

    const-string v4, "VERIZON account selected"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v7, v3}, Lcom/android/email/esp/ServiceProvider;->checkProviderConfigured(I[Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 522
    invoke-virtual {p0, v7}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->showDialog(I)V

    goto :goto_0

    .line 524
    :cond_5
    const-string v3, "device_policy"

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 526
    .local v1, mDPM:Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/variant/DPMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DPMWraper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 529
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->showErrorDialog()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 532
    :cond_6
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 533
    const/4 v0, 0x0

    .line 535
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "AccountSetupWizard"

    const-string v4, "Verizon -  Legacy Account"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "com.android.email.CREATE_ACCOUNT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "MAIL_PROVIDER"

    invoke-static {v7}, Lcom/android/email/esp/ServiceProvider;->getProviderString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 544
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :pswitch_4
    const-string v3, "AccountSetupWizard"

    const-string v4, "GMAIL account selected"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->checkSnCRestoreFlow()Z

    move-result v3

    if-nez v3, :cond_0

    .line 551
    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v6, v3}, Lcom/android/email/esp/ServiceProvider;->checkProviderConfigured(I[Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 553
    invoke-virtual {p0, v6}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->showDialog(I)V

    goto/16 :goto_0

    .line 555
    :cond_7
    invoke-static {v6}, Lcom/android/email/esp/ServiceProvider;->getProviderString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->addMailAccount(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 560
    :pswitch_5
    const-string v3, "AccountSetupWizard"

    const-string v4, "HOTMAIL account selected"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->checkSnCRestoreFlow()Z

    move-result v3

    if-nez v3, :cond_0

    .line 567
    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v9, v3}, Lcom/android/email/esp/ServiceProvider;->checkProviderConfigured(I[Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 569
    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->showDialog(I)V

    goto/16 :goto_0

    .line 571
    :cond_8
    invoke-static {v9}, Lcom/android/email/esp/ServiceProvider;->getProviderString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->addMailAccount(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 576
    :pswitch_6
    const-string v3, "AccountSetupWizard"

    const-string v4, "OTHER account selected"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v3, "device_policy"

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 579
    .restart local v1       #mDPM:Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/variant/DPMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DPMWraper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 582
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->showErrorDialog()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 585
    :cond_9
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 586
    const/4 v0, 0x0

    .line 588
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "AccountSetupWizard"

    const-string v4, "getSetupIntent: Legacy Account"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "com.android.email.CREATE_ACCOUNT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "MAIL_PROVIDER"

    const/4 v4, 0x7

    invoke-static {v4}, Lcom/android/email/esp/ServiceProvider;->getProviderString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private showErrorDialog()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 657
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08058e

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08058f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080042

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/snc/AccountSetupWizard$3;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$3;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/setup/snc/AccountSetupWizard$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$2;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private showGetMDNDialog(ZLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1126
    .line 1127
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mGetMDNDialog:Landroid/app/AlertDialog$Builder;

    .line 1128
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040088

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1129
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mGetMDNDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1130
    const v0, 0x7f10022b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mGetMDNView:Landroid/widget/EditText;

    .line 1131
    const v0, 0x7f10022c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mShowMDN:Landroid/widget/CheckBox;

    .line 1132
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mShowMDN:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1133
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mGetMDNView:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1134
    if-nez p1, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mGetMDNDialog:Landroid/app/AlertDialog$Builder;

    const-string v1, "SNC: Invalid test MDN"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1136
    const-string v0, "Your MDN is invalid. In test environment, only limited MDN\'s are available. Please enter the valid MDN to proceed, if you have"

    move-object v1, v0

    .line 1142
    :goto_0
    const v0, 0x7f10022a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1143
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1144
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mGetMDNDialog:Landroid/app/AlertDialog$Builder;

    const-string v1, "Cancel"

    new-instance v2, Lcom/android/email/activity/setup/snc/AccountSetupWizard$11;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$11;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1154
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mGetMDNDialog:Landroid/app/AlertDialog$Builder;

    const-string v1, "Ok"

    new-instance v2, Lcom/android/email/activity/setup/snc/AccountSetupWizard$12;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$12;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1182
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mGetMDNDialog:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/email/activity/setup/snc/AccountSetupWizard$13;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$13;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1187
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mGetMDNDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1188
    return-void

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mGetMDNDialog:Landroid/app/AlertDialog$Builder;

    const-string v1, "SNC: Change MDN"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Your current MDN number - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Please enter the new MDN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 161
    const-string v1, "AccountSetupWizard"

    const-string v2, "finish"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-boolean v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mReportAccountAuthenticatorError:Z

    if-eqz v1, :cond_0

    .line 167
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v0

    .line 169
    .local v0, authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v0, :cond_0

    .line 170
    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 171
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 174
    .end local v0           #authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->setResult(I)V

    .line 175
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->finish()V

    .line 176
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 352
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 353
    const-string v0, "AccountSetupWizard"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 180
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    const-string v6, "AccountSetupWizard"

    const-string v7, "Oncreate"

    invoke-static {v6, v7}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const v6, 0x7f04002a

    invoke-virtual {p0, v6}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->setContentView(I)V

    .line 183
    sget-boolean v6, Lcom/android/email/Email;->SNC_DEBUG_DEV:Z

    invoke-static {p0, v6}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->setSncTestServer(Landroid/content/Context;Z)V

    .line 184
    sput-boolean v9, Lcom/android/email/Email;->SETUP_WIZARD_FLOW:Z

    .line 185
    sput-boolean v9, Lcom/android/email/Email;->SETUP_FROM_ACCOUNT_MANAGER_FLOW:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 188
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 189
    const-string v6, "MAIL_PROVIDER"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 190
    const-string v6, "MAIL_PROVIDER"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, mProvider:Ljava/lang/String;
    const-string v6, "AccountSetupWizard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding Mail Account for Provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {v4}, Lcom/android/email/activity/setup/SetupData;->setMailProvider(Ljava/lang/String;)V

    .line 194
    .end local v4           #mProvider:Ljava/lang/String;
    :cond_0
    const-string v6, "com.android.email.extra.messagelist"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->returnToMessageList:Z

    .line 196
    const-string v6, "com.android.email.extra.setwiz_flow"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->setUpWizardMode:Z

    .line 198
    const-string v6, "com.android.email.extra.return"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->returnToCallerFlowMode:Z

    .line 200
    const-string v6, "com.android.email.extra.setwiz_flow_from_google_service"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->setUpWizardModeFromService:Z

    .line 202
    const-string v6, "com.android.email.extra.account_manager_flow"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->setupFromAccountManager:Z

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "accountAuthenticatorResponse"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    .line 209
    .local v0, authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 210
    if-eqz v0, :cond_2

    .line 219
    iput-boolean v10, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mReportAccountAuthenticatorError:Z

    .line 220
    invoke-virtual {v0, v11}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 223
    :cond_2
    iget-boolean v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->setUpWizardMode:Z

    if-ne v6, v10, :cond_5

    .line 225
    sput-boolean v10, Lcom/android/email/Email;->SETUP_WIZARD_FLOW:Z

    .line 226
    const-string v6, "AccountSetupWizard"

    const-string v7, "setUpWizardMode intent true"

    invoke-static {v6, v7}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-static {v9}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 268
    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccounts(Landroid/content/Context;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 269
    iput v9, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mTotalAccount:I

    .line 270
    iget-object v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v6, :cond_4

    .line 271
    iget-object v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

    array-length v6, v6

    iput v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mTotalAccount:I

    .line 272
    const-string v6, "AccountSetupWizard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTotalAccount - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mTotalAccount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_4
    sget v6, Lcom/android/email/Email;->ACCOUNT_SETUP_OPTION:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    .line 277
    new-instance v6, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults;

    invoke-direct {v6, p0, v11}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;Lcom/android/email/activity/setup/snc/AccountSetupWizard$1;)V

    iput-object v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mControllerCallback:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults;

    .line 278
    iput-object v11, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mSncEndpointList:Ljava/util/List;

    .line 279
    iput-object v11, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mUserEndpointList:Ljava/util/List;

    .line 281
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mControllerCallback:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults;

    invoke-virtual {v6, v7}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 282
    const-string v6, "AccountSetupWizard"

    const-string v7, "#######UI Snc Flow Started ######"

    invoke-static {v6, v7}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->createProgressDialog()V

    .line 285
    const/4 v6, 0x5

    const/16 v7, 0x9

    invoke-static {v6, v7}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v5

    .line 287
    .local v5, mType:I
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/email/Controller;->getAvailableAccounts(I)V

    .line 288
    const-string v6, "snc_settings_preferences"

    invoke-virtual {p0, v6, v9}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mSharedPref:Landroid/content/SharedPreferences;

    .line 311
    .end local v5           #mType:I
    :goto_1
    return-void

    .line 230
    :cond_5
    iget-boolean v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->setUpWizardModeFromService:Z

    if-ne v6, v10, :cond_6

    .line 232
    sput-boolean v10, Lcom/android/email/Email;->SETUP_WIZARD_FLOW_FROM_SERVICE:Z

    .line 233
    const-string v6, "AccountSetupWizard"

    const-string v7, "setUpWizardMode from service intent true"

    invoke-static {v6, v7}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {v9}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    goto :goto_0

    .line 236
    :cond_6
    iget-boolean v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->setupFromAccountManager:Z

    if-ne v6, v10, :cond_7

    .line 238
    sput-boolean v10, Lcom/android/email/Email;->SETUP_FROM_ACCOUNT_MANAGER_FLOW:Z

    .line 239
    const-string v6, "AccountSetupWizard"

    const-string v7, "set up from account manager flow is true"

    invoke-static {v6, v7}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {v9}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    goto/16 :goto_0

    .line 241
    :cond_7
    iget-boolean v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->returnToMessageList:Z

    if-ne v6, v10, :cond_9

    .line 242
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    .line 243
    .local v3, mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v3, :cond_8

    .line 244
    const-string v6, "AccountSetupWizard"

    const-string v7, "AccountSetup Done, Go to Message List"

    invoke-static {v6, v7}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-wide v6, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v6, v7}, Lcom/android/email/activity/MessageListXL;->actionOpenAccount(Landroid/app/Activity;J)V

    .line 250
    :goto_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->finish()V

    goto :goto_1

    .line 247
    :cond_8
    const-wide/16 v6, -0x1

    invoke-static {p0, v6, v7}, Lcom/android/email/activity/MessageListXL;->actionOpenAccount(Landroid/app/Activity;J)V

    .line 248
    const-string v6, "AccountSetupWizard"

    const-string v7, "Account is Null in Setup data, Goto Default Account"

    invoke-static {v6, v7}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 253
    .end local v3           #mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_9
    iget-boolean v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->returnToCallerFlowMode:Z

    if-ne v6, v10, :cond_3

    .line 254
    const-string v6, "AccountSetupWizard"

    const-string v7, "Returning to caller activity"

    invoke-static {v6, v7}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-boolean v6, Lcom/android/email/Email;->SETUP_WIZARD_FLOW_FROM_SERVICE:Z

    if-ne v6, v10, :cond_a

    .line 256
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->launchSetupWizard()V

    .line 257
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->finish()V

    goto :goto_1

    .line 260
    :cond_a
    sput-boolean v9, Lcom/android/email/Email;->SETUP_WIZARD_FLOW:Z

    .line 261
    sput-boolean v9, Lcom/android/email/Email;->SETUP_FROM_ACCOUNT_MANAGER_FLOW:Z

    .line 263
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->finish()V

    goto :goto_1

    .line 294
    :cond_b
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mContext:Landroid/content/Context;

    .line 295
    iget-object v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->pkm:Landroid/content/pm/PackageManager;

    .line 297
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->buildDefaultProviderInfo()V

    .line 298
    new-instance v6, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;

    invoke-direct {v6, p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V

    iput-object v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mChangeObserver:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;

    .line 299
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mChangeObserver:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;

    invoke-virtual {v6, v7, v10, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 301
    const v6, 0x7f1000ac

    invoke-virtual {p0, v6}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 302
    .local v1, gridview:Landroid/widget/GridView;
    invoke-virtual {v1, v9}, Landroid/widget/GridView;->setTranscriptMode(I)V

    .line 303
    new-instance v6, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ImageAdapter;

    iget-object v7, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v6, p0, p0, v7}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ImageAdapter;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;Landroid/content/Context;[Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 304
    new-instance v6, Lcom/android/email/activity/setup/snc/AccountSetupWizard$1;

    invoke-direct {v6, p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$1;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 741
    const-string v2, "AccountSetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateDialog for id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-static {p1}, Lcom/android/email/esp/ServiceProvider;->getProviderStringFromType(I)Ljava/lang/String;

    move-result-object v1

    .line 743
    .local v1, mProvider:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 744
    .local v0, mDialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0801cc

    new-instance v3, Lcom/android/email/activity/setup/snc/AccountSetupWizard$4;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$4;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 748
    const v2, 0x7f080562

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 749
    const v2, 0x7f0801cb

    new-instance v3, Lcom/android/email/activity/setup/snc/AccountSetupWizard$5;

    invoke-direct {v3, p0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$5;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 779
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 780
    const/4 v2, 0x0

    return-object v2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 795
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 796
    const-string v0, "AccountSetupWizard"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 798
    const v0, 0x7f10002a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->doneMenuItem:Landroid/view/MenuItem;

    .line 799
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 338
    const-string v0, "AccountSetupWizard"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onDestroy()V

    .line 340
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mChangeObserver:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mChangeObserver:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 342
    iput-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mChangeObserver:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mControllerCallback:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults;

    if-eqz v0, :cond_1

    .line 345
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mControllerCallback:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 346
    iput-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mControllerCallback:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults;

    .line 348
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 818
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 825
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 827
    :goto_0
    return v0

    .line 820
    :pswitch_0
    const-string v0, "AccountSetupWizard"

    const-string v1, "onOptionsItemSelected"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/Welcome;->actionOpenAccountInbox(Landroid/app/Activity;J)V

    .line 822
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->finish()V

    .line 827
    const/4 v0, 0x1

    goto :goto_0

    .line 818
    nop

    :pswitch_data_0
    .packed-switch 0x7f10002a
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 804
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 805
    iget v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mTotalAccount:I

    if-nez v0, :cond_1

    .line 806
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->doneMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->doneMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 812
    :cond_0
    :goto_0
    const-string v0, "AccountSetupWizard"

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    return v2

    .line 809
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->doneMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->doneMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 314
    const-string v2, "AccountSetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume - mTotalAccount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mTotalAccount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccounts(Landroid/content/Context;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 316
    iput v5, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mTotalAccount:I

    .line 317
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v2, :cond_0

    .line 318
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

    array-length v2, v2

    iput v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mTotalAccount:I

    .line 319
    const v2, 0x7f1000ac

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 320
    .local v1, gridview:Landroid/widget/GridView;
    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ImageAdapter;

    .line 321
    .local v0, adapter:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ImageAdapter;
    if-eqz v0, :cond_0

    .line 322
    const-string v2, "AccountSetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume: adapter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ImageAdapter;->notifyDataSetChanged()V

    .line 326
    .end local v0           #adapter:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ImageAdapter;
    .end local v1           #gridview:Landroid/widget/GridView;
    :cond_0
    iget v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mTotalAccount:I

    if-nez v2, :cond_2

    .line 327
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->doneMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_1

    .line 328
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->doneMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 333
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onResume()V

    .line 334
    return-void

    .line 330
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->doneMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_1

    .line 331
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->doneMenuItem:Landroid/view/MenuItem;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
