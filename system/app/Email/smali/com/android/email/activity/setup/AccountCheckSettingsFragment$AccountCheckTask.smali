.class Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;
.super Landroid/os/AsyncTask;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/android/emailcommon/mail/MessagingException;",
        ">;"
    }
.end annotation


# instance fields
.field final mCheckEmail:Ljava/lang/String;

.field final mCheckPassword:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field final mMode:I

.field final mSenderUri:Ljava/lang/String;

.field final mStoreHost:Ljava/lang/String;

.field final mStoreUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 1
    .parameter
    .parameter "mode"
    .parameter "checkAccount"

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 505
    invoke-virtual {p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    .line 506
    iput p2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    .line 507
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreUri:Ljava/lang/String;

    .line 508
    iget-object v0, p3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreHost:Ljava/lang/String;

    .line 509
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mSenderUri:Ljava/lang/String;

    .line 510
    iget-object v0, p3, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    .line 511
    iget-object v0, p3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckPassword:Ljava/lang/String;

    .line 512
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/mail/MessagingException;
    .locals 19
    .parameter "params"

    .prologue
    .line 521
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_8

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    const/4 v12, 0x0

    .line 634
    :goto_0
    return-object v12

    .line 524
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->publishProgress([Ljava/lang/Object;)V

    .line 525
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_1

    .line 526
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Begin auto-discover for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v1

    .line 532
    .local v1, store:Lcom/android/email/mail/Store;
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getDomain()Ljava/lang/String;

    move-result-object v5

    .line 534
    .local v5, checkDomain:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckPassword:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/email/mail/Store;->autoDiscover(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v14

    .line 543
    .local v14, result:Landroid/os/Bundle;
    if-nez v14, :cond_2

    .line 544
    new-instance v12, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v12, v2, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 629
    .end local v1           #store:Lcom/android/email/mail/Store;
    .end local v5           #checkDomain:Ljava/lang/String;
    .end local v14           #result:Landroid/os/Bundle;
    :catch_0
    move-exception v12

    .line 633
    .local v12, me:Lcom/android/emailcommon/mail/MessagingException;
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccountCheckTask MessagingException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 546
    .end local v12           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v1       #store:Lcom/android/email/mail/Store;
    .restart local v5       #checkDomain:Ljava/lang/String;
    .restart local v14       #result:Landroid/os/Bundle;
    :cond_2
    :try_start_1
    const-string v2, "autodiscover_error_code"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 549
    .local v9, errorCode:I
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAutoDiscoverCount()I

    move-result v11

    .line 550
    .local v11, mCheckAutodicoverCount:I
    if-nez v11, :cond_3

    .line 551
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setAutoDiscoverCount(I)V

    .line 552
    const/4 v2, -0x1

    if-eq v9, v2, :cond_4

    .line 553
    new-instance v12, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v12, v2, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto/16 :goto_0

    .line 554
    :cond_3
    const/4 v2, 0x1

    if-ne v2, v11, :cond_4

    .line 555
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setAutoDiscoverCount(I)V

    .line 558
    :cond_4
    const/4 v2, 0x5

    if-eq v9, v2, :cond_5

    const/4 v2, 0x1

    if-ne v9, v2, :cond_6

    .line 560
    :cond_5
    new-instance v12, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v12, v2, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto/16 :goto_0

    .line 561
    :cond_6
    const/4 v2, -0x1

    if-eq v9, v2, :cond_7

    .line 562
    new-instance v12, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v12, v2, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto/16 :goto_0

    .line 564
    :cond_7
    const-string v2, "autodiscover_host_auth"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 566
    .local v17, serverInfo:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    new-instance v12, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-direct {v12, v2, v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto/16 :goto_0

    .line 571
    .end local v1           #store:Lcom/android/email/mail/Store;
    .end local v5           #checkDomain:Ljava/lang/String;
    .end local v9           #errorCode:I
    .end local v11           #mCheckAutodicoverCount:I
    .end local v14           #result:Landroid/os/Bundle;
    .end local v17           #serverInfo:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_d

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 573
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 574
    :cond_9
    const-string v2, "Email"

    const-string v3, "Begin check of incoming email settings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->publishProgress([Ljava/lang/Object;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    #calls: Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->checkITPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    invoke-static {v2, v3, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$000(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 583
    .local v18, tmpURI:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v2, v3}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v1

    .line 587
    .restart local v1       #store:Lcom/android/email/mail/Store;
    invoke-virtual {v1}, Lcom/android/email/mail/Store;->checkSettings()Landroid/os/Bundle;

    move-result-object v7

    .line 588
    .local v7, bundle:Landroid/os/Bundle;
    const/4 v15, 0x0

    .line 590
    .local v15, resultCode:I
    if-eqz v7, :cond_a

    .line 591
    const-string v2, "validate_result_code"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 593
    const-string v2, "validate_protocol_version"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 595
    .local v13, protocolVersion:Ljava/lang/String;
    if-eqz v13, :cond_a

    .line 596
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    iput-object v13, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 599
    .end local v13           #protocolVersion:Ljava/lang/String;
    :cond_a
    const/4 v2, 0x7

    if-ne v15, v2, :cond_b

    .line 600
    const-string v2, "validate_policy_set"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/service/PolicySet;

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setPolicySet(Lcom/android/emailcommon/service/PolicySet;)V

    .line 602
    new-instance v12, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreHost:Ljava/lang/String;

    invoke-direct {v12, v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 604
    :cond_b
    const/16 v2, 0x8

    if-ne v15, v2, :cond_c

    .line 605
    const-string v2, "validate_unsupported_policies"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 607
    .local v8, data:[Ljava/lang/String;
    new-instance v12, Lcom/android/emailcommon/mail/MessagingException;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreHost:Ljava/lang/String;

    invoke-direct {v12, v15, v2, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 608
    .end local v8           #data:[Ljava/lang/String;
    :cond_c
    const/4 v2, -0x1

    if-eq v15, v2, :cond_d

    .line 609
    const-string v2, "validate_error_message"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 611
    .local v10, errorMessage:Ljava/lang/String;
    new-instance v12, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v12, v15, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 616
    .end local v1           #store:Lcom/android/email/mail/Store;
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v10           #errorMessage:Ljava/lang/String;
    .end local v15           #resultCode:I
    .end local v18           #tmpURI:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_f

    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 618
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 619
    :cond_e
    const-string v2, "Email"

    const-string v3, "Begin check of outgoing email settings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->publishProgress([Ljava/lang/Object;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mSenderUri:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v16

    .line 622
    .local v16, sender:Lcom/android/email/mail/Sender;
    invoke-virtual/range {v16 .. v16}, Lcom/android/email/mail/Sender;->close()V

    .line 623
    invoke-virtual/range {v16 .. v16}, Lcom/android/email/mail/Sender;->open()V

    .line 624
    invoke-virtual/range {v16 .. v16}, Lcom/android/email/mail/Sender;->close()V
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 628
    .end local v16           #sender:Lcom/android/email/mail/Sender;
    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 482
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/emailcommon/mail/MessagingException;)V
    .locals 19
    .parameter "result"

    .prologue
    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 842
    .end local p1
    :goto_0
    return-void

    .line 716
    .restart local p1
    :cond_0
    if-nez p1, :cond_1

    .line 717
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(IILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0

    .line 719
    :cond_1
    const/4 v10, 0x6

    .line 720
    .local v10, progressState:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    .line 721
    .local v2, exceptionType:I
    const/4 v8, 0x0

    .line 722
    .local v8, message:Ljava/lang/String;
    const-string v14, "ro.csc.sales_code"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 723
    .local v11, salesCode:Ljava/lang/String;
    if-eqz v11, :cond_2

    const-string v14, "MAX"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "DTM"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "TNL"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "TMZ"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "TMU"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "TPL"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "COS"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "TMS"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "TRG"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "MBM"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "TMT"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 730
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 732
    :cond_3
    const/4 v4, 0x0

    .line 733
    .local v4, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    const/4 v6, 0x0

    .line 735
    .local v6, id:I
    sparse-switch v2, :sswitch_data_0

    .line 836
    if-nez v8, :cond_c

    const v6, 0x7f08010e

    .line 840
    .end local p1
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-virtual {v14, v10, v6, v8, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(IILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto/16 :goto_0

    .line 740
    .restart local p1
    :sswitch_0
    const v6, 0x7f0803b9

    .line 744
    const/4 v10, 0x7

    .line 745
    goto :goto_1

    .line 747
    :sswitch_1
    check-cast p1, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    .end local p1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 749
    const/4 v14, 0x1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAutoDiscoverCount()I

    move-result v15

    if-eq v14, v15, :cond_4

    if-eqz v4, :cond_5

    .line 751
    :cond_4
    const/16 v10, 0x8

    goto :goto_1

    .line 753
    :cond_5
    const v6, 0x7f0803b9

    .line 754
    const/4 v10, 0x7

    .line 757
    goto :goto_1

    .line 763
    .restart local p1
    :sswitch_2
    const/4 v10, 0x5

    .line 764
    goto :goto_1

    .line 771
    :sswitch_3
    if-nez v8, :cond_6

    const v6, 0x7f08010b

    .line 773
    :goto_2
    goto :goto_1

    .line 771
    :cond_6
    const v6, 0x7f08010c

    goto :goto_2

    .line 776
    :sswitch_4
    if-eqz v8, :cond_7

    const-string v14, ""

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    :cond_7
    const v6, 0x7f080109

    .line 778
    :goto_3
    goto :goto_1

    .line 776
    :cond_8
    const v6, 0x7f08010a

    goto :goto_3

    .line 780
    :sswitch_5
    const v6, 0x7f08010d

    .line 781
    goto :goto_1

    .line 783
    :sswitch_6
    const v6, 0x7f080113

    .line 784
    goto :goto_1

    .line 786
    :sswitch_7
    const v6, 0x7f080110

    .line 787
    goto :goto_1

    .line 789
    :sswitch_8
    const v6, 0x7f080111

    .line 790
    goto :goto_1

    .line 792
    :sswitch_9
    const v6, 0x7f080118

    .line 795
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionData()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    move-object v13, v14

    check-cast v13, [Ljava/lang/String;

    .line 796
    .local v13, unsupportedPolicies:[Ljava/lang/String;
    if-nez v13, :cond_9

    .line 797
    const-string v14, "AccountCheckSettingsFragment"

    const-string v15, "No data for unsupported policies?"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 802
    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 803
    .local v12, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 804
    .local v3, first:Z
    move-object v1, v13

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_4
    if-ge v5, v7, :cond_b

    aget-object v9, v1, v5

    .line 805
    .local v9, policyName:Ljava/lang/String;
    if-eqz v3, :cond_a

    .line 806
    const/4 v3, 0x0

    .line 810
    :goto_5
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 808
    :cond_a
    const-string v14, ", "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 812
    .end local v9           #policyName:Ljava/lang/String;
    :cond_b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 813
    goto/16 :goto_1

    .line 815
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #first:Z
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v12           #sb:Ljava/lang/StringBuilder;
    .end local v13           #unsupportedPolicies:[Ljava/lang/String;
    :sswitch_a
    const v6, 0x7f080115

    .line 816
    goto/16 :goto_1

    .line 818
    :sswitch_b
    const v6, 0x7f080112

    .line 819
    goto/16 :goto_1

    .line 829
    :sswitch_c
    const v6, 0x7f080114

    .line 831
    goto/16 :goto_1

    .line 833
    :sswitch_d
    const v6, 0x7f0803cf

    .line 834
    goto/16 :goto_1

    .line 836
    :cond_c
    const v6, 0x7f08010f

    goto/16 :goto_1

    .line 735
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_7
        0x3 -> :sswitch_8
        0x4 -> :sswitch_b
        0x5 -> :sswitch_4
        0x7 -> :sswitch_2
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xe -> :sswitch_d
        0x10 -> :sswitch_c
        0x4a -> :sswitch_3
        0x4b -> :sswitch_0
        0x4c -> :sswitch_1
        0x4d -> :sswitch_5
    .end sparse-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 482
    check-cast p1, Lcom/android/emailcommon/mail/MessagingException;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->onPostExecute(Lcom/android/emailcommon/mail/MessagingException;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4
    .parameter "progress"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 698
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    :goto_0
    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(IILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 482
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
