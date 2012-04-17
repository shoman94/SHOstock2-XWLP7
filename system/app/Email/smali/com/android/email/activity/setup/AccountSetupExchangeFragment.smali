.class public Lcom/android/email/activity/setup/AccountSetupExchangeFragment;
.super Lcom/android/email/activity/setup/AccountServerBaseFragment;
.source "AccountSetupExchangeFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private RETURN_FROM_CERTIFICATE_LIST:I

.field private activity:Landroid/app/Activity;

.field private mCBAButton:Landroid/widget/Button;

.field private mCacheLoginCredential:Ljava/lang/String;

.field private mCbaCertificateAlias:Ljava/lang/String;

.field mLoaded:Z

.field private mPasswordView:Landroid/widget/EditText;

.field private mServerView:Landroid/widget/EditText;

.field private mSettingExchange:Landroid/widget/LinearLayout;

.field private mSslSecurityString:Landroid/widget/TextView;

.field private mSslSecurityView:Landroid/widget/CheckBox;

.field private mStarted:Z

.field private mTrustCertificatesString:Landroid/widget/TextView;

.field private mTrustCertificatesView:Landroid/widget/CheckBox;

.field private mUseClientCertificateStirng:Landroid/widget/TextView;

.field private mUseClientCertificateView:Landroid/widget/CheckBox;

.field private mUsernameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCbaCertificateAlias:Ljava/lang/String;

    .line 124
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->RETURN_FROM_CERTIFICATE_LIST:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupExchangeFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    move-result v0

    return v0
.end method

.method private onCBA()V
    .locals 0

    .prologue
    .line 659
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onOwnCertificate()V

    .line 660
    return-void
.end method

.method private onOwnCertificate()V
    .locals 5

    .prologue
    .line 639
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->activity:Landroid/app/Activity;

    const-class v2, Lcom/android/email/activity/cba/InstalledCertificatesList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 644
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/email/EmailUtility;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 645
    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    const-string v2, "KEYSTORE_PASSWORD"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    const-string v1, "CERTIFICATE_ALIAS"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCbaCertificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    const-string v1, "EMAIL_ADDRESS"

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    iget v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->RETURN_FROM_CERTIFICATE_LIST:I

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 656
    :goto_0
    return-void

    .line 646
    :catch_0
    move-exception v0

    .line 647
    const-string v0, "AccountSettings"

    const-string v1, "Error while getting device id"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private usernameFieldValid(Landroid/widget/EditText;)Z
    .locals 2
    .parameter "usernameView"

    .prologue
    .line 486
    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateFields()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 497
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    if-nez v2, :cond_0

    .line 514
    :goto_0
    return v0

    .line 499
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->usernameFieldValid(Landroid/widget/EditText;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 502
    .local v0, enabled:Z
    :cond_1
    if-eqz v0, :cond_2

    .line 504
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getUri()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->enableNextButton(Z)V

    .line 512
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    goto :goto_0

    .line 505
    :catch_0
    move-exception v1

    .line 506
    .local v1, use:Ljava/net/URISyntaxException;
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected getUri()Ljava/net/URI;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 606
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    .line 607
    .local v8, sslRequired:Z
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    .line 608
    .local v9, trustCertificates:Z
    if-eqz v8, :cond_2

    if-eqz v9, :cond_1

    const-string v1, "eas+ssl+trustallcerts"

    .line 610
    .local v1, scheme:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 614
    .local v10, userName:Ljava/lang/String;
    const-string v4, "\\"

    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 615
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 617
    :cond_0
    iput-object v10, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 618
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 619
    .local v2, userInfo:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 620
    .local v3, host:Ljava/lang/String;
    const/4 v5, 0x0

    .line 622
    .local v5, path:Ljava/lang/String;
    new-instance v0, Ljava/net/URI;

    const/4 v4, 0x0

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .local v0, uri:Ljava/net/URI;
    return-object v0

    .line 608
    .end local v0           #uri:Ljava/net/URI;
    .end local v1           #scheme:Ljava/lang/String;
    .end local v2           #userInfo:Ljava/lang/String;
    .end local v3           #host:Ljava/lang/String;
    .end local v5           #path:Ljava/lang/String;
    .end local v10           #userName:Ljava/lang/String;
    :cond_1
    const-string v1, "eas+ssl+"

    goto :goto_0

    :cond_2
    const-string v1, "eas"

    goto :goto_0
.end method

.method loadSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 11
    .parameter "account"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 407
    iget-boolean v9, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    if-eqz v9, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    move-result v7

    .line 482
    :goto_0
    return v7

    .line 410
    :cond_0
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 411
    .local v1, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    const/4 v3, 0x0

    .line 413
    .local v3, server:Ljava/lang/String;
    iget-object v6, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 414
    .local v6, userName:Ljava/lang/String;
    const-string v0, ""

    .line 416
    .local v0, domain:Ljava/lang/String;
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isSncFlow()Z

    move-result v9

    if-eqz v9, :cond_1

    sget-boolean v9, Lcom/android/email/activity/setup/AccountSetupConstants;->ENABLE_SNC_ACCOUNT_SETUP:Z

    if-ne v9, v7, :cond_1

    sget-object v9, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-eqz v9, :cond_1

    .line 418
    sget-object v9, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    invoke-virtual {v9}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeDomain()Ljava/lang/String;

    move-result-object v0

    .line 421
    :cond_1
    if-eqz v6, :cond_3

    .line 425
    const/16 v9, 0x5c

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_2

    .line 426
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\\"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 429
    :cond_2
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 432
    :cond_3
    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 433
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    iget-object v10, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 436
    :cond_4
    iget-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 437
    .local v2, protocol:Ljava/lang/String;
    if-eqz v2, :cond_5

    const-string v9, "eas"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 438
    :cond_5
    new-instance v7, Ljava/lang/Error;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown account type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7

    .line 441
    :cond_6
    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    if-eqz v9, :cond_7

    .line 443
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isSncFlow()Z

    move-result v9

    if-eqz v9, :cond_8

    sget-boolean v9, Lcom/android/email/activity/setup/AccountSetupConstants;->ENABLE_SNC_ACCOUNT_SETUP:Z

    if-ne v9, v7, :cond_8

    sget-object v9, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-eqz v9, :cond_8

    .line 445
    sget-object v9, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    invoke-virtual {v9}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeServer()Ljava/lang/String;

    move-result-object v3

    .line 451
    :goto_1
    const-string v9, "gmail.com"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 452
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    const-string v10, "m.google.com"

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 462
    :cond_7
    :goto_2
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isSncFlow()Z

    move-result v9

    if-eqz v9, :cond_a

    sget-boolean v9, Lcom/android/email/activity/setup/AccountSetupConstants;->ENABLE_SNC_ACCOUNT_SETUP:Z

    if-ne v9, v7, :cond_a

    sget-object v9, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-eqz v9, :cond_a

    .line 464
    sget-object v8, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    invoke-virtual {v8}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeSecureFlag()Z

    move-result v4

    .line 465
    .local v4, ssl:Z
    sget-object v8, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    invoke-virtual {v8}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeVerifyCertFlag()Z

    move-result v5

    .line 471
    .local v5, trustCertificates:Z
    :goto_3
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v8, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 472
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v8, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 473
    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->showTrustCertificates(Z)V

    .line 476
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getUri()Ljava/net/URI;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedUri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :goto_4
    iput-boolean v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    .line 482
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    move-result v7

    goto/16 :goto_0

    .line 449
    .end local v4           #ssl:Z
    .end local v5           #trustCertificates:Z
    :cond_8
    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    goto :goto_1

    .line 454
    :cond_9
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v9, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 467
    :cond_a
    iget v9, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_b

    move v4, v7

    .line 468
    .restart local v4       #ssl:Z
    :goto_5
    iget v9, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_c

    move v5, v7

    .restart local v5       #trustCertificates:Z
    :goto_6
    goto :goto_3

    .end local v4           #ssl:Z
    .end local v5           #trustCertificates:Z
    :cond_b
    move v4, v8

    .line 467
    goto :goto_5

    .restart local v4       #ssl:Z
    :cond_c
    move v5, v8

    .line 468
    goto :goto_6

    .line 477
    .restart local v5       #trustCertificates:Z
    :catch_0
    move-exception v8

    goto :goto_4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 291
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 292
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 664
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 666
    iget v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->RETURN_FROM_CERTIFICATE_LIST:I

    if-ne p1, v2, :cond_1

    .line 667
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->activity:Landroid/app/Activity;

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 668
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 670
    .local v1, result:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 671
    const-string v2, "CERTIFICATE_ALIAS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, alias:Ljava/lang/String;
    const-string v2, "AccountSetupExchange"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CertificateManager returns alias = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    if-eqz v0, :cond_0

    .line 674
    const-string v2, "None"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 675
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCbaCertificateAlias:Ljava/lang/String;

    .line 683
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #result:Landroid/os/Bundle;
    :cond_0
    :goto_0
    const-string v2, "AccountSetupExchange"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After Activity returns result, alias = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCbaCertificateAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCbaCertificateAlias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->setCbaCertificate(Ljava/lang/String;)V

    .line 688
    :cond_1
    return-void

    .line 677
    .restart local v0       #alias:Ljava/lang/String;
    .restart local v1       #result:Landroid/os/Bundle;
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCbaCertificateAlias:Ljava/lang/String;

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 297
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 298
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->activity:Landroid/app/Activity;

    .line 299
    return-void
.end method

.method public onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .locals 1
    .parameter "result"
    .parameter "hostAuth"

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSetupExchange;

    .line 633
    .local v0, activity:Lcom/android/email/activity/setup/AccountSetupExchange;
    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupExchange;->onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    .line 634
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 518
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v3, 0x7f100020

    if-ne v0, v3, :cond_0

    .line 519
    invoke-virtual {p0, p2}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->showTrustCertificates(Z)V

    .line 522
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v3, 0x7f100058

    if-ne v0, v3, :cond_1

    .line 525
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCBAButton:Landroid/widget/Button;

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 526
    if-eqz p2, :cond_1

    .line 527
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    if-eqz p2, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 535
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 525
    goto :goto_0

    :cond_3
    move v1, v2

    .line 527
    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 697
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 700
    :sswitch_0
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onClick(Landroid/view/View;)V

    .line 701
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 703
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 708
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 709
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 710
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCBAButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 712
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 713
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCBAButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 719
    :sswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onCBA()V

    goto :goto_0

    .line 697
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100029 -> :sswitch_0
        0x7f10002a -> :sswitch_0
        0x7f100056 -> :sswitch_1
        0x7f100059 -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 378
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 387
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 141
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    if-eqz p1, :cond_0

    .line 144
    const-string v0, "AccountSetupExchangeFragment.credential"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 145
    const-string v0, "AccountSetupExchangeFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    .line 148
    :cond_0
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-ne v0, v2, :cond_1

    .line 149
    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->setHasOptionsMenu(Z)V

    .line 150
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 249
    invoke-super {p0, p1, p2}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 250
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 251
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 252
    const v0, 0x7f0f000c

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 256
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 162
    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-eqz v5, :cond_1

    const v2, 0x7f040008

    .line 165
    .local v2, layoutId:I
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 166
    .local v4, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 168
    .local v0, context:Landroid/content/Context;
    const v5, 0x7f10001a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSettingExchange:Landroid/widget/LinearLayout;

    .line 170
    const v5, 0x7f10001b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    .line 171
    const v5, 0x7f10001c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    .line 172
    const v5, 0x7f10001d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    .line 173
    const v5, 0x7f100020

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    .line 176
    const v5, 0x7f10001f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityString:Landroid/widget/TextView;

    .line 177
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityString:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 179
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 180
    const v5, 0x7f100024

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    .line 183
    const v5, 0x7f100023

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesString:Landroid/widget/TextView;

    .line 185
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesString:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 191
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    const v5, 0x7f100059

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCBAButton:Landroid/widget/Button;

    .line 196
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCBAButton:Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 197
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCBAButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    :cond_0
    const v5, 0x7f100058

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    .line 204
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 208
    const v5, 0x7f100057

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateStirng:Landroid/widget/TextView;

    .line 210
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateStirng:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 211
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    new-instance v3, Lcom/android/email/activity/setup/AccountSetupExchangeFragment$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSetupExchangeFragment;)V

    .line 226
    .local v3, validationTextWatcher:Landroid/text/TextWatcher;
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 227
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 228
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 234
    :try_start_0
    invoke-static {v0}, Lcom/android/email/EmailUtility;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, deviceId:Ljava/lang/String;
    const v5, 0x7f100026

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v1           #deviceId:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 162
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #layoutId:I
    .end local v3           #validationTextWatcher:Landroid/text/TextWatcher;
    .end local v4           #view:Landroid/view/View;
    :cond_1
    const v2, 0x7f040016

    goto/16 :goto_0

    .line 236
    .restart local v0       #context:Landroid/content/Context;
    .restart local v2       #layoutId:I
    .restart local v3       #validationTextWatcher:Landroid/text/TextWatcher;
    .restart local v4       #view:Landroid/view/View;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 361
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onDestroy()V

    .line 362
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 842
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onDetach()V

    .line 843
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 845
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 846
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 847
    :cond_0
    return-void
.end method

.method public onNext()V
    .locals 10

    .prologue
    .line 731
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getUri()Ljava/net/URI;

    move-result-object v8

    .line 732
    .local v8, uri:Ljava/net/URI;
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    .line 733
    .local v7, setupAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 736
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v6

    .line 738
    .local v6, accountType:I
    invoke-virtual {v7, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->setAccountType(I)V

    .line 741
    iget-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 742
    const-string v0, "AccountSetupExchange"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Had to set CBACert in onNext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_0
    iget-wide v1, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->startDuplicateTaskCheck(JLjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    .end local v6           #accountType:I
    .end local v7           #setupAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v8           #uri:Ljava/net/URI;
    :goto_0
    return-void

    .line 751
    :catch_0
    move-exception v9

    .line 756
    .local v9, use:Ljava/net/URISyntaxException;
    const-string v0, "AccountSetupExhangeFragment"

    invoke-virtual {v9}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f080115

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 276
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 282
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 279
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x7f100029
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 336
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPause()V

    .line 337
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    .line 262
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 263
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 264
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    .line 265
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 266
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f10002a

    if-eq v2, v3, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f100029

    if-eq v2, v3, :cond_0

    .line 268
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 265
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 326
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onResume()V

    .line 327
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    .line 328
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 370
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 372
    const-string v0, "AccountSetupExchangeFragment.credential"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v0, "AccountSetupExchangeFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 374
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStart()V

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mStarted:Z

    .line 314
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->loadSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    .line 315
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 348
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStop()V

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mStarted:Z

    .line 350
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 766
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v0, v1

    .line 836
    :goto_1
    return v0

    .line 768
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 770
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    .line 773
    :pswitch_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    .line 776
    :pswitch_2
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    .line 779
    :pswitch_3
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 780
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 781
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 782
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 785
    :goto_2
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    goto :goto_1

    .line 784
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 790
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 792
    :pswitch_4
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    .line 795
    :pswitch_5
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    .line 798
    :pswitch_6
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    .line 801
    :pswitch_7
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 802
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 803
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 804
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 807
    :goto_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    goto :goto_1

    .line 806
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 813
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    goto :goto_0

    .line 815
    :pswitch_8
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 818
    :pswitch_9
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 821
    :pswitch_a
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 824
    :pswitch_b
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 825
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 826
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 827
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 830
    :goto_4
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    goto/16 :goto_1

    .line 829
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4

    .line 766
    :sswitch_data_0
    .sparse-switch
        0x7f10001f -> :sswitch_0
        0x7f100023 -> :sswitch_1
        0x7f100057 -> :sswitch_2
    .end sparse-switch

    .line 768
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 790
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 813
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public saveSettingsAfterEdit()V
    .locals 4

    .prologue
    .line 556
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 557
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 558
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 567
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/Controller;->hostChanged(J)V

    .line 576
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 577
    return-void
.end method

.method public saveSettingsAfterSetup()V
    .locals 0

    .prologue
    .line 585
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 395
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 396
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mStarted:Z

    if-eqz v0, :cond_0

    .line 397
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->loadSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    .line 399
    :cond_0
    return-void
.end method

.method public showTrustCertificates(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 538
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 540
    .local v0, mode:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100021

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 541
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100056

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 548
    return-void

    .line 538
    .end local v0           #mode:I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
