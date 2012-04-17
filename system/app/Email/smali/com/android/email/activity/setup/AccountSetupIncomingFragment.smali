.class public Lcom/android/email/activity/setup/AccountSetupIncomingFragment;
.super Lcom/android/email/activity/setup/AccountServerBaseFragment;
.source "AccountSetupIncomingFragment.java"


# instance fields
.field private bFirstSelected:Z

.field private mCacheLoginCredential:Ljava/lang/String;

.field private mConfigured:Z

.field private mDeletePolicyLabelView:Landroid/widget/TextView;

.field private mDeletePolicyView:Landroid/widget/Spinner;

.field private mImapPathPrefixSectionView:Landroid/view/View;

.field private mImapPathPrefixView:Landroid/widget/EditText;

.field private mLoaded:Z

.field private mLoadedDeletePolicy:I

.field private mPasswordView:Landroid/widget/EditText;

.field private mPortView:Landroid/widget/EditText;

.field private mSecurityTypeView:Landroid/widget/Spinner;

.field private mServerLabelView:Landroid/widget/TextView;

.field private mServerView:Landroid/widget/EditText;

.field private mStarted:Z

.field private mUsernameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;-><init>()V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->bFirstSelected:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->bFirstSelected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->bFirstSelected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->updatePortFromSecurityType()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->validateFields()V

    return-void
.end method

.method private configureEditor()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 375
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mConfigured:Z

    if-eqz v2, :cond_0

    .line 402
    :goto_0
    return-void

    .line 377
    :cond_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 379
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v2, :cond_2

    .line 380
    :cond_1
    const-string v2, "Email"

    const-string v3, "AccountSetupIncomingFragment Account is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 385
    :cond_2
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    .line 387
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 388
    .local v1, protocol:Ljava/lang/String;
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    .line 389
    const-string v2, "pop3"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 390
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerLabelView:Landroid/widget/TextView;

    const v3, 0x7f0800e0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 391
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixSectionView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixView:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 393
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    const v3, 0x2000006

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 401
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mConfigured:Z

    goto :goto_0

    .line 394
    :cond_3
    const-string v2, "imap"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 395
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerLabelView:Landroid/widget/TextView;

    const v3, 0x7f0800e1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 396
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyLabelView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_1

    .line 399
    :cond_4
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown account type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getPortFromSecurityType()I
    .locals 5

    .prologue
    .line 525
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v3, v3, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 526
    .local v1, securityType:I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 527
    .local v2, useSsl:Z
    :goto_0
    if-eqz v2, :cond_2

    const/16 v0, 0x3e1

    .line 528
    .local v0, port:I
    :goto_1
    const-string v3, "pop3"

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    if-eqz v2, :cond_3

    const/16 v0, 0x3e3

    .line 531
    :cond_0
    :goto_2
    return v0

    .line 526
    .end local v0           #port:I
    .end local v2           #useSsl:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 527
    .restart local v2       #useSsl:Z
    :cond_2
    const/16 v0, 0x8f

    goto :goto_1

    .line 529
    .restart local v0       #port:I
    :cond_3
    const/16 v0, 0x6e

    goto :goto_2
.end method

.method private loadSettings()V
    .locals 14

    .prologue
    const/4 v12, 0x1

    .line 408
    iget-boolean v10, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    if-eqz v10, :cond_0

    .line 499
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 413
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_1

    .line 414
    const-string v10, "Email"

    const-string v11, "AccountSetupIncomingFragment 2 Account is null "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 418
    :cond_1
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v6

    .line 432
    .local v6, recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    const/4 v9, 0x0

    .line 433
    .local v9, username:Ljava/lang/String;
    const/4 v3, 0x0

    .line 435
    .local v3, password:Ljava/lang/String;
    iget-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 436
    if-eqz v9, :cond_2

    .line 437
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v10, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setSelection(I)V

    .line 441
    :cond_2
    iget-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 442
    if-eqz v3, :cond_3

    .line 443
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setSelection(I)V

    .line 447
    :cond_3
    const-string v10, "imap"

    iget-object v11, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 448
    iget-object v5, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    .line 449
    .local v5, prefix:Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 450
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixView:Landroid/widget/EditText;

    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixView:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setSelection(I)V

    .line 463
    .end local v5           #prefix:Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v10

    iput v10, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoadedDeletePolicy:I

    .line 464
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    iget v11, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoadedDeletePolicy:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 466
    iget v1, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    .line 467
    .local v1, flags:I
    and-int/lit8 v1, v1, -0x5

    .line 468
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 470
    iget-object v2, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 471
    .local v2, hostname:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 472
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v10, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setSelection(I)V

    .line 475
    :cond_5
    iget v4, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    .line 476
    .local v4, port:I
    const/4 v10, -0x1

    if-eq v4, v10, :cond_8

    .line 477
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setSelection(I)V

    .line 483
    :goto_1
    iput-object v6, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedRecvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 484
    iput-boolean v12, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    .line 487
    const-string v8, "ORA FTM AMN IDE ORG ONE ORO ORS OPT MST"

    .line 488
    .local v8, strSalesListOfOrange:Ljava/lang/String;
    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 489
    .local v7, salesCode:Ljava/lang/CharSequence;
    if-eqz v7, :cond_6

    const/4 v10, 0x3

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ne v10, v11, :cond_6

    const-string v10, "ORA FTM AMN IDE ORG ONE ORO ORS OPT MST"

    invoke-virtual {v10, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_6

    .line 492
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setSelection(I)V

    .line 494
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 495
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setSelection(I)V

    .line 498
    :cond_6
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->validateFields()V

    goto/16 :goto_0

    .line 453
    .end local v1           #flags:I
    .end local v2           #hostname:Ljava/lang/String;
    .end local v4           #port:I
    .end local v7           #salesCode:Ljava/lang/CharSequence;
    .end local v8           #strSalesListOfOrange:Ljava/lang/String;
    :cond_7
    const-string v10, "pop3"

    iget-object v11, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 455
    new-instance v10, Ljava/lang/Error;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown account type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v12}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v10

    .line 480
    .restart local v1       #flags:I
    .restart local v2       #hostname:Ljava/lang/String;
    .restart local v4       #port:I
    :cond_8
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->updatePortFromSecurityType()V

    goto/16 :goto_1
.end method

.method private updatePortFromSecurityType()V
    .locals 3

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getPortFromSecurityType()I

    move-result v0

    .line 536
    .local v0, port:I
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 538
    return-void
.end method

.method private validateFields()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 506
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mConfigured:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    if-nez v2, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 511
    .local v0, enabled:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 512
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isPortFieldValid(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 513
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f080304

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 515
    const/4 v0, 0x0

    .line 518
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->enableNextButton(Z)V

    .line 521
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    goto :goto_0

    .line 508
    .end local v0           #enabled:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public haveSettingsChanged()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 660
    const/4 v0, 0x0

    .line 664
    .local v0, deletePolicyChanged:Z
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 665
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v2, v2, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 666
    .local v1, newDeletePolicy:I
    iget v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoadedDeletePolicy:I

    if-eq v2, v1, :cond_3

    move v0, v3

    .line 669
    .end local v1           #newDeletePolicy:I
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->haveSettingsChanged()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    return v4

    .restart local v1       #newDeletePolicy:I
    :cond_3
    move v0, v4

    .line 666
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 287
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 288
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 608
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 610
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 613
    :pswitch_1
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onClick(Landroid/view/View;)V

    .line 614
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 616
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 608
    :pswitch_data_0
    .packed-switch 0x7f100029
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 124
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    if-eqz p1, :cond_0

    .line 127
    const-string v0, "AccountSetupIncomingFragment.credential"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 128
    const-string v0, "AccountSetupIncomingFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    .line 131
    :cond_0
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-ne v0, v2, :cond_1

    .line 132
    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->setHasOptionsMenu(Z)V

    .line 133
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 246
    invoke-super {p0, p1, p2}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 247
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 248
    const v0, 0x7f0f000c

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 253
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 144
    const v3, 0x7f040018

    .line 146
    .local v3, layoutId:I
    const/4 v8, 0x0

    invoke-virtual {p1, v3, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 147
    .local v7, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 149
    .local v0, context:Landroid/content/Context;
    const v8, 0x7f10001b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    .line 150
    const v8, 0x7f10001c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    .line 151
    const v8, 0x7f10005a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerLabelView:Landroid/widget/TextView;

    .line 152
    const v8, 0x7f10001d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    .line 153
    const v8, 0x7f10005c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    .line 154
    const v8, 0x7f10005b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    .line 155
    const v8, 0x7f10005d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyLabelView:Landroid/widget/TextView;

    .line 156
    const v8, 0x7f10005e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    .line 157
    const v8, 0x7f10005f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixSectionView:Landroid/view/View;

    .line 158
    const v8, 0x7f100060

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixView:Landroid/widget/EditText;

    .line 160
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    iget-boolean v8, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v9, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 162
    iget-boolean v8, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-eqz v8, :cond_0

    .line 163
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->requestFocus()Z

    .line 166
    :cond_0
    const/4 v8, 0x5

    new-array v4, v8, [Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v8, 0x0

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800e4

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v4, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800e6

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v4, v8

    const/4 v8, 0x2

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/16 v10, 0x9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800e5

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v4, v8

    const/4 v8, 0x3

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800e8

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v4, v8

    const/4 v8, 0x4

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800e7

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v4, v8

    .line 181
    .local v4, securityTypes:[Lcom/android/email/activity/setup/SpinnerOption;
    const/4 v8, 0x2

    new-array v1, v8, [Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v8, 0x0

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800ea

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v1, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800eb

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v1, v8

    .line 190
    .local v1, deletePolicies:[Lcom/android/email/activity/setup/SpinnerOption;
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    invoke-direct {v5, v0, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 192
    .local v5, securityTypesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v8, 0x1090009

    invoke-virtual {v5, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 193
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v8, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 195
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    invoke-direct {v2, v0, v8, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 197
    .local v2, deletePoliciesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v8, 0x1090009

    invoke-virtual {v2, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 199
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v8, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 203
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->bFirstSelected:Z

    .line 204
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    new-instance v9, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$1;

    invoke-direct {v9, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 219
    new-instance v6, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$2;

    invoke-direct {v6, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V

    .line 230
    .local v6, validationTextWatcher:Landroid/text/TextWatcher;
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 231
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 232
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 233
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 236
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    const-string v9, "0123456789"

    invoke-static {v9}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 241
    return-object v7

    .line 160
    .end local v1           #deletePolicies:[Lcom/android/email/activity/setup/SpinnerOption;
    .end local v2           #deletePoliciesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    .end local v4           #securityTypes:[Lcom/android/email/activity/setup/SpinnerOption;
    .end local v5           #securityTypesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    .end local v6           #validationTextWatcher:Landroid/text/TextWatcher;
    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 344
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onDestroy()V

    .line 345
    return-void
.end method

.method public onNext()V
    .locals 13

    .prologue
    .line 627
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mConfigured:Z

    .line 629
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v10

    .line 631
    .local v10, setupAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v0, v0, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 634
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v7

    .line 635
    .local v7, recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 636
    .local v11, userName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 637
    .local v12, userPassword:Ljava/lang/String;
    iput-object v11, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 638
    invoke-virtual {v7, v11, v12}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 643
    .local v3, serverAddress:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 648
    .local v9, serverPort:I
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v0, v0, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 649
    .local v8, securityType:I
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v7, v0, v3, v9, v8}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 650
    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    .line 654
    iget-wide v1, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mCacheLoginCredential:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->startDuplicateTaskCheck(JLjava/lang/String;Ljava/lang/String;I)V

    .line 656
    return-void

    .line 644
    .end local v8           #securityType:I
    .end local v9           #serverPort:I
    :catch_0
    move-exception v6

    .line 645
    .local v6, e:Ljava/lang/NumberFormatException;
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getPortFromSecurityType()I

    move-result v9

    .line 646
    .restart local v9       #serverPort:I
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-integer server port; using \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 273
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 279
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 276
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    .line 273
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
    .line 321
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPause()V

    .line 322
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 260
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 261
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    .line 262
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 263
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

    .line 265
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 262
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 312
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onResume()V

    .line 313
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->validateFields()V

    .line 314
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 352
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 354
    const-string v0, "AccountSetupIncomingFragment.credential"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mCacheLoginCredential:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v0, "AccountSetupIncomingFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 356
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStart()V

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mStarted:Z

    .line 300
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->configureEditor()V

    .line 301
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->loadSettings()V

    .line 302
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 332
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStop()V

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mStarted:Z

    .line 334
    return-void
.end method

.method public saveSettingsAfterEdit()V
    .locals 4

    .prologue
    .line 548
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 549
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 550
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 552
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 553
    return-void
.end method

.method public saveSettingsAfterSetup()V
    .locals 7

    .prologue
    .line 561
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 563
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v2

    .line 564
    .local v2, recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v3

    .line 571
    .local v3, sendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "smtp"

    invoke-static {v4, v5, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->inferServerName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, hostName:Ljava/lang/String;
    iget-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v4, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    iget v5, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    iget v6, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 574
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 364
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 365
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mStarted:Z

    if-eqz v0, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->configureEditor()V

    .line 367
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->loadSettings()V

    .line 369
    :cond_0
    return-void
.end method
