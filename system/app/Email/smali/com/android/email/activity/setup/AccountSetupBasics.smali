.class public Lcom/android/email/activity/setup/AccountSetupBasics;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;,
        Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;,
        Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;,
        Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;,
        Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;,
        Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;,
        Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;
    }
.end annotation


# static fields
.field private static customer:Lcom/android/email/activity/setup/AccountSetupCustomer;

.field private static mAccountId:J

.field private static mIsCombined:Z

.field private static mMailProvider:Ljava/lang/String;

.field public static mNextButtonInhibit:Z

.field private static mSncEndpointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field public static sso_fromIM:Z


# instance fields
.field private final ACTION_CREATE_ACCOUNT:Ljava/lang/String;

.field private final ACTION_CREATE_ACCOUNT_ACCOUNTNSETTING:Ljava/lang/String;

.field private final ACTION_CREATE_ACCOUNT_EAS:Ljava/lang/String;

.field private final ACTION_CREATE_ACCOUNT_IM_SSO:Ljava/lang/String;

.field private final DEBUG_ALLOW_NON_TEST_HARNESS_CREATION:Ljava/lang/Boolean;

.field private final EXTRA_CREATE_ACCOUNT_EMAIL:Ljava/lang/String;

.field private final EXTRA_CREATE_ACCOUNT_INCOMING:Ljava/lang/String;

.field private final EXTRA_CREATE_ACCOUNT_OUTGOING:Ljava/lang/String;

.field private final EXTRA_CREATE_ACCOUNT_USER:Ljava/lang/String;

.field private final MAIL_PROVIDER_AOL:Ljava/lang/String;

.field private final MAIL_PROVIDER_GMAIL:Ljava/lang/String;

.field private final MAIL_PROVIDER_VERIZON:Ljava/lang/String;

.field private final MAIL_PROVIDER_WINDOWS_LIVE:Ljava/lang/String;

.field private final MAIL_PROVIDER_YAHOO:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field TouchListener:Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;

.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mCanceled:Z

.field private mControllerCallback:Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;

.field private mDefaultView:Landroid/widget/CheckBox;

.field private mDuplicateAccountDialog:Landroid/app/AlertDialog;

.field private mDuplicateAccountName:Ljava/lang/String;

.field private mEasFlowMode:Z

.field private mEmailValidator:Lcom/android/email/EmailAddressValidator;

.field private mEmailView:Landroid/widget/EditText;

.field private mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

.field private mHandler:Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

.field private mManualButton:Landroid/widget/Button;

.field private mNextButton:Landroid/widget/Button;

.field private mOwnerLookupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mOwnerLookupTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPasswordView:Landroid/widget/EditText;

.field private mPaused:Z

.field private mPremiumView:Landroid/widget/CheckBox;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

.field private mReportAccountAuthenticatorError:Z

.field private mShowPassword:Landroid/widget/CheckBox;

.field private mSncProgressDialog:Landroid/app/ProgressDialog;

.field private mTest:Landroid/widget/TextView;

.field private mWelcomeView:Landroid/widget/TextView;

.field salesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 343
    sget-object v0, Lcom/android/email/activity/Welcome;->customer:Lcom/android/email/activity/setup/AccountSetupCustomer;

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->customer:Lcom/android/email/activity/setup/AccountSetupCustomer;

    .line 345
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mIsCombined:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    .line 164
    const-string v0, "AccountSetupBasics"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->TAG:Ljava/lang/String;

    .line 168
    const-string v0, "@aol.com"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->MAIL_PROVIDER_AOL:Ljava/lang/String;

    .line 170
    const-string v0, "@gmail.com"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->MAIL_PROVIDER_GMAIL:Ljava/lang/String;

    .line 172
    const-string v0, "@verizon.com"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->MAIL_PROVIDER_VERIZON:Ljava/lang/String;

    .line 174
    const-string v0, "@hotmail.com"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->MAIL_PROVIDER_WINDOWS_LIVE:Ljava/lang/String;

    .line 176
    const-string v0, "@yahoo.com"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->MAIL_PROVIDER_YAHOO:Ljava/lang/String;

    .line 184
    const-string v0, "com.android.email.CREATE_ACCOUNT"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->ACTION_CREATE_ACCOUNT:Ljava/lang/String;

    .line 186
    const-string v0, "com.android.email.CREATE_ACCOUNT_EAS"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->ACTION_CREATE_ACCOUNT_EAS:Ljava/lang/String;

    .line 188
    const-string v0, "com.seven.Z7.ACTION_IM_SSO_TO_EMAIL"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->ACTION_CREATE_ACCOUNT_IM_SSO:Ljava/lang/String;

    .line 190
    const-string v0, "intent.seven.action.ADD_ACCOUNT"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->ACTION_CREATE_ACCOUNT_ACCOUNTNSETTING:Ljava/lang/String;

    .line 192
    const-string v0, "EMAIL"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->EXTRA_CREATE_ACCOUNT_EMAIL:Ljava/lang/String;

    .line 194
    const-string v0, "USER"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->EXTRA_CREATE_ACCOUNT_USER:Ljava/lang/String;

    .line 196
    const-string v0, "INCOMING"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->EXTRA_CREATE_ACCOUNT_INCOMING:Ljava/lang/String;

    .line 198
    const-string v0, "OUTGOING"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->EXTRA_CREATE_ACCOUNT_OUTGOING:Ljava/lang/String;

    .line 247
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->DEBUG_ALLOW_NON_TEST_HARNESS_CREATION:Ljava/lang/Boolean;

    .line 260
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 263
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDuplicateAccountDialog:Landroid/app/AlertDialog;

    .line 267
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mHandler:Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

    .line 308
    new-instance v0, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v0}, Lcom/android/email/EmailAddressValidator;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    .line 327
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncProgressDialog:Landroid/app/ProgressDialog;

    .line 346
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    .line 1170
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->TouchListener:Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;

    .line 1447
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$5;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$5;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupCallable:Ljava/util/concurrent/Callable;

    .line 2359
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;)Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mHandler:Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics;->onNextManualSetup(Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/setup/AccountSetupBasics;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/email/activity/setup/AccountSetupBasics;Landroid/os/Bundle;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 158
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupBasics;->addUserAccountResponse(Landroid/os/Bundle;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mShowPassword:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSetupBasics;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics;->showHidePassword(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->validateFields()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSetupBasics;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPaused:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finishAutoSetup()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public static actionAccountCreateFinished(Landroid/app/Activity;J)V
    .locals 1
    .parameter "fromActivity"
    .parameter "accountId"

    .prologue
    .line 459
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupBasics$1;-><init>(Landroid/app/Activity;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 479
    return-void
.end method

.method public static actionAccountCreateFinishedAccountFlow(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 435
    .line 445
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 450
    sget v1, Lcom/android/email/Email;->ACCOUNT_SETUP_OPTION:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 451
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 454
    :goto_0
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 455
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 456
    return-void

    .line 453
    :cond_0
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    goto :goto_0
.end method

.method public static actionAccountCreateFinishedFromSetting(Landroid/app/Activity;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 483
    .line 486
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 497
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 498
    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 501
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 502
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 503
    return-void
.end method

.method public static actionNewAccount(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 352
    invoke-static {v0}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 368
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 369
    sget v0, Lcom/android/email/Email;->ACCOUNT_SETUP_OPTION:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 370
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 374
    :goto_0
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 376
    return-void

    .line 372
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static actionRestoreExchangeAccount(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 379
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 381
    const-string v1, "Corporate"

    .line 382
    const-string v2, "MAIL_PROVIDER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string v1, "SncRestoreFlow"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 384
    invoke-static {v3}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 385
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 386
    return-void
.end method

.method public static actionSetupExchangeIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 394
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 397
    sget v0, Lcom/android/email/Email;->ACCOUNT_SETUP_OPTION:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 398
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 399
    const-string v1, "com.android.email.extra.setwiz_flow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 400
    const-string v1, "MAIL_PROVIDER"

    const-string v2, "Corporate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    :goto_0
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 407
    return-object v0

    .line 402
    :cond_0
    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 403
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static actionSetupPopImapIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 416
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 418
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 424
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 426
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 427
    return-object v0
.end method

.method private addUserAccountResponse(Landroid/os/Bundle;J)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 2373
    const-string v0, "AccountSetupBasics"

    const-string v1, "addUserAccountResponse"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 2375
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mCanceled:Z

    if-ne v0, v5, :cond_1

    .line 2376
    const-string v0, "AccountSetupBasics"

    const-string v1, "User Already Canceled"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2406
    :cond_0
    :goto_0
    return-void

    .line 2379
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 2380
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncProgressDialog:Landroid/app/ProgressDialog;

    .line 2383
    :cond_2
    if-eqz p1, :cond_0

    .line 2384
    const-string v0, "status_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2385
    const-string v1, "status_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2386
    const-string v2, "AccountSetupBasics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addUserAccountResponse - resultCode :"

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

    .line 2388
    if-nez v0, :cond_3

    .line 2389
    invoke-static {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->actionSetNames(Landroid/app/Activity;)V

    .line 2390
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto :goto_0

    .line 2392
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2393
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2394
    const v2, 0x7f080574

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2395
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2396
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2397
    const-string v1, "Ok"

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupBasics$9;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$9;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2403
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private createProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2409
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncProgressDialog:Landroid/app/ProgressDialog;

    .line 2410
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080575

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2411
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 2412
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2413
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2414
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupBasics$10;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$10;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2422
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 2423
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mCanceled:Z

    .line 2424
    const-string v0, "AccountSetupBasics"

    const-string v1, "Created Progress dialog"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2425
    return-void
.end method

.method private finishAutoSetup()V
    .locals 9

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1468
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1469
    const-string v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1470
    const/4 v3, 0x0

    aget-object v3, v0, v3

    .line 1471
    const/4 v4, 0x1

    aget-object v5, v0, v4

    .line 1473
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1474
    if-nez v0, :cond_0

    .line 1475
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    .line 1476
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1480
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v4, v4, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    .line 1481
    const-string v6, "\\$email"

    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1482
    const-string v6, "\\$user"

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1483
    const-string v6, "\\$domain"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1485
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v6

    .line 1486
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v7, v7, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUriTemplate:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V

    .line 1487
    invoke-virtual {v6, v4, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v7, v7, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    .line 1490
    const-string v8, "\\$email"

    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1491
    const-string v8, "\\$user"

    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1492
    const-string v7, "\\$domain"

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1494
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 1495
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v7, v7, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUriTemplate:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V

    .line 1496
    if-eqz v3, :cond_1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 1498
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    :goto_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getOwnerName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->populateSetupData(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1508
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;

    iget-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1520
    :goto_1
    return-void

    .line 1500
    :cond_2
    invoke-virtual {v0, v3, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1509
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private forceCreateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1849
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1851
    if-nez v0, :cond_0

    .line 1852
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    .line 1853
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1857
    :cond_0
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 1858
    invoke-static {v1, p3}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V

    .line 1860
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 1861
    invoke-static {v0, p4}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V

    .line 1863
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->populateSetupData(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1870
    :goto_0
    return-void

    .line 1864
    :catch_0
    move-exception v0

    .line 1867
    const v0, 0x7f0800cd

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getOwnerName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1435
    const/4 v1, 0x0

    .line 1437
    .local v1, result:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    :goto_0
    return-object v1

    .line 1439
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1438
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2351
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2347
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isSncMailProvider(Ljava/lang/String;)Z
    .locals 3
    .parameter "provider"

    .prologue
    const/4 v0, 0x1

    .line 2429
    sget-object v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    const-string v2, "@gmail.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    const-string v2, "@aol.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    const-string v2, "@hotmail.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    const-string v2, "@yahoo.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 2434
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onEnableProceedButtons(ZZ)V
    .locals 1
    .parameter "manualValid"
    .parameter "nextValid"

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 2074
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2075
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 2076
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isSncFlow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2077
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2078
    :cond_1
    return-void
.end method

.method private onExchange(Z)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, -0x2

    .line 2439
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 2443
    :try_start_0
    new-instance v4, Ljava/net/URI;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 2444
    new-instance v0, Ljava/net/URI;

    const-string v1, "eas+ssl+"

    invoke-virtual {v4}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2446
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 2447
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2455
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 2456
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 2457
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 2476
    new-instance v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v1, 0x1e0

    const/16 v2, 0x3fc

    const/16 v3, 0x3e

    const/4 v6, 0x0

    move v4, v8

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    .line 2482
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    .line 2484
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    .line 2489
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEasFlowMode:Z

    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/email/activity/setup/AccountSetupExchange;->actionIncomingSettings(Landroid/app/Activity;Lcom/android/emailcommon/provider/EmailContent$Account;ZZZ)V

    .line 2491
    return-void

    .line 2448
    :catch_0
    move-exception v0

    .line 2452
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private onManualSetup(Z)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1777
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1778
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1779
    const-string v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1780
    aget-object v3, v0, v8

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1781
    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1783
    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1784
    array-length v0, v0

    if-le v0, v7, :cond_0

    .line 1786
    const v0, 0x7f0800cd

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1835
    :goto_0
    return-void

    .line 1794
    :cond_0
    const-string v0, "d@d.d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "debug"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1795
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1796
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1797
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->actionSettingsWithDebug(Landroid/content/Context;)V

    goto :goto_0

    .line 1801
    :cond_1
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1803
    if-nez v0, :cond_2

    .line 1804
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    .line 1805
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1808
    :cond_2
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1810
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v5

    .line 1811
    invoke-virtual {v5, v3, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    const-string v6, "placeholder"

    invoke-virtual {v5, v6, v4, v9, v8}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1814
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 1815
    invoke-virtual {v0, v3, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    const-string v2, "placeholder"

    invoke-virtual {v0, v2, v4, v9, v8}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1818
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getOwnerName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->populateSetupData(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1820
    invoke-static {p1}, Lcom/android/email/activity/setup/SetupData;->setAllowAutodiscover(Z)V

    .line 1823
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mIsCombined:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    if-eq v0, v7, :cond_3

    .line 1828
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics;->onExchange(Z)V

    goto :goto_0

    .line 1830
    :cond_3
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->actionSelectAccountType(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private onNext()V
    .locals 10

    .prologue
    const v9, 0x7f0800cf

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 1598
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    if-eq v0, v5, :cond_11

    .line 1599
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1600
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1601
    aget-object v2, v1, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1602
    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1603
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1606
    sget v4, Lcom/android/email/Email;->ACCOUNT_SETUP_OPTION:I

    if-ne v4, v8, :cond_9

    sget-object v4, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->isSncMailProvider(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v5, :cond_9

    .line 1611
    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->findDuplicateAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDuplicateAccountName:Ljava/lang/String;

    .line 1612
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDuplicateAccountName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1613
    const-string v0, "AccountSetupBasics"

    const-string v1, "Duplicate Account !!!!"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1615
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1616
    const v1, 0x7f080574

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1617
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1618
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDuplicateAccountName:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {p0, v9, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1620
    const v1, 0x7f080042

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupBasics$6;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$6;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1626
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1766
    :cond_0
    :goto_0
    return-void

    .line 1631
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->createProgressDialog()V

    .line 1633
    invoke-static {v7}, Lcom/android/email/activity/setup/SetupData;->setFlowMode(I)V

    .line 1635
    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setUsername(Ljava/lang/String;)V

    .line 1636
    invoke-static {v3}, Lcom/android/email/activity/setup/SetupData;->setPassword(Ljava/lang/String;)V

    .line 1637
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setMailProvider(Ljava/lang/String;)V

    .line 1639
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getSncEndpointList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mSncEndpointList:Ljava/util/List;

    .line 1641
    const/4 v0, 0x5

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    .line 1644
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getProviderServiceList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1645
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1646
    new-instance v3, Lcom/android/email/syncnconnect/utils/SncService;

    invoke-direct {v3}, Lcom/android/email/syncnconnect/utils/SncService;-><init>()V

    .line 1647
    const-string v4, "Mail"

    invoke-virtual {v3, v4}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceName(Ljava/lang/String;)V

    .line 1648
    const-string v4, "1"

    invoke-virtual {v3, v4}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceId(Ljava/lang/String;)V

    .line 1649
    const-string v4, "N"

    invoke-virtual {v3, v4}, Lcom/android/email/syncnconnect/utils/SncService;->setIsNotified(Ljava/lang/String;)V

    .line 1650
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1651
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setProviderServiceList(Ljava/util/List;)V

    .line 1654
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1656
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getSncProviderString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1657
    const-string v2, "gmail"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "google"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1658
    :cond_3
    const-string v0, "Google"

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setSncProviderString(Ljava/lang/String;)V

    .line 1668
    :cond_4
    :goto_1
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getSncProviderString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getProviderServiceList()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->addUserAccount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1659
    :cond_5
    const-string v2, "aol"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "aim"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1660
    :cond_6
    const-string v0, "AOL"

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setSncProviderString(Ljava/lang/String;)V

    goto :goto_1

    .line 1661
    :cond_7
    const-string v2, "yahoo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1662
    const-string v0, "Yahoo"

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setSncProviderString(Ljava/lang/String;)V

    goto :goto_1

    .line 1663
    :cond_8
    const-string v2, "hotmail"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1664
    const-string v0, "MSN"

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setSncProviderString(Ljava/lang/String;)V

    goto :goto_1

    .line 1681
    :cond_9
    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mIsCombined:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    if-eq v0, v5, :cond_d

    .line 1689
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1692
    :try_start_0
    const-string v0, "Email"

    const-string v1, "checking the seven email account address which is different with the original email address user put"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.seven.provider.email/accounts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "email"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "user_name"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user_name=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' or email=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 1703
    if-eqz v1, :cond_12

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_12

    .line 1704
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDuplicateAccountDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_a

    .line 1705
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDuplicateAccountDialog:Landroid/app/AlertDialog;

    const v2, 0x7f0800cf

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1710
    :cond_a
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->showDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1716
    if-eqz v1, :cond_0

    .line 1717
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1713
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 1714
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1716
    if-eqz v1, :cond_b

    .line 1717
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1722
    :cond_b
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->onSetupForPremiumAccount()V

    goto/16 :goto_0

    .line 1716
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v6, :cond_c

    .line 1717
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1716
    :cond_c
    throw v0

    .line 1728
    :cond_d
    invoke-static {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsUtils;->findProviderCustomer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .line 1732
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    if-nez v0, :cond_f

    .line 1734
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    if-eqz v0, :cond_e

    .line 1735
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_e

    .line 1737
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    invoke-virtual {v0, v5}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->cancel(Z)Z

    .line 1738
    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    .line 1742
    :cond_e
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    .line 1743
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    new-array v1, v5, [Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 1748
    :cond_f
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1749
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;

    move-result-object v0

    .line 1751
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "NoteDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1755
    :goto_5
    sget-boolean v0, Lcom/android/email/activity/setup/SetupData;->mIsAutoSetupFinished:Z

    if-nez v0, :cond_0

    .line 1756
    invoke-direct {p0, v5}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto/16 :goto_0

    .line 1753
    :cond_10
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finishAutoSetup()V

    goto :goto_5

    .line 1761
    :cond_11
    invoke-direct {p0, v5}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto/16 :goto_0

    .line 1716
    :cond_12
    if-eqz v1, :cond_b

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_4

    .line 1713
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private onNextManualSetup(Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V
    .locals 3
    .parameter

    .prologue
    .line 2038
    const-string v0, "email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 2041
    if-eqz p1, :cond_0

    .line 2042
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .line 2043
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finishAutoSetup()V

    .line 2047
    :cond_0
    return-void
.end method

.method private onSetupForPremiumAccount()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 2250
    .line 2252
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "SNS_DISCLAIMER_AGREE"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2257
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2258
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2261
    if-ne v0, v4, :cond_2

    .line 2262
    invoke-static {}, Lcom/seven/Z7/app/SubscriptionStatus;->isApplicationUsageDisclaimerAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2263
    invoke-static {v4}, Lcom/seven/Z7/app/SubscriptionStatus;->setApplicationUsageDisclaimerAccepted(Z)V

    .line 2277
    :cond_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 2278
    if-nez v0, :cond_1

    .line 2279
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    .line 2280
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 2282
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getOwnerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 2283
    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailAddress(Ljava/lang/String;)V

    .line 2284
    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 2285
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 2286
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setDefault(Z)V

    .line 2291
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {p0, v2, v3, v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->actionNewAccount(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2293
    :goto_1
    return-void

    .line 2253
    :catch_0
    move-exception v0

    .line 2254
    const-string v2, "AccountSetupBasics"

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    .line 2267
    :cond_2
    invoke-static {}, Lcom/seven/Z7/app/SubscriptionStatus;->isApplicationUsageDisclaimerAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2268
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2269
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2270
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2272
    :cond_3
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->actionNewAccountPremium(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method private populateSetupData(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1876
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1877
    if-nez v0, :cond_0

    .line 1878
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    .line 1879
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1882
    :cond_0
    sput-boolean v4, Lcom/android/email/activity/setup/SetupData;->mIsAutoSetupFinished:Z

    .line 1883
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 1884
    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailAddress(Ljava/lang/String;)V

    .line 1885
    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 1886
    invoke-virtual {v0, p3}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 1887
    invoke-static {p3}, Lcom/android/email/activity/setup/SetupData;->setDefault(Z)V

    .line 1890
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 1892
    const-string v2, "imap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1897
    invoke-virtual {v0, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 1901
    :cond_1
    const-string v2, "eas"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1902
    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 1928
    :goto_0
    const-string v2, "imap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1929
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getMailProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "verizon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1930
    invoke-static {v6, v7}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    .line 1948
    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1950
    return-void

    .line 1910
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v2, "MAX"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "DTM"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "TNL"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "TMZ"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "TMU"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "TPL"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "COS"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "TMS"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "TRG"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "MBM"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "TMT"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1918
    :cond_4
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    goto/16 :goto_0

    .line 1924
    :cond_5
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    goto/16 :goto_0

    .line 1933
    :cond_6
    invoke-static {v6, v8}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    goto/16 :goto_1

    .line 1936
    :cond_7
    const-string v2, "pop3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1937
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getMailProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "verizon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1938
    invoke-static {v5, v7}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    goto/16 :goto_1

    .line 1941
    :cond_8
    invoke-static {v5, v8}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    goto/16 :goto_1

    .line 1944
    :cond_9
    const-string v2, "eas"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1945
    invoke-static {v4, v4}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    goto/16 :goto_1
.end method

.method public static setAccountId(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 555
    sput-wide p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccountId:J

    .line 556
    return-void
.end method

.method private showHidePassword(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 1262
    if-eqz p1, :cond_0

    .line 1263
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    const/16 v2, 0x91

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 1270
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1271
    .local v0, password:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1272
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->invalidate()V

    .line 1273
    return-void

    .line 1267
    .end local v0           #password:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method private validateFields()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1351
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/EmailAddressValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1356
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1359
    :cond_0
    invoke-direct {p0, v0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->onEnableProceedButtons(ZZ)V

    .line 1361
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mIsCombined:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 1365
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    const v1, 0x7f08002d

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1366
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    const/high16 v1, 0x4150

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 1372
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 1373
    return-void

    .line 1351
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1368
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    const v1, 0x7f080053

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1369
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 1335
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->validateFields()V

    .line 1336
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1342
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 1240
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mReportAccountAuthenticatorError:Z

    if-eqz v0, :cond_0

    .line 1241
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v0

    .line 1243
    if-eqz v0, :cond_0

    .line 1244
    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 1245
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 1249
    :cond_0
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->finish()V

    .line 1250
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v5, 0x0

    .line 2297
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2298
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    .line 2299
    if-ne p2, v1, :cond_2

    .line 2304
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 2306
    if-eqz v0, :cond_1

    .line 2307
    new-array v3, v2, [Ljava/lang/String;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    .line 2311
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x19a

    const/4 v4, 0x4

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    .line 2320
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    .line 2344
    :cond_0
    :goto_1
    return-void

    .line 2315
    :cond_1
    const-string v0, "Email"

    const-string v1, "onActivityResult() error: getAccount() returns null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2325
    :cond_2
    const/16 v0, 0x3f3

    if-ne p1, v0, :cond_3

    .line 2326
    sput-boolean v5, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 2327
    if-ne p2, v1, :cond_3

    .line 2328
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2329
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2330
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupForSeven;->actionNewAccount(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 2338
    :cond_3
    if-ne p1, v2, :cond_0

    .line 2339
    if-ne p2, v1, :cond_0

    .line 2340
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto :goto_1
.end method

.method public onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .locals 1
    .parameter "result"
    .parameter "hostAuth"

    .prologue
    .line 1976
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2239
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onCancel"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2240
    sput-boolean v2, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 2242
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    if-ne v0, p1, :cond_0

    .line 2243
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mHandler:Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->progress(Z)V

    .line 2245
    :cond_0
    return-void
.end method

.method public onCheckSettingsComplete(I)V
    .locals 1
    .parameter "result"

    .prologue
    const/4 v0, 0x0

    .line 1961
    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 1963
    if-nez p1, :cond_0

    .line 1964
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->actionOptions(Landroid/app/Activity;)V

    .line 1965
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mReportAccountAuthenticatorError:Z

    .line 1968
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1287
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1329
    :cond_0
    :goto_0
    return-void

    .line 1291
    :sswitch_0
    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto :goto_0

    .line 1295
    :sswitch_1
    const-string v0, "AccountSetupBasics"

    const-string v1, "play register activity"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isSncFlow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1297
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->actionShowAccount(Landroid/app/Activity;J)V

    .line 1298
    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 1299
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto :goto_0

    .line 1301
    :cond_1
    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1305
    sput-boolean v3, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 1309
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->onNext()V

    goto :goto_0

    .line 1314
    :sswitch_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1315
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1319
    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->validateFields()V

    goto :goto_0

    .line 1317
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 1322
    :sswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->validateFields()V

    goto :goto_0

    .line 1325
    :sswitch_4
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->showHidePassword(Z)V

    .line 1326
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->validateFields()V

    goto :goto_0

    .line 1287
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100038 -> :sswitch_0
        0x7f100039 -> :sswitch_1
        0x7f100041 -> :sswitch_3
        0x7f100042 -> :sswitch_2
        0x7f100048 -> :sswitch_4
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 1219
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1225
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter

    .prologue
    const/16 v11, 0x8

    const/4 v3, 0x0

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 569
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 571
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->customer:Lcom/android/email/activity/setup/AccountSetupCustomer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getInstance()Lcom/android/email/activity/setup/AccountSetupCustomer;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->customer:Lcom/android/email/activity/setup/AccountSetupCustomer;

    .line 573
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->customer:Lcom/android/email/activity/setup/AccountSetupCustomer;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupCustomer;->isCombinedEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 574
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mIsCombined:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :goto_0
    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mIsCombined:Z

    if-nez v0, :cond_4

    .line 597
    const-string v0, "com.seven.Z7.ACTION_IM_SSO_TO_EMAIL"

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "intent.seven.action.ADD_ACCOUNT"

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 599
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    .line 1097
    :cond_2
    :goto_1
    return-void

    .line 575
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mIsCombined:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    const-string v4, "Z7App"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    sput-boolean v2, Lcom/android/email/activity/setup/AccountSetupBasics;->mIsCombined:Z

    goto :goto_0

    .line 606
    :cond_4
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 608
    sput-boolean v2, Lcom/android/email/activity/setup/SetupData;->mIsAutoSetupFinished:Z

    .line 612
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "MAIL_PROVIDER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    .line 613
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 614
    const-string v0, ""

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    .line 615
    :cond_5
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setMailProvider(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 625
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "SncRestoreFlow"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 627
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setSncFlowMode(Z)V

    .line 630
    const-string v0, "com.android.email.CREATE_ACCOUNT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "com.seven.Z7.ACTION_IM_SSO_TO_EMAIL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "intent.seven.action.ADD_ACCOUNT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 632
    :cond_6
    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 637
    :cond_7
    :goto_2
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v5

    .line 638
    const/4 v0, 0x5

    if-ne v5, v0, :cond_9

    .line 640
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto :goto_1

    .line 633
    :cond_8
    const-string v0, "com.android.email.CREATE_ACCOUNT_EAS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 634
    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    goto :goto_2

    .line 642
    :cond_9
    const/4 v0, 0x6

    if-ne v5, v0, :cond_b

    .line 643
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 644
    if-eqz v0, :cond_d

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_d

    .line 645
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->GetComposerIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 646
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->GetComposerIntent()Landroid/content/Intent;

    move-result-object v1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v1, v3, v4}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;Landroid/content/Intent;J)Z

    .line 652
    :goto_3
    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 653
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto/16 :goto_1

    .line 650
    :cond_a
    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/Welcome;->actionOpenAccountInbox(Landroid/app/Activity;J)V

    goto :goto_3

    .line 656
    :cond_b
    if-ne v5, v10, :cond_d

    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupNames;->forceSync:Z

    if-ne v0, v1, :cond_d

    .line 659
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 660
    if-eqz v0, :cond_c

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_c

    .line 661
    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/Welcome;->actionOpenAccountInbox(Landroid/app/Activity;J)V

    .line 663
    :cond_c
    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 664
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto/16 :goto_1

    .line 669
    :cond_d
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mCanceled:Z

    .line 672
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    const-string v6, "@hotmail.com"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 673
    :cond_e
    const v0, 0x7f04000f

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->setContentView(I)V

    .line 681
    :goto_4
    const-string v0, "AccountSetupBasics"

    const-string v6, "onCreate"

    invoke-static {v0, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    const-string v6, "@hotmail.com"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 686
    const/4 v0, 0x4

    new-array v6, v0, [Lcom/android/email/activity/setup/SpinnerOption;

    new-instance v0, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "hotmail.com"

    invoke-direct {v0, v7, v8}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v6, v2

    new-instance v0, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "msn.com"

    invoke-direct {v0, v7, v8}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v6, v1

    new-instance v0, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "live.com"

    invoke-direct {v0, v7, v8}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v6, v10

    const/4 v0, 0x3

    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Other"

    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v6, v0

    .line 692
    const v0, 0x7f10004b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 694
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    invoke-direct {v7, p0, v8, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 696
    const v6, 0x1090009

    invoke-virtual {v7, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 698
    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 700
    new-instance v6, Lcom/android/email/activity/setup/AccountSetupBasics$2;

    invoke-direct {v6, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$2;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 744
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->dispatchSetSelected(Z)V

    .line 750
    :cond_f
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    if-eq v0, v1, :cond_1f

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEasFlowMode:Z

    .line 752
    const v0, 0x7f10002c

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mWelcomeView:Landroid/widget/TextView;

    .line 753
    const v0, 0x7f100041

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    .line 754
    const v0, 0x7f10003d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    .line 755
    const v0, 0x7f10001c

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    .line 756
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 757
    const v0, 0x7f100048

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mShowPassword:Landroid/widget/CheckBox;

    .line 758
    const v0, 0x7f100045

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    .line 760
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isSncFlow()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupConstants;->ENABLE_SNC_ACCOUNT_SETUP:Z

    if-ne v0, v1, :cond_10

    sget-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-eqz v0, :cond_10

    .line 762
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 763
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 766
    :cond_10
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 767
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 768
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 769
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 770
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 773
    const v0, 0x7f100049

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mTest:Landroid/widget/TextView;

    .line 774
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mTest:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->TouchListener:Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 777
    const v0, 0x7f100042

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 779
    const v0, 0x7f100046

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->TouchListener:Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 783
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSetupBasics$1;)V

    new-array v6, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v6}, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 786
    sput-boolean v2, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 788
    const v0, 0x7f100038

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    .line 789
    const v0, 0x7f100039

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    .line 793
    if-ne v5, v1, :cond_23

    .line 794
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isSncFlow()Z

    move-result v0

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupConstants;->ENABLE_SNC_ACCOUNT_SETUP:Z

    if-ne v0, v1, :cond_20

    sget-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-eqz v0, :cond_20

    .line 796
    const v0, 0x7f080577

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->setTitle(I)V

    .line 797
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mWelcomeView:Landroid/widget/TextView;

    const v5, 0x7f080592

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 799
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    const v5, 0x7f08056e

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 801
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    const v5, 0x7f08056b

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 802
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 821
    :cond_11
    :goto_6
    invoke-direct {p0, v2, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->onEnableProceedButtons(ZZ)V

    .line 823
    sput-boolean v2, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 825
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 826
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 832
    const-string v0, "HUI"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "TIM"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "ORA"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "FTM"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "ORO"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "ONE"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "AMN"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "IDE"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "PTR"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "PCL"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "CEL"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "MIR"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "ILO"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 838
    :cond_12
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 850
    :goto_7
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->validateFields()V

    .line 858
    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mIsCombined:Z

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    if-eq v0, v1, :cond_27

    .line 869
    :try_start_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.email"

    const-string v7, "com.android.email.activity.setup.AccountSetupForSeven"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 873
    const v0, 0x7f10003f

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 874
    const v0, 0x7f100040

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 876
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "com.android.email.AccountSetupBasics.ispType"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "com.seven.Z7.ACTION_IM_SSO_TO_EMAIL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 878
    :cond_13
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 893
    :cond_14
    :goto_8
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "accountAuthenticatorResponse"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    .line 895
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 896
    if-eqz v0, :cond_15

    .line 906
    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mReportAccountAuthenticatorError:Z

    .line 910
    :cond_15
    const-string v0, ""

    .line 912
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isSncFlow()Z

    move-result v0

    if-eqz v0, :cond_28

    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupConstants;->ENABLE_SNC_ACCOUNT_SETUP:Z

    if-ne v0, v1, :cond_28

    sget-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-eqz v0, :cond_28

    .line 914
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeEmail()Ljava/lang/String;

    move-result-object v0

    .line 915
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 919
    :goto_9
    if-eqz v0, :cond_16

    .line 920
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 921
    invoke-static {v3}, Lcom/android/email/activity/setup/SetupData;->setUsername(Ljava/lang/String;)V

    .line 924
    :cond_16
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getPassword()Ljava/lang/String;

    move-result-object v5

    .line 925
    if-eqz v0, :cond_17

    .line 926
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 927
    invoke-static {v3}, Lcom/android/email/activity/setup/SetupData;->setPassword(Ljava/lang/String;)V

    .line 930
    :cond_17
    const-string v0, "com.seven.Z7.ACTION_IM_SSO_TO_EMAIL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 931
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 932
    const-string v5, "SSO_ID"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 933
    const-string v5, "SSO_ISP"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 934
    const-string v5, "SSO_ISP"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 935
    const-string v6, "SSO_ID"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 936
    const-string v7, "google"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    const-string v5, "@gmail."

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_29

    const-string v5, "@google."

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_29

    const-string v5, "@googlemail."

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 940
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SSO_ID"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@gmail.com"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 946
    :cond_18
    :goto_a
    const-string v5, "SSO_PW"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 947
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    const-string v6, "SSO_PW"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 949
    :cond_19
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSetupBasics;->sso_fromIM:Z

    .line 954
    :cond_1a
    const-string v0, "com.android.email.CREATE_ACCOUNT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 955
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 956
    const-string v4, "com.android.email.AccountSetupBasics.ispType"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 957
    const-string v4, "com.android.email.AccountSetupBasics.ispType"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_2c

    .line 958
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 961
    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 966
    :goto_b
    :try_start_4
    sget-object v5, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    sget-object v5, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "de"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 967
    :cond_1b
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    const-string v4, "@googlemail.com"

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3

    .line 985
    :cond_1c
    :goto_c
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_1d

    .line 986
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 987
    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 991
    :cond_1d
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getActionBar()Landroid/app/ActionBar;

    .line 1001
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_31

    .line 1002
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->DEBUG_ALLOW_NON_TEST_HARNESS_CREATION:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1003
    const-string v0, "Email"

    const-string v1, "ERROR: Force account create only allowed while in test harness"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto/16 :goto_1

    .line 676
    :cond_1e
    const v0, 0x7f040012

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->setContentView(I)V

    goto/16 :goto_4

    :cond_1f
    move v0, v2

    .line 750
    goto/16 :goto_5

    .line 807
    :cond_20
    invoke-static {p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/VendorPolicyLoader;->useAlternateExchangeStrings()Z

    move-result v5

    .line 809
    if-eqz v5, :cond_21

    const v0, 0x7f08003c

    :goto_d
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->setTitle(I)V

    .line 811
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mWelcomeView:Landroid/widget/TextView;

    if-eqz v5, :cond_22

    const v0, 0x7f080196

    :goto_e
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    .line 809
    :cond_21
    const v0, 0x7f08003b

    goto :goto_d

    .line 811
    :cond_22
    const v0, 0x7f080195

    goto :goto_e

    .line 815
    :cond_23
    sget v0, Lcom/android/email/Email;->ACCOUNT_SETUP_OPTION:I

    if-ne v0, v10, :cond_11

    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->isSncMailProvider(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_11

    .line 817
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/esp/ServiceProvider;->getProviderStringFromSnc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->setTitle(I)V

    .line 818
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_6

    .line 840
    :cond_24
    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mIsCombined:Z

    if-nez v0, :cond_25

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    if-eq v0, v1, :cond_26

    .line 847
    :cond_25
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_7

    .line 844
    :cond_26
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPremiumView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_7

    .line 881
    :catch_1
    move-exception v0

    .line 882
    const v5, 0x7f10003f

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 883
    const v5, 0x7f100040

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 884
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_8

    .line 888
    :cond_27
    const v0, 0x7f10003f

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 889
    const v0, 0x7f100040

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 917
    :cond_28
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getUsername()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 942
    :cond_29
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    const-string v6, "SSO_ID"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 944
    :cond_2a
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    const-string v6, "SSO_ID"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 962
    :catch_2
    move-exception v0

    .line 963
    const-string v5, "AccountSetupBasics"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto/16 :goto_b

    .line 970
    :cond_2b
    :try_start_5
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    const-string v4, "@gmail.com"

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_c

    .line 972
    :catch_3
    move-exception v0

    .line 973
    const-string v4, "AccountSetupBasics"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 977
    :cond_2c
    const-string v4, "com.android.email.AccountSetupBasics.ispType"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v10, :cond_2d

    .line 978
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    const-string v4, "@hotmail.com"

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 979
    :cond_2d
    const-string v4, "com.android.email.AccountSetupBasics.ispType"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1c

    .line 980
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    const-string v4, "@yahoo.com"

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 1008
    :cond_2e
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1009
    const-string v1, "EMAIL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1010
    const-string v3, "USER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1011
    const-string v4, "INCOMING"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1012
    const-string v5, "OUTGOING"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2f

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2f

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1015
    :cond_2f
    const-string v0, "Email"

    const-string v1, "ERROR: Force account create requires extras EMAIL, USER, INCOMING, OUTGOING"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto/16 :goto_1

    .line 1020
    :cond_30
    invoke-direct {p0, v1, v3, v4, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->forceCreateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->onCheckSettingsComplete(I)V

    goto/16 :goto_1

    .line 1026
    :cond_31
    if-eqz p1, :cond_32

    const-string v0, "AccountSetupBasics.provider"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1027
    const-string v0, "AccountSetupBasics.provider"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .line 1033
    :cond_32
    new-instance v0, Ljava/util/concurrent/FutureTask;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupCallable:Ljava/util/concurrent/Callable;

    invoke-direct {v0, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupTask:Ljava/util/concurrent/FutureTask;

    .line 1034
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupTask:Ljava/util/concurrent/FutureTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1038
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$3;

    invoke-direct {v0, p0, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$3;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1047
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1048
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1049
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1050
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1055
    sget v0, Lcom/android/email/Email;->ACCOUNT_SETUP_OPTION:I

    sget v1, Lcom/android/email/Email;->ACCOUNT_SETUP_OPTION:I

    if-ne v0, v1, :cond_2

    .line 1056
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSetupBasics$1;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mControllerCallback:Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;

    .line 1057
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mControllerCallback:Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    goto/16 :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1984
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1985
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$7;

    invoke-direct {v0, p0, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$7;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1991
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1992
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1994
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0801d4

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1995
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 2034
    :goto_0
    return-object v0

    .line 1996
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1998
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finishAutoSetup()V

    .line 2034
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1209
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onDestroy()V

    .line 1210
    const-string v0, "AccountSetupBasics"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mControllerCallback:Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;

    if-eqz v0, :cond_0

    .line 1213
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mControllerCallback:Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1214
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1415
    const-string v0, "AccountSetupBasics"

    const-string v1, "onFocusChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1417
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 1418
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    const-string v1, "others"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    const-string v1, "Corporate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1420
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1426
    :cond_1
    :goto_0
    return-void

    .line 1422
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/activity/setup/AccountSetupBasics;->mMailProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1101
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1106
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1103
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto :goto_0

    .line 1101
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1174
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onPause()V

    .line 1175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPaused:Z

    .line 1176
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 1178
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1182
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onResume()V

    .line 1184
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 1185
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1186
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1187
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->GetComposerIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1188
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->GetComposerIntent()Landroid/content/Intent;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;Landroid/content/Intent;J)Z

    .line 1194
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    .line 1204
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_0
    :goto_1
    return-void

    .line 1191
    .restart local v0       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_1
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/Welcome;->actionOpenAccountInbox(Landroid/app/Activity;J)V

    goto :goto_0

    .line 1199
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_2
    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPaused:Z

    .line 1200
    sput-boolean v3, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 1202
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mShowPassword:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 1203
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->showHidePassword(Z)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1254
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1255
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    if-eqz v0, :cond_0

    .line 1256
    const-string v0, "AccountSetupBasics.provider"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1258
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1348
    return-void
.end method
