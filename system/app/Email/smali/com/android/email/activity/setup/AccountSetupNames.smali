.class public Lcom/android/email/activity/setup/AccountSetupNames;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupNames.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;
    }
.end annotation


# static fields
.field public static forceSync:Z


# instance fields
.field private mDescription:Landroid/widget/EditText;

.field private mEasAccount:Z

.field private mName:Landroid/widget/EditText;

.field private mNextButton:Landroid/widget/Button;

.field private mNextPressed:Z

.field private mSevenAccount:Z

.field private signonIM:Landroid/widget/CheckBox;

.field private sso_id:Ljava/lang/String;

.field private sso_isp:Ljava/lang/String;

.field private sso_pw:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupNames;->forceSync:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    .line 92
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextPressed:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mSevenAccount:Z

    .line 531
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupNames;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->validateFields()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupNames;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->updateExchangeProfile()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupNames;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->signonIM:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSetupNames;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finishActivity()V

    return-void
.end method

.method public static actionSetNames(Landroid/app/Activity;)V
    .locals 1
    .parameter "fromActivity"

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-static {p0, v0, v0, v0}, Lcom/android/email/activity/setup/AccountSetupNames;->actionSetNames(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static actionSetNames(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    const-string v1, "SSO_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v1, "SSO_PW"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v1, "SSO_ISP"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 144
    return-void
.end method

.method private finishActivity()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 419
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    .line 422
    .local v7, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupConstants;->ENABLE_SNC_ACCOUNT_SETUP:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    if-ne v0, v2, :cond_0

    .line 424
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupNames$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupNames$2;-><init>(Lcom/android/email/activity/setup/AccountSetupNames;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 457
    :cond_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    if-eqz v0, :cond_4

    .line 458
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v8

    .line 460
    .local v8, flowMode:I
    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->setAccountId(J)V

    .line 461
    const/4 v0, 0x2

    if-ne v8, v0, :cond_2

    if-eqz v7, :cond_2

    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v9, 0x0

    cmp-long v0, v0, v9

    if-ltz v0, :cond_2

    .line 464
    sput-boolean v2, Lcom/android/email/activity/setup/AccountSetupNames;->forceSync:Z

    .line 465
    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinishedFromSetting(Landroid/app/Activity;J)V

    .line 491
    .end local v8           #flowMode:I
    :goto_0
    if-eqz v7, :cond_1

    .line 492
    new-array v3, v2, [Ljava/lang/String;

    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    .line 495
    .local v3, ids:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v4, 0x5

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    .line 500
    .end local v3           #ids:[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finish()V

    .line 501
    return-void

    .line 466
    .restart local v8       #flowMode:I
    :cond_2
    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupConstants;->ENABLE_SNC_ACCOUNT_SETUP:Z

    if-ne v0, v2, :cond_3

    .line 467
    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->actionShowAccount(Landroid/app/Activity;J)V

    goto :goto_0

    .line 469
    :cond_3
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinishedAccountFlow(Landroid/app/Activity;)V

    goto :goto_0

    .line 472
    .end local v8           #flowMode:I
    :cond_4
    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->setAccountId(J)V

    .line 473
    if-eqz v7, :cond_6

    .line 475
    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupConstants;->ENABLE_SNC_ACCOUNT_SETUP:Z

    if-ne v0, v2, :cond_5

    .line 476
    const-string v0, "AccountSetupNames"

    const-string v1, "Launching AccountSetupSncAccounts screen"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->actionShowAccount(Landroid/app/Activity;J)V

    goto :goto_0

    .line 480
    :cond_5
    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinished(Landroid/app/Activity;J)V

    goto :goto_0

    .line 487
    :cond_6
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private getDomain()Ljava/lang/String;
    .locals 7

    .prologue
    .line 665
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    .line 666
    .local v3, mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-wide v5, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 667
    .local v1, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-nez v1, :cond_1

    .line 668
    const-string v5, "AccountSetupNames"

    const-string v6, "FATAL : HostAuth is Null"

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const/4 v0, 0x0

    .line 682
    :cond_0
    :goto_0
    return-object v0

    .line 671
    :cond_1
    iget-object v4, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 672
    .local v4, userName:Ljava/lang/String;
    const-string v0, ""

    .line 673
    .local v0, domain:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 674
    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 675
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 676
    if-lez v2, :cond_2

    .line 677
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 679
    :cond_2
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getUserName()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 686
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 687
    .local v2, mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v0, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 688
    .local v0, email:Ljava/lang/String;
    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 689
    .local v1, emailParts:[Ljava/lang/String;
    const-string v3, "AccountSetupNames"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserName - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    aget-object v3, v1, v6

    return-object v3
.end method

.method private onNext()V
    .locals 4

    .prologue
    .line 509
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 510
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, description:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 512
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 514
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 517
    new-instance v2, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;-><init>(Lcom/android/email/activity/setup/AccountSetupNames;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 518
    return-void
.end method

.method private updateExchangeProfile()V
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 601
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 602
    .local v2, mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    const-string v12, "AccountSetupNames"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Backing up ExchangeProfile for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    sget-object v12, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-nez v12, :cond_1

    .line 608
    const-string v12, "AccountSetupNames"

    const-string v13, "Cretaing New Profile to Back up"

    invoke-static {v12, v13}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    new-instance v9, Lcom/android/email/syncnconnect/utils/SncProfile;

    invoke-direct {v9}, Lcom/android/email/syncnconnect/utils/SncProfile;-><init>()V

    .line 614
    .local v9, userProfile:Lcom/android/email/syncnconnect/utils/SncProfile;
    :goto_0
    iget-wide v12, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v12, v13}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 615
    .local v1, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-eqz v1, :cond_4

    .line 616
    iget-object v12, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeServer(Ljava/lang/String;)V

    .line 617
    iget v12, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_2

    move v4, v10

    .line 618
    .local v4, ssl:Z
    :goto_1
    iget v12, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_3

    move v8, v10

    .line 619
    .local v8, trustCertificates:Z
    :goto_2
    invoke-virtual {v9, v4}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeSecureFlag(Z)V

    .line 620
    invoke-virtual {v9, v8}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeVerifyCertFlag(Z)V

    .line 625
    .end local v4           #ssl:Z
    .end local v8           #trustCertificates:Z
    :goto_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->getUserName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeUser(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeEmail(Ljava/lang/String;)V

    .line 627
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->getDomain()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeDomain(Ljava/lang/String;)V

    .line 628
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->getUserName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/email/syncnconnect/utils/SncProfile;->setFirstName(Ljava/lang/String;)V

    .line 630
    new-instance v0, Landroid/accounts/Account;

    iget-object v10, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v11, "com.android.exchange"

    invoke-direct {v0, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    .local v0, acct:Landroid/accounts/Account;
    const-string v10, "com.android.calendar"

    invoke-static {v0, v10}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    .line 637
    .local v5, synCalendar:Z
    invoke-virtual {v9, v5}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeCalSyncFlag(Z)V

    .line 639
    const-string v10, "com.android.contacts"

    invoke-static {v0, v10}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    .line 641
    .local v6, synContacts:Z
    invoke-virtual {v9, v6}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeABSyncFlag(Z)V

    .line 647
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v10

    invoke-static {v10}, Lcom/android/email/adapter/SncAdapter;->parseSyncLookback(I)I

    move-result v7

    .line 648
    .local v7, syncLookBack:I
    invoke-virtual {v9, v7}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeDaysToSync(I)V

    .line 649
    const-string v10, "html"

    invoke-virtual {v9, v10}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeMessageFormat(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/email/syncnconnect/utils/SncProfile;->setSncSyncNotificationStartTime(I)V

    .line 653
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/email/syncnconnect/utils/SncProfile;->setSncSyncNotificationEndTime(I)V

    .line 655
    const/4 v10, 0x5

    const/16 v11, 0x9

    invoke-static {v10, v11}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v3

    .line 657
    .local v3, mType:I
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v10

    invoke-virtual {v10, v3, v9}, Lcom/android/email/Controller;->updateUserProfile(ILcom/android/email/syncnconnect/utils/SncProfile;)V

    .line 658
    sget-object v10, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-eqz v10, :cond_0

    .line 659
    const-string v10, "AccountSetupNames"

    const-string v11, "Exisiting Profile updated"

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    sput-object v9, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    .line 662
    :cond_0
    return-void

    .line 611
    .end local v0           #acct:Landroid/accounts/Account;
    .end local v1           #hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .end local v3           #mType:I
    .end local v5           #synCalendar:Z
    .end local v6           #synContacts:Z
    .end local v7           #syncLookBack:I
    .end local v9           #userProfile:Lcom/android/email/syncnconnect/utils/SncProfile;
    :cond_1
    const-string v12, "AccountSetupNames"

    const-string v13, "Updating Exisiting Profile to Back up"

    invoke-static {v12, v13}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    sget-object v9, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    .restart local v9       #userProfile:Lcom/android/email/syncnconnect/utils/SncProfile;
    goto/16 :goto_0

    .restart local v1       #hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    :cond_2
    move v4, v11

    .line 617
    goto/16 :goto_1

    .restart local v4       #ssl:Z
    :cond_3
    move v8, v11

    .line 618
    goto/16 :goto_2

    .line 622
    .end local v4           #ssl:Z
    :cond_4
    const-string v10, "AccountSetupNames"

    const-string v11, "FATAL : HostAuth is Null"

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private validateFields()V
    .locals 4

    .prologue
    .line 394
    const/4 v0, 0x1

    .line 397
    .local v0, newEnabled:Z
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mSevenAccount:Z

    if-nez v2, :cond_0

    .line 398
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, userName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 400
    :goto_0
    if-nez v0, :cond_0

    .line 401
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    const v3, 0x7f0800d8

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupNames;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 404
    .end local v1           #userName:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 405
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 406
    :cond_1
    return-void

    .line 399
    .restart local v1       #userName:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public actionAccountToIM()V
    .locals 3

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.seven.Z7.ACTION_IM_SSO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->sso_isp:Ljava/lang/String;

    const-string v2, "gmail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    const-string v1, "google"

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->sso_isp:Ljava/lang/String;

    .line 121
    :cond_0
    :goto_0
    const-string v1, "SSO_ID"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->sso_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v1, "SSO_PW"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->sso_pw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v1, "SSO_ISP"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->sso_isp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const/16 v1, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->startActivityForResult(Landroid/content/Intent;I)V

    .line 126
    return-void

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->sso_isp:Ljava/lang/String;

    const-string v2, "msn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    const-string v1, "ms"

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->sso_isp:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->sso_isp:Ljava/lang/String;

    const-string v2, "yahoo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const-string v1, "yahoo"

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->sso_isp:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 588
    sparse-switch p1, :sswitch_data_0

    .line 594
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 595
    return-void

    .line 591
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finishActivity()V

    goto :goto_0

    .line 588
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12c -> :sswitch_0
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextPressed:Z

    if-nez v0, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finishActivity()V

    .line 416
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 374
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 388
    :goto_0
    return-void

    .line 382
    :sswitch_0
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextPressed:Z

    if-nez v0, :cond_0

    .line 383
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->onNext()V

    .line 385
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextPressed:Z

    goto :goto_0

    .line 374
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10002a -> :sswitch_0
        0x7f100039 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 349
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 355
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .parameter "savedInstanceState"

    .prologue
    .line 167
    invoke-super/range {p0 .. p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    invoke-static/range {p0 .. p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 169
    const v18, 0x7f04001a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->setContentView(I)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupNames;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 178
    .local v4, actionBar:Landroid/app/ActionBar;
    const v18, 0x7f10006a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    .line 179
    const v18, 0x7f100003

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 182
    const v18, 0x7f10006f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupNames;->signonIM:Landroid/widget/CheckBox;

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->signonIM:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupNames;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 187
    .local v11, i:Landroid/content/Intent;
    const-string v18, "SSO_ID"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupNames;->sso_id:Ljava/lang/String;

    .line 188
    const-string v18, "SSO_PW"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupNames;->sso_pw:Ljava/lang/String;

    .line 189
    const-string v18, "SSO_ISP"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupNames;->sso_isp:Ljava/lang/String;

    .line 200
    const v18, 0x7f10002a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    new-instance v16, Lcom/android/email/activity/setup/AccountSetupNames$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames$1;-><init>(Lcom/android/email/activity/setup/AccountSetupNames;)V

    .line 215
    .local v16, validationTextWatcher:Landroid/text/TextWatcher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static/range {v19 .. v20}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 218
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    .line 220
    .local v3, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v3, :cond_0

    iget-object v0, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 225
    :cond_0
    const-string v18, "Email"

    const-string v19, "Account is null "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static/range {p0 .. p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finish()V

    .line 335
    :cond_1
    :goto_0
    return-void

    .line 231
    :cond_2
    if-nez v3, :cond_3

    .line 232
    new-instance v18, Ljava/lang/IllegalStateException;

    const-string v19, "unexpected null account"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 234
    :cond_3
    iget-object v0, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 235
    new-instance v18, Ljava/lang/IllegalStateException;

    const-string v19, "unexpected null hostauth"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 239
    :cond_4
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 241
    .local v9, email:Ljava/lang/String;
    const-string v18, "@"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 242
    .local v10, emailParts:[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v10, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 243
    .local v15, username:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    .line 246
    .local v12, imsi:[C
    new-instance v15, Ljava/lang/String;

    .end local v15           #username:Ljava/lang/String;
    invoke-direct {v15, v12}, Ljava/lang/String;-><init>([C)V

    .line 247
    .restart local v15       #username:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setSelection(I)V

    .line 250
    const/16 v18, 0x1

    aget-object v18, v10, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 251
    .local v7, domain:Ljava/lang/String;
    const-string v18, "[.]"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 253
    .local v8, domainWithoutDot:[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v8, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 254
    .local v17, withOutDotDomain:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    .line 255
    const/16 v18, 0x0

    aget-char v18, v12, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 256
    const/16 v18, 0x0

    const/16 v19, 0x0

    aget-char v19, v12, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v19

    aput-char v19, v12, v18

    .line 257
    :cond_5
    new-instance v17, Ljava/lang/String;

    .end local v17           #withOutDotDomain:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/lang/String;-><init>([C)V

    .line 259
    .restart local v17       #withOutDotDomain:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 260
    .local v5, currentLocale:Ljava/util/Locale;
    const/4 v14, 0x0

    .line 262
    .local v14, simcardLocale:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 267
    :goto_1
    :try_start_1
    sget-object v18, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    sget-object v18, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    const-string v18, "de"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    :cond_6
    const-string v18, "Gmail"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 269
    const-string v2, "Google Mail"

    .line 270
    .local v2, GERMAN_GMAIL:Ljava/lang/String;
    const-string v17, "Google Mail"
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 276
    .end local v2           #GERMAN_GMAIL:Ljava/lang/String;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setSelection(I)V

    .line 279
    const v18, 0x7f10006b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setSelected(Z)V

    .line 284
    const-string v18, "eas"

    iget-object v0, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    .line 285
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_b

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/setup/AccountSetupNames;->mSevenAccount:Z

    .line 286
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    move/from16 v18, v0

    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mSevenAccount:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 287
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setVisibility(I)V

    .line 288
    const v18, 0x7f10006b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 289
    const v18, 0x7f10006c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const v19, 0x2000006

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 305
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupNames;->validateFields()V

    .line 307
    const-string v18, "ro.csc.sales_code"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 309
    .local v13, salesCode:Ljava/lang/String;
    if-eqz v13, :cond_c

    const-string v18, "O2U"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 310
    const v18, 0x7f0801d9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    .line 311
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 312
    .local v6, cv:Landroid/content/ContentValues;
    const-string v18, "signature"

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 332
    .end local v6           #cv:Landroid/content/ContentValues;
    :cond_a
    :goto_4
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 333
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupNames;->onNext()V

    goto/16 :goto_0

    .line 285
    .end local v13           #salesCode:Ljava/lang/String;
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 314
    .restart local v13       #salesCode:Ljava/lang/String;
    :cond_c
    if-eqz v13, :cond_d

    const-string v18, "PRT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 315
    const v18, 0x7f0801da

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    .line 316
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 317
    .restart local v6       #cv:Landroid/content/ContentValues;
    const-string v18, "signature"

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto :goto_4

    .line 319
    .end local v6           #cv:Landroid/content/ContentValues;
    :cond_d
    if-eqz v13, :cond_e

    const-string v18, "CEL"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 320
    const v18, 0x7f0801db

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    .line 321
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 322
    .restart local v6       #cv:Landroid/content/ContentValues;
    const-string v18, "signature"

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto :goto_4

    .line 324
    .end local v6           #cv:Landroid/content/ContentValues;
    :cond_e
    if-eqz v13, :cond_a

    const-string v18, "PTR"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 325
    const v18, 0x7f0801dc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    .line 326
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 327
    .restart local v6       #cv:Landroid/content/ContentValues;
    const-string v18, "signature"

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto/16 :goto_4

    .line 272
    .end local v6           #cv:Landroid/content/ContentValues;
    .end local v13           #salesCode:Ljava/lang/String;
    :catch_0
    move-exception v18

    goto/16 :goto_2

    .line 263
    :catch_1
    move-exception v18

    goto/16 :goto_1
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 360
    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 362
    :cond_0
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextPressed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->onNext()V

    .line 366
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 339
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onResume()V

    .line 345
    return-void
.end method
