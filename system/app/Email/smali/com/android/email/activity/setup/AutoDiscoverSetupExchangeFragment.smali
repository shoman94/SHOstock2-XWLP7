.class public Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;
.super Lcom/android/email/activity/setup/AccountServerBaseFragment;
.source "AutoDiscoverSetupExchangeFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mCacheLoginCredential:Ljava/lang/String;

.field public mDomainText:Landroid/widget/EditText;

.field public mEmailText:Landroid/widget/EditText;

.field private mEmailValidator:Lcom/android/email/EmailAddressValidator;

.field mLoaded:Z

.field mManualButton:Landroid/view/MenuItem;

.field mNextButton:Landroid/view/MenuItem;

.field public mPasswordText:Landroid/widget/EditText;

.field private mStarted:Z

.field private mTrustedCertificates:Landroid/widget/CheckBox;

.field private mTrustedCertificatesString:Landroid/widget/TextView;

.field public mUserNameText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-class v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->enableDisableNextButton()V

    return-void
.end method

.method private enableDisableNextButton()V
    .locals 3

    .prologue
    .line 385
    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    iget-object v2, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/EmailAddressValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 389
    .local v0, enabled:Z
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mNextButton:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mNextButton:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 391
    :cond_0
    return-void

    .line 385
    .end local v0           #enabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSmartValues()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 335
    :try_start_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 336
    iget-object v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v3, :cond_0

    .line 353
    :goto_0
    return-void

    .line 338
    :cond_0
    new-instance v1, Ljava/net/URI;

    iget-object v4, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;

    invoke-virtual {v4, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .local v1, uri:Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 345
    invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, userInfoParts:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mUserNameText:Landroid/widget/EditText;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 347
    array-length v3, v2

    if-le v3, v6, :cond_1

    .line 348
    iget-object v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mPasswordText:Landroid/widget/EditText;

    aget-object v4, v2, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 352
    .end local v2           #userInfoParts:[Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 339
    .end local v1           #uri:Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 340
    .local v0, e:Ljava/net/URISyntaxException;
    sget-object v3, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->TAG:Ljava/lang/String;

    const-string v4, "Failed to restore Account store URI"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private usernameFieldValid(Landroid/widget/EditText;)Z
    .locals 2
    .parameter "usernameView"

    .prologue
    .line 479
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

    .line 490
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mLoaded:Z

    if-nez v2, :cond_0

    .line 507
    :goto_0
    return v0

    .line 492
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mUserNameText:Landroid/widget/EditText;

    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->usernameFieldValid(Landroid/widget/EditText;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailText:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 495
    .local v0, enabled:Z
    :cond_1
    if-eqz v0, :cond_2

    .line 497
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getUri()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->enableNextButton(Z)V

    .line 505
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    goto :goto_0

    .line 498
    :catch_0
    move-exception v1

    .line 499
    .local v1, use:Ljava/net/URISyntaxException;
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected getUri()Ljava/net/URI;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 586
    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 590
    .local v8, userName:Ljava/lang/String;
    const-string v1, "\\"

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 593
    :cond_0
    iput-object v8, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, userInfo:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 596
    .local v3, host:Ljava/lang/String;
    const/4 v5, 0x0

    .line 598
    .local v5, path:Ljava/lang/String;
    new-instance v0, Ljava/net/URI;

    const-string v1, "eas+ssl+trustallcerts"

    const/4 v4, 0x0

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    .local v0, uri:Ljava/net/URI;
    return-object v0
.end method

.method loadSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 6
    .parameter "account"

    .prologue
    .line 430
    iget-boolean v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mLoaded:Z

    if-eqz v3, :cond_0

    .line 431
    invoke-direct {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->validateFields()Z

    move-result v3

    .line 475
    :goto_0
    return v3

    .line 433
    :cond_0
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 435
    .local v0, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 436
    .local v2, userName:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 440
    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_1

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 443
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 446
    :cond_2
    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 447
    iget-object v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mPasswordText:Landroid/widget/EditText;

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 450
    :cond_3
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 451
    .local v1, protocol:Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v3, "eas"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 452
    :cond_4
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown account type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 455
    :cond_5
    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 469
    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getUri()Ljava/net/URI;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedUri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mLoaded:Z

    .line 475
    invoke-direct {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->validateFields()Z

    move-result v3

    goto :goto_0

    .line 470
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 312
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 313
    return-void
.end method

.method public onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .locals 1
    .parameter "result"
    .parameter "hostAuth"

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;

    .line 609
    .local v0, activity:Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;
    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    .line 610
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 227
    if-eqz p1, :cond_0

    .line 228
    const-string v0, "AutoDiscoverSetupExchangeFragment.credential"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 229
    const-string v0, "AutoDiscoverSetupExchangeFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mLoaded:Z

    .line 231
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 126
    const v0, 0x7f0f000d

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 127
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x200

    .line 239
    const v1, 0x7f040049

    .line 241
    .local v1, layoutId:I
    invoke-virtual {p1, v1, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 242
    .local v4, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 244
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->setHasOptionsMenu(Z)V

    .line 246
    new-instance v5, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v5}, Lcom/android/email/EmailAddressValidator;-><init>()V

    iput-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    .line 247
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "AutoDiscoverSetupExchange:onCreate"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 250
    const v5, 0x7f100024

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    .line 251
    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v5, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 258
    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, salesCode:Ljava/lang/String;
    const-string v5, "CEL"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 260
    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 263
    :cond_0
    const v5, 0x7f100023

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificatesString:Landroid/widget/TextView;

    .line 271
    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificatesString:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 273
    new-instance v3, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment$1;-><init>(Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;)V

    .line 285
    .local v3, validationTextWatcher:Landroid/text/TextWatcher;
    const v5, 0x7f1000e6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailText:Landroid/widget/EditText;

    .line 286
    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getImeOptions()I

    move-result v6

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 287
    const v5, 0x7f10001c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mPasswordText:Landroid/widget/EditText;

    .line 288
    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mPasswordText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getImeOptions()I

    move-result v6

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 290
    const v5, 0x7f1000e7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mDomainText:Landroid/widget/EditText;

    .line 291
    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mDomainText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mDomainText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getImeOptions()I

    move-result v6

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 292
    const v5, 0x7f1000e8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mUserNameText:Landroid/widget/EditText;

    .line 293
    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mUserNameText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getImeOptions()I

    move-result v6

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 296
    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mDomainText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 298
    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 299
    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 300
    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 302
    invoke-direct {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->setSmartValues()V

    .line 304
    return-object v4
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 398
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onDestroy()V

    .line 399
    return-void
.end method

.method public onNext()V
    .locals 9

    .prologue
    .line 618
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getUri()Ljava/net/URI;

    move-result-object v7

    .line 619
    .local v7, uri:Ljava/net/URI;
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    .line 620
    .local v6, setupAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 625
    iget-wide v1, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v7}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->startDuplicateTaskCheck(JLjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    return-void

    .line 627
    .end local v6           #setupAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v7           #uri:Ljava/net/URI;
    :catch_0
    move-exception v8

    .line 632
    .local v8, use:Ljava/net/URISyntaxException;
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v8}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 19
    .parameter "item"

    .prologue
    .line 138
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v5, :cond_1

    .line 139
    :cond_0
    const-string v5, "Email"

    const-string v6, "AutoDiscoverSetupExchangeFragment account is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->onBackPressed()V

    .line 141
    const/4 v5, 0x1

    .line 208
    :goto_0
    return v5

    .line 144
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 206
    invoke-super/range {p0 .. p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    goto :goto_0

    .line 146
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v6

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/email/activity/setup/AccountSetupExchange;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 208
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 150
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 151
    .local v12, email:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 152
    .local v13, password:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mDomainText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 153
    .local v11, domain:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 157
    .local v18, userName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v15

    .line 161
    .local v15, trustAllCert:Z
    const/16 v16, 0x0

    .line 166
    .local v16, uriString:Ljava/lang/String;
    if-eqz v15, :cond_2

    :try_start_0
    const-string v2, "eas+ssl+trustallcerts"

    .line 169
    .local v2, scheme:Ljava/lang/String;
    :goto_2
    const/16 v5, 0x40

    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 170
    .local v9, amp:I
    if-gez v9, :cond_3

    .line 171
    const/4 v5, 0x1

    goto :goto_0

    .line 166
    .end local v2           #scheme:Ljava/lang/String;
    .end local v9           #amp:I
    :cond_2
    const-string v2, "eas+ssl+"

    goto :goto_2

    .line 172
    .restart local v2       #scheme:Ljava/lang/String;
    .restart local v9       #amp:I
    :cond_3
    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v12, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, host:Ljava/lang/String;
    const-string v5, "\\"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 175
    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 178
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, userInfo:Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    :cond_5
    new-instance v1, Ljava/net/URI;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v1, uriNew:Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 192
    invoke-static {v11}, Lcom/android/email/activity/setup/SetupData;->setDomain(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 194
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v5, v12}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailAddress(Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;

    move-object/from16 v0, v16

    invoke-virtual {v6, v5, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    const/4 v5, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const v7, 0x7f1000e3

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v10

    .line 199
    .local v10, checkerFragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v14

    .line 200
    .local v14, transaction:Landroid/app/FragmentTransaction;
    const-string v5, "AccountCheckSettingsFragment"

    invoke-virtual {v14, v10, v5}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 201
    const-string v5, "back"

    invoke-virtual {v14, v5}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 202
    invoke-virtual {v14}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_1

    .line 186
    .end local v1           #uriNew:Ljava/net/URI;
    .end local v2           #scheme:Ljava/lang/String;
    .end local v3           #userInfo:Ljava/lang/String;
    .end local v4           #host:Ljava/lang/String;
    .end local v9           #amp:I
    .end local v10           #checkerFragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    .end local v14           #transaction:Landroid/app/FragmentTransaction;
    :catch_0
    move-exception v17

    .line 187
    .local v17, use:Ljava/net/URISyntaxException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f080545

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 190
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x7f100038
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 369
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPause()V

    .line 370
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 131
    const v0, 0x7f100038

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mManualButton:Landroid/view/MenuItem;

    .line 132
    const v0, 0x7f100039

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mNextButton:Landroid/view/MenuItem;

    .line 133
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 360
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onResume()V

    .line 361
    invoke-direct {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->validateFields()Z

    .line 362
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 406
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 408
    const-string v0, "AutoDiscoverSetupExchangeFragment.credential"

    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v0, "AutoDiscoverSetupExchangeFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 410
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 323
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStart()V

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mStarted:Z

    .line 325
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->loadSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    .line 326
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 380
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStop()V

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mStarted:Z

    .line 382
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 640
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 661
    :goto_0
    return v0

    .line 642
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0

    .line 645
    :pswitch_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0

    .line 648
    :pswitch_2
    iget-object v2, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0

    .line 651
    :pswitch_3
    iget-object v2, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 652
    iget-object v2, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 653
    iget-object v2, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 654
    iget-object v2, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 657
    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->validateFields()Z

    goto :goto_0

    .line 656
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 640
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public saveSettingsAfterEdit()V
    .locals 4

    .prologue
    .line 532
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 533
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 534
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 545
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/Controller;->hostChanged(J)V

    .line 550
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 551
    return-void
.end method

.method public saveSettingsAfterSetup()V
    .locals 0

    .prologue
    .line 559
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 418
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 419
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mStarted:Z

    if-eqz v0, :cond_0

    .line 420
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->loadSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    .line 422
    :cond_0
    return-void
.end method
