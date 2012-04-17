.class public Lcom/android/email/activity/setup/AccountSetupForSeven;
.super Lcom/seven/Z7/app/Z7AppBaseActivity;
.source "AccountSetupForSeven.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSetupForSeven$7;,
        Lcom/android/email/activity/setup/AccountSetupForSeven$ControllerResult;,
        Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;,
        Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;,
        Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;,
        Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;
    }
.end annotation


# static fields
.field private static final ACCOUNT_INFO_PROJECTION:[Ljava/lang/String;

.field private static isEasExit:Z

.field private static mAccountId:J


# instance fields
.field private accountOptionalName:Ljava/lang/String;

.field protected activeToken:I

.field private connectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/seven/util/IntArrayMap;",
            ">;"
        }
    .end annotation
.end field

.field private isExchange:Z

.field private ispType:I

.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mCancelButton:Landroid/widget/Button;

.field private mCanceled:Z

.field private mControllerResult:Lcom/android/email/Controller$Result;

.field private mDefaultAccount:Z

.field private mDestroyed:Z

.field private mDuplicateAccountName:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mEmailValidator:Lcom/android/email/EmailAddressValidator;

.field private mHandler:Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;

.field private mISPType:I

.field private mListener:Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;

.field private mMessageView:Landroid/widget/TextView;

.field private mPassword:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

.field private provisionOfAddAccountAction:Ljava/lang/String;

.field private selectedISPId:Ljava/lang/String;

.field private selectedISPName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 169
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "flags"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "securityFlags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->ACCOUNT_INFO_PROJECTION:[Ljava/lang/String;

    .line 256
    sput-boolean v3, Lcom/android/email/activity/setup/AccountSetupForSeven;->isEasExit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;-><init>()V

    .line 243
    new-instance v0, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v0}, Lcom/android/email/EmailAddressValidator;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 247
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mHandler:Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;

    .line 283
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->activeToken:I

    .line 1281
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupForSeven;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/AccountSetupForSeven;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showingPopupDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/setup/AccountSetupForSeven;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->stopConnectionTimeOut()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->connectors:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->ACCOUNT_INFO_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/email/activity/setup/AccountSetupForSeven;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->completeAddBasicAccount()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupForSeven;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/setup/AccountSetupForSeven;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupForSeven;->registerPremiumAccountInfo(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSetupForSeven;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->addAccountForSeven()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mDuplicateAccountName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSetupForSeven;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/AccountSetupForSeven;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSetupForSeven;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->setISPServer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/AccountSetupForSeven;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->registerPremiumAccount()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/AccountSetupForSeven;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->invalidateUrl()V

    return-void
.end method

.method public static actionNewAccount(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 313
    const-string v1, "com.android.email.AccountSetupBasics.emailaddress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v1, "com.android.email.AccountSetupBasics.password"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string v1, "com.android.email.AccountSetupBasics.defaultaccount"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 316
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 317
    return-void
.end method

.method private addAccountForSeven()Z
    .locals 4

    .prologue
    .line 731
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 733
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "email"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v2, "password"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v2, "provider"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v2, "isp_type"

    iget v3, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mISPType:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 743
    const/4 v2, 0x6

    :try_start_0
    invoke-static {v2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/adapter/ProtocolAdapter;->doAddAccount(Landroid/os/Bundle;)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->activeToken:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 745
    :catch_0
    move-exception v1

    .line 747
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    .line 748
    invoke-static {p0, v1}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;)V

    .line 749
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private completeAddBasicAccount()V
    .locals 4

    .prologue
    .line 908
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 909
    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    .line 911
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 912
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 914
    const-string v1, "eas"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 921
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    .line 922
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    .line 923
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    .line 924
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    .line 928
    :cond_0
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->actionSetNames(Landroid/app/Activity;)V

    .line 929
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->setResult(I)V

    .line 930
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    .line 931
    return-void
.end method

.method private findISPServer()V
    .locals 11

    .prologue
    const/16 v10, 0x31

    const/16 v9, 0xb

    .line 474
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 475
    .local v2, currentLocale:Ljava/util/Locale;
    const/4 v5, 0x0

    .line 477
    .local v5, simcardLocale:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 481
    :goto_0
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->provisionOfAddAccountAction:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 482
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->provisionOfAddAccountAction:Ljava/lang/String;

    invoke-static {v6}, Lcom/seven/Z7/shared/ANSharedCommon;->getFromAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    .line 483
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    const-string v7, "work"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 484
    :cond_0
    const-string v6, "other"

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    .line 528
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    const-string v7, "gmail"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    const-string v7, "gmail_de"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    const-string v7, "msn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    const-string v7, "yahoo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 532
    :cond_2
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mISPType:I

    .line 547
    :goto_2
    const/4 v0, 0x0

    .line 548
    .local v0, brandId:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->connectors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/seven/util/IntArrayMap;

    .line 549
    .local v1, c:Lcom/seven/util/IntArrayMap;
    invoke-virtual {v1, v10}, Lcom/seven/util/IntArrayMap;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 551
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    const-string v7, "other"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 552
    const-string v6, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    if-nez v0, :cond_3

    .line 553
    :cond_4
    invoke-virtual {v1, v9}, Lcom/seven/util/IntArrayMap;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    .line 564
    .end local v1           #c:Lcom/seven/util/IntArrayMap;
    :cond_5
    :goto_3
    const-string v6, "AccountSetupForSeven"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "findISPServer>> Id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mISPType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    const-string v7, "gmail_de"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, ""

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 569
    :cond_6
    const-string v6, "AccountSetupForSeven"

    const-string v7, "findISPServer>> One more time!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string v6, "gmail"

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    .line 573
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->connectors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/seven/util/IntArrayMap;

    .line 574
    .restart local v1       #c:Lcom/seven/util/IntArrayMap;
    invoke-virtual {v1, v10}, Lcom/seven/util/IntArrayMap;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 576
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 577
    invoke-virtual {v1, v9}, Lcom/seven/util/IntArrayMap;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    .line 582
    .end local v1           #c:Lcom/seven/util/IntArrayMap;
    :cond_8
    const-string v6, "AccountSetupForSeven"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Re-findISPServer>> Id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mISPType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_9
    return-void

    .line 478
    .end local v0           #brandId:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 479
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "AccountSetupForSeven"

    const-string v7, "findISPServer>>  simcardLocale Exception!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 487
    .end local v3           #e:Ljava/lang/Exception;
    :cond_a
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    const-string v7, "@gmail."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    const-string v7, "@google."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    const-string v7, "@googlemail."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 489
    :cond_b
    sget-object v6, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v2, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    sget-object v6, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-virtual {v2, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "de"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 491
    :cond_c
    const-string v6, "gmail_de"

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    goto/16 :goto_1

    .line 493
    :cond_d
    const-string v6, "gmail"

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    goto/16 :goto_1

    .line 495
    :cond_e
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    const-string v7, "@msn."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    const-string v7, "@hotmail."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    const-string v7, "@live."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 497
    :cond_f
    const-string v6, "msn"

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    goto/16 :goto_1

    .line 498
    :cond_10
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    const-string v7, "@yahoo."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    const-string v7, "@ymail."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    const-string v7, "@y7mail."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    const-string v7, "@kimo.com"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    const-string v7, "@ybb."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 501
    :cond_11
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    const-string v7, ".jp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 502
    const-string v6, "yahoo_jp"

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    .line 503
    const-string v6, "Yahoo! Japan"

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    goto/16 :goto_1

    .line 505
    :cond_12
    const-string v6, "yahoo"

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    goto/16 :goto_1

    .line 508
    :cond_13
    const-string v6, "other"

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    goto/16 :goto_1

    .line 534
    :cond_14
    const/4 v6, 0x6

    iput v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mISPType:I

    goto/16 :goto_2

    .line 557
    .restart local v0       #brandId:Ljava/lang/String;
    .restart local v1       #c:Lcom/seven/util/IntArrayMap;
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_15
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 558
    invoke-virtual {v1, v9}, Lcom/seven/util/IntArrayMap;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method private invalidateUrl()V
    .locals 2

    .prologue
    .line 824
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    .line 825
    const v0, 0x7f08043c

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 826
    return-void
.end method

.method private onCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 456
    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mCanceled:Z

    .line 457
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 459
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->onCloseActivity()V

    .line 460
    return-void
.end method

.method private onCloseActivity()V
    .locals 6

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mHandler:Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupForSeven$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSetupForSeven$1;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 471
    return-void
.end method

.method private registerPremiumAccount()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 652
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->isExchange:Z

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 656
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    .line 657
    .local v7, domain:Ljava/lang/String;
    const-string v8, "://"

    .line 658
    .local v8, domainDelimiter:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 659
    .local v9, sIdx:I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 660
    const-string v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    const/16 v0, 0x2f

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {v7, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 663
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    .line 667
    .end local v7           #domain:Ljava/lang/String;
    .end local v8           #domainDelimiter:Ljava/lang/String;
    .end local v9           #sIdx:I
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->setEmailAndPwToPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->findISPServer()V

    .line 670
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->addAccountForSeven()Z

    move-result v0

    if-nez v0, :cond_3

    .line 727
    :cond_2
    :goto_0
    return-void

    .line 675
    :cond_3
    iget v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->activeToken:I

    if-ne v0, v2, :cond_2

    .line 676
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/digc/seven/SevenSyncProvider;->getAccountID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    .line 677
    .local v10, sevenAccountId:I
    if-ne v10, v2, :cond_4

    .line 678
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    goto :goto_0

    .line 681
    :cond_4
    const/4 v6, 0x0

    .line 683
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "sevenAccountKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 688
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 689
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    iget-object v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v10, p0}, Lcom/digc/seven/Z7MailHandler;->removeAccount(Landroid/os/Handler;ILandroid/app/Activity;)V

    .line 690
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupForSeven$5;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSetupForSeven$5;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    if-eqz v6, :cond_2

    .line 709
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 708
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 709
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 708
    :cond_5
    throw v0

    :cond_6
    if-eqz v6, :cond_7

    .line 709
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 717
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mDuplicateAccountName:Ljava/lang/String;

    .line 718
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showDialog(I)V

    goto :goto_0
.end method

.method private registerPremiumAccountInfo(II)V
    .locals 8
    .parameter "accountid"
    .parameter "sevenAccountId"

    .prologue
    const/4 v7, 0x0

    .line 769
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->restoreAccountWithId(I)V

    .line 773
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mPassword:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPId:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->actionOptions(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->setResult(I)V

    .line 779
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    .line 783
    .local v3, tempString:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x19a

    const/4 v4, 0x4

    move v5, v7

    move v6, v7

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    .line 788
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    .line 789
    return-void
.end method

.method private restoreAccountWithId(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 792
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 793
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 794
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 796
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 804
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 805
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 807
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 808
    return-void

    .line 801
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private setISPServer()Z
    .locals 3

    .prologue
    .line 947
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mListener:Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;

    invoke-virtual {v0, v1}, Lcom/digc/seven/Z7MailHandler;->unRegisterListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 949
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 950
    const-string v1, "isp_type"

    iget v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->ispType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 951
    const-string v1, "username"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 952
    const-string v1, "password"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 953
    const-string v1, "email"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 954
    const-string v1, "_connector"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 955
    const-string v1, "optional_name"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->accountOptionalName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 956
    const-string v1, "is_default"

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mDefaultAccount:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 957
    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->startActivityForResult(Landroid/content/Intent;I)V

    .line 959
    const/4 v0, 0x0

    return v0
.end method

.method private setMessage(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupForSeven$2;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/setup/AccountSetupForSeven$2;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 600
    return-void
.end method


# virtual methods
.method public checkAccountState()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 835
    const/4 v10, 0x0

    .line 836
    .local v10, isSecurityHold:Z
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v4, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccountId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/email/activity/setup/AccountSetupForSeven;->ACCOUNT_INFO_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 840
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 842
    .local v8, flags:I
    and-int/lit8 v0, v8, 0x20

    if-eqz v0, :cond_0

    .line 843
    const/4 v10, 0x1

    .line 849
    .end local v8           #flags:I
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 851
    if-eqz v10, :cond_1

    .line 852
    sget-wide v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccountId:J

    invoke-static {p0, v0, v1, v11}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v9

    .line 854
    .local v9, i:Landroid/content/Intent;
    invoke-virtual {p0, v9, v11}, Lcom/android/email/activity/setup/AccountSetupForSeven;->startActivityForResult(Landroid/content/Intent;I)V

    .line 858
    .end local v9           #i:Landroid/content/Intent;
    :goto_1
    return-void

    .line 846
    :catch_0
    move-exception v7

    .line 847
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 849
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 856
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->completeAddBasicAccount()V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 862
    if-nez p1, :cond_1

    .line 863
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->completeAddBasicAccount()V

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 874
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    .line 875
    if-ne p2, v1, :cond_2

    .line 876
    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->setResult(I)V

    .line 878
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    goto :goto_0

    .line 880
    :cond_3
    if-ne p2, v1, :cond_0

    .line 881
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showProgressDialog()V

    .line 889
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 891
    invoke-static {p0}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 894
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->checkAccountState()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 449
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100050

    if-ne v0, v1, :cond_0

    .line 451
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->onCancel()V

    .line 453
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 324
    invoke-super {p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 325
    sput-boolean v3, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 326
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/adapter/ProtocolAdapter;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    .line 391
    :goto_0
    return-void

    .line 335
    :cond_0
    new-instance v1, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;

    iget-object v2, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mListener:Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;

    .line 337
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 339
    .local v0, intent:Landroid/content/Intent;
    const v1, 0x7f040013

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->setContentView(I)V

    .line 348
    const v1, 0x7f10004e

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mMessageView:Landroid/widget/TextView;

    .line 349
    const v1, 0x7f10004f

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressBar:Landroid/widget/ProgressBar;

    .line 350
    const v1, 0x7f100050

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mCancelButton:Landroid/widget/Button;

    .line 351
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    const v1, 0x7f0800d1

    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->setMessage(I)V

    .line 353
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 355
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent.seven.action.ADD_ACCOUNT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    const-string v1, "accountType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->provisionOfAddAccountAction:Ljava/lang/String;

    .line 360
    :cond_1
    const-string v1, "com.android.email.AccountSetupBasics.emailaddress"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;

    .line 361
    const-string v1, "com.android.email.AccountSetupBasics.password"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mPassword:Ljava/lang/String;

    .line 362
    const-string v1, "com.android.email.AccountSetupBasics.defaultaccount"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mDefaultAccount:Z

    .line 364
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->provisionOfAddAccountAction:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 365
    const-string v1, "extra_selected_provision_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->selectedISPName:Ljava/lang/String;

    .line 373
    :cond_2
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 375
    if-eqz p1, :cond_3

    const-string v1, "com.android.email.AccountSetupBasics.provider"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 376
    const-string v1, "com.android.email.AccountSetupBasics.provider"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .line 380
    :cond_3
    iget-object v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mListener:Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;

    invoke-virtual {v1, v2}, Lcom/digc/seven/Z7MailHandler;->registerListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 383
    new-instance v1, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/email/activity/setup/AccountSetupForSeven$ControllerResult;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/email/activity/setup/AccountSetupForSeven$ControllerResult;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven;Lcom/android/email/activity/setup/AccountSetupForSeven$1;)V

    invoke-direct {v1, v2, v3}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mControllerResult:Lcom/android/email/Controller$Result;

    .line 385
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 387
    const-string v1, "AccountSetupForSeven"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    new-instance v1, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;

    iget-object v2, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven;Landroid/os/Handler;)V

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->initializeSevenEngineAndCallGAC(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 390
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->startConnectionTimeOut()V

    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 604
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 605
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800ce

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800cf

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mDuplicateAccountName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080042

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupForSeven$3;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupForSeven$3;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 630
    :goto_0
    return-object v0

    .line 617
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 618
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupForSeven$4;

    invoke-direct {v0, p0, p0}, Lcom/android/email/activity/setup/AccountSetupForSeven$4;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 624
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 625
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 626
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 627
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0801d4

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 628
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 630
    :cond_1
    invoke-super {p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->stopConnectionTimeOut()V

    .line 416
    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onDestroy()V

    .line 421
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mControllerResult:Lcom/android/email/Controller$Result;

    if-eqz v0, :cond_0

    .line 422
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mControllerResult:Lcom/android/email/Controller$Result;

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mListener:Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mListener:Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;

    invoke-virtual {v0, v1}, Lcom/digc/seven/Z7MailHandler;->unRegisterListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 430
    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1032
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 405
    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onPause()V

    .line 406
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 638
    packed-switch p1, :pswitch_data_0

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 640
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mDuplicateAccountName:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 641
    check-cast v0, Landroid/app/AlertDialog;

    .line 642
    .local v0, alert:Landroid/app/AlertDialog;
    const v1, 0x7f0800cf

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mDuplicateAccountName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 444
    invoke-super {p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 445
    const-string v0, "com.android.email.DUPLEACCOUNTNAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mDuplicateAccountName:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 400
    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onResume()V

    .line 401
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 434
    invoke-super {p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 435
    const-string v0, "com.android.email.AccountSetupBasics.account"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 436
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    if-eqz v0, :cond_0

    .line 437
    const-string v0, "com.android.email.AccountSetupBasics.provider"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 438
    const-string v0, "com.android.email.DUPLEACCOUNTNAME"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven;->mDuplicateAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 395
    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onStart()V

    .line 396
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 410
    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onStop()V

    .line 411
    return-void
.end method
