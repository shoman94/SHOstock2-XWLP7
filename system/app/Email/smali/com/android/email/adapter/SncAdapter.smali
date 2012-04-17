.class public Lcom/android/email/adapter/SncAdapter;
.super Lcom/android/email/adapter/ProtocolAdapter;
.source "SncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/adapter/SncAdapter$SncResults;
    }
.end annotation


# instance fields
.field private mAvailableAccountResponse:Z

.field private mHandler:Landroid/os/Handler;

.field private mMessagingController:Lcom/android/email/SncMessagingController;

.field private mSncResultCallback:Lcom/android/email/adapter/SncAdapter$SncResults;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/email/adapter/ProtocolAdapter;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/adapter/SncAdapter;->mSncResultCallback:Lcom/android/email/adapter/SncAdapter$SncResults;

    .line 99
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/SncMessagingController;->getInstance(Landroid/content/Context;)Lcom/android/email/SncMessagingController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/adapter/SncAdapter;->mMessagingController:Lcom/android/email/SncMessagingController;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/adapter/SncAdapter;->mHandler:Landroid/os/Handler;

    .line 101
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/adapter/SncAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/email/adapter/SncAdapter;->mAvailableAccountResponse:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/email/adapter/SncAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/email/adapter/SncAdapter;->mAvailableAccountResponse:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/email/adapter/SncAdapter;)Lcom/android/email/SncMessagingController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter;->mMessagingController:Lcom/android/email/SncMessagingController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/adapter/SncAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/adapter/SncAdapter;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/email/adapter/SncAdapter;->stopPushForUnifiedAccount(J)V

    return-void
.end method

.method private loadAttachment(JJJJ)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1318
    new-instance v2, Lcom/android/email/adapter/SncAdapter$11;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tLoadAtt_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p7

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move-wide/from16 v5, p7

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide v11, p1

    invoke-direct/range {v2 .. v12}, Lcom/android/email/adapter/SncAdapter$11;-><init>(Lcom/android/email/adapter/SncAdapter;Ljava/lang/String;JJJJ)V

    invoke-virtual {v2}, Lcom/android/email/adapter/SncAdapter$11;->start()V

    .line 1329
    return-void
.end method

.method public static parseSyncLookback(I)I
    .locals 1
    .parameter "syncLookback"

    .prologue
    const/16 v0, 0x1e

    .line 1013
    packed-switch p0, :pswitch_data_0

    .line 1028
    :goto_0
    :pswitch_0
    return v0

    .line 1015
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1017
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1019
    :pswitch_3
    const/4 v0, 0x7

    goto :goto_0

    .line 1021
    :pswitch_4
    const/16 v0, 0xe

    goto :goto_0

    .line 1013
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private stopPushForUnifiedAccount(J)V
    .locals 12
    .parameter "excludeAccountId"

    .prologue
    .line 649
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreUnifiedMailbox(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v11

    .line 650
    .local v11, unifiedMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v11, :cond_1

    .line 651
    const-string v0, "SncAdapter"

    const-string v1, "No unified acc to stop!"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccounts(Landroid/content/Context;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    .line 656
    .local v7, accounts:[Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v7, :cond_3

    .line 657
    move-object v8, v7

    .local v8, arr$:[Lcom/android/emailcommon/provider/EmailContent$Account;
    array-length v10, v8

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v10, :cond_3

    aget-object v6, v8, v9

    .line 658
    .local v6, a:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-wide v0, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    iget v1, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-static {v1}, Lcom/android/email/esp/ServiceProvider;->getTransportFromType(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 657
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 666
    .end local v6           #a:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v8           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v9           #i$:I
    .end local v10           #len$:I
    :cond_3
    iget-wide v1, v11, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    iget-wide v3, v11, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/adapter/SncAdapter;->setMailboxSyncable(JJZ)V

    .line 667
    const-string v0, "SncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Since no acc, PUSH stopped for UnifiedInbox - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v11, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addBackupAccount(J)V
    .locals 4
    .parameter "accountId"

    .prologue
    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v0, status:Landroid/os/Bundle;
    const-string v1, "status_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    const-string v1, "SncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " addBackupAccount - accountId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/android/email/adapter/SncAdapter;->mSncResultCallback:Lcom/android/email/adapter/SncAdapter$SncResults;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/email/adapter/SncAdapter$SncResults;->onAddAccountFinished(Landroid/os/Bundle;J)V

    .line 115
    return-void
.end method

.method public addUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .parameter "endpointName"
    .parameter "userName"
    .parameter "password"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 628
    .local p4, serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    const-string v0, "SNCEVENT@CONTR"

    const-string v1, "addUserAccount"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getInstance(Landroid/content/Context;)Lcom/android/email/syncnconnect/SyncConnectImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 631
    return-void
.end method

.method public createDefaultMailbox(J)V
    .locals 12
    .parameter "accountId"

    .prologue
    const v11, 0x7f08000f

    const v10, 0x7f08000e

    const/4 v9, 0x0

    const/16 v8, 0x19

    const/4 v7, 0x1

    .line 857
    sget-object v3, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2, v9}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v1

    .line 858
    .local v1, inboxId:J
    const-wide/16 v3, -0x1

    cmp-long v3, v3, v1

    if-eqz v3, :cond_0

    .line 859
    const-string v3, "SncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "default mailboxes are already created for acc - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    :goto_0
    return-void

    .line 867
    :cond_0
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    const-string v3, "INBOX"

    sget-object v4, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f08000c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/LegacyConversions;->inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, p1, p2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>(JLjava/lang/String;I)V

    .line 871
    .local v0, box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iput-boolean v7, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 872
    iput v8, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 874
    sget-object v3, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 876
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .end local v0           #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/LegacyConversions;->inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, p1, p2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>(JLjava/lang/String;I)V

    .line 880
    .restart local v0       #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iput-boolean v7, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 881
    iput v8, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 883
    sget-object v3, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 885
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .end local v0           #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080010

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080010

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/LegacyConversions;->inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, p1, p2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>(JLjava/lang/String;I)V

    .line 889
    .restart local v0       #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iput-boolean v7, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 890
    iput v8, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 892
    sget-object v3, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 894
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .end local v0           #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/LegacyConversions;->inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, p1, p2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>(JLjava/lang/String;I)V

    .line 898
    .restart local v0       #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iput-boolean v7, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 899
    iput v8, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 900
    sget-object v3, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 902
    const-string v3, "SncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default mailboxes are created for accountId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    sget-object v3, Lcom/android/email/adapter/SncAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    const/16 v4, 0x64

    invoke-virtual {v3, p1, p2, v9, v4}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxListStatus(JII)V

    goto/16 :goto_0
.end method

.method public createUnifiedAccount()Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x2

    .line 735
    const/4 v7, 0x0

    .line 736
    .local v7, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    const-wide/16 v8, -0x1

    .line 738
    .local v8, accountId:J
    const-wide/16 v0, -0x1

    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "displayName=\'##snc##\'"

    invoke-static {v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    .line 741
    const-string v0, "SncAdapter"

    const-string v1, "Unified account is already created"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    invoke-virtual {p0}, Lcom/android/email/adapter/SncAdapter;->createUnifiedMailbox()V

    .line 746
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 792
    :goto_0
    return-object v0

    .line 749
    :cond_0
    new-instance v7, Lcom/android/emailcommon/provider/EmailContent$Account;

    .end local v7           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-direct {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    .line 750
    .restart local v7       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    const-string v0, "##snc##"

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 751
    const-string v0, "snc@snc.snc"

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailAddress(Ljava/lang/String;)V

    .line 752
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/syncnconnect/utils/SncServerSettings;->getStoreUri(Landroid/content/Context;)Ljava/net/URI;

    move-result-object v10

    .line 753
    .local v10, incoming:Ljava/net/URI;
    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 754
    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/syncnconnect/utils/SncServerSettings;->getSenderUri(Landroid/content/Context;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 756
    const/4 v0, 0x5

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v0

    iput v0, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    .line 758
    iput v4, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    .line 759
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 761
    new-instance v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v1, 0x12c

    const/16 v2, 0x4ec

    const/16 v3, 0x7f

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    .line 766
    invoke-virtual {v7, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->setTypeMsg(I)V

    .line 767
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 790
    const-string v0, "SncAdapter"

    const-string v1, "Added unified snc account"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    invoke-virtual {p0}, Lcom/android/email/adapter/SncAdapter;->createUnifiedMailbox()V

    move-object v0, v7

    .line 792
    goto :goto_0
.end method

.method public createUnifiedMailbox()V
    .locals 8

    .prologue
    .line 828
    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "displayName=\'##snc##\'"

    invoke-static {v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 832
    .local v0, accId:J
    sget-object v4, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreUnifiedMailbox(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v3

    .line 833
    .local v3, mbUnifiedInbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v3, :cond_0

    .line 834
    const-string v4, "SncAdapter"

    const-string v5, "Unified SNC mailboxes are already created"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :goto_0
    return-void

    .line 837
    :cond_0
    new-instance v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    const-string v4, "UnifiedInbox"

    const/16 v5, 0x102

    invoke-direct {v2, v0, v1, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>(JLjava/lang/String;I)V

    .line 839
    .local v2, box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    const/4 v4, -0x3

    iput v4, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 840
    const/16 v4, 0x64

    iput v4, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 841
    sget-object v4, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 842
    const-string v4, "SncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unified inbox "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " created for account - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    new-instance v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .end local v2           #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f08000f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x103

    invoke-direct {v2, v0, v1, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>(JLjava/lang/String;I)V

    .line 847
    .restart local v2       #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    sget-object v4, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 848
    const-string v4, "SncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unified Trash "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " created for account - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteAccountSync(JLandroid/content/Context;)V
    .locals 6
    .parameter "accountId"
    .parameter "context"

    .prologue
    .line 675
    const-string v3, "SNCEVENT@CONTR"

    const-string v4, "deleteAccountSync"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 678
    .local v1, bundle:Landroid/os/Bundle;
    sget-object v3, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 679
    const-string v3, "SNCEVENT@CONTR"

    const-string v4, "deleteAccountSync - Airplane mode ON"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v3, "status_text"

    sget-object v4, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08058b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v3, "status_code"

    const/16 v4, 0x5d

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 683
    sget-object v3, Lcom/android/email/adapter/SncAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v3, v1, p1, p2}, Lcom/android/email/Controller$ServiceCallback;->deleteUserAccountStatus(Landroid/os/Bundle;J)V

    .line 715
    :goto_0
    return-void

    .line 688
    :cond_0
    const-wide/16 v3, -0x1

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    .line 689
    :try_start_0
    const-string v3, "SncAdapter"

    const-string v4, "Invalid Account Id"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 704
    :catch_0
    move-exception v2

    .line 705
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "SncAdapter"

    const-string v4, "Exception while deleting account"

    invoke-static {v3, v4, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 713
    sget-object v3, Lcom/android/email/adapter/SncAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v3, v1, p1, p2}, Lcom/android/email/Controller$ServiceCallback;->deleteUserAccountStatus(Landroid/os/Bundle;J)V

    goto :goto_0

    .line 693
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-static {p3, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 694
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_2

    .line 695
    const-string v3, "SncAdapter"

    const-string v4, "Account is Empty: Null"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string v3, "validate_result_code"

    const/16 v4, 0x34

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 698
    sget-object v3, Lcom/android/email/adapter/SncAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v3, v1, p1, p2}, Lcom/android/email/Controller$ServiceCallback;->deleteUserAccountStatus(Landroid/os/Bundle;J)V

    goto :goto_0

    .line 702
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/email/adapter/SncAdapter;->stopPushForUnifiedAccount(J)V

    .line 703
    sget-object v3, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getInstance(Landroid/content/Context;)Lcom/android/email/syncnconnect/SyncConnectImpl;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->deleteUserAccount(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public deleteMessage(Ljava/util/HashSet;JJ)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;JJ)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1202
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x6

    invoke-static {v0, p2, p3, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v2

    .line 1204
    const-string v0, "SncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteMessage() is called : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    cmp-long v0, p4, v2

    if-eqz v0, :cond_0

    .line 1207
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/email/adapter/SncAdapter;->moveMessage(Ljava/util/HashSet;J)V

    move v0, v1

    .line 1245
    :goto_0
    return v0

    .line 1211
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1212
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1215
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3, v4, v5}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 1216
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1217
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1221
    :cond_1
    :try_start_0
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "com.android.email.provider"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1230
    :goto_2
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1231
    const-string v0, "SNCEVENT@CONTR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessage | Airplane mode ON accId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    const/4 v0, 0x0

    goto :goto_0

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    const-string v2, "SncAdapter"

    const-string v3, "EVENT@CTRL [deleteMessage] [RemoteException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 1225
    :catch_1
    move-exception v0

    .line 1226
    const-string v2, "SncAdapter"

    const-string v3, "EVENT@CTRL [deleteMessage] [OperationApplicationException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_2

    .line 1238
    :cond_2
    new-instance v0, Lcom/android/email/adapter/SncAdapter$8;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tDelMsg_PPA_accId_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2, p2, p3}, Lcom/android/email/adapter/SncAdapter$8;-><init>(Lcom/android/email/adapter/SncAdapter;Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/android/email/adapter/SncAdapter$8;->start()V

    move v0, v1

    .line 1245
    goto/16 :goto_0
.end method

.method public getAvailableAccounts()V
    .locals 4

    .prologue
    .line 581
    const-string v0, "SNCEVENT@CONTR"

    const-string v1, "getAvailableAccounts"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/adapter/SncAdapter;->mAvailableAccountResponse:Z

    .line 591
    sget-boolean v0, Lcom/android/email/Email;->SNC_DEBUG_DEV:Z

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/adapter/SncAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/email/adapter/SncAdapter$1;-><init>(Lcom/android/email/adapter/SncAdapter;)V

    const-wide/32 v2, 0x11170

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 604
    :cond_0
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getInstance(Landroid/content/Context;)Lcom/android/email/syncnconnect/SyncConnectImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getAvailableAccounts()V

    .line 605
    return-void
.end method

.method public getMailboxSyncState(J)I
    .locals 1
    .parameter "mailboxId"

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter;->mMessagingController:Lcom/android/email/SncMessagingController;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/SncMessagingController;->getMailboxSyncState(J)I

    move-result v0

    return v0
.end method

.method public getUserConfiguredAccounts()V
    .locals 2

    .prologue
    .line 609
    const-string v0, "SNCEVENT@CONTR"

    const-string v1, "getUserConfiguredAccounts"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getInstance(Landroid/content/Context;)Lcom/android/email/syncnconnect/SyncConnectImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getUserConfiguredAccounts()V

    .line 611
    return-void
.end method

.method public getUserProfile()V
    .locals 2

    .prologue
    .line 615
    const-string v0, "SNCEVENT@CONTR"

    const-string v1, "getUserProfile"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getInstance(Landroid/content/Context;)Lcom/android/email/syncnconnect/SyncConnectImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getUserProfile()V

    .line 617
    return-void
.end method

.method public initProtocol()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter;->mSncResultCallback:Lcom/android/email/adapter/SncAdapter$SncResults;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/android/email/adapter/SncAdapter$SncResults;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/adapter/SncAdapter$SncResults;-><init>(Lcom/android/email/adapter/SncAdapter;Lcom/android/email/adapter/SncAdapter$1;)V

    iput-object v0, p0, Lcom/android/email/adapter/SncAdapter;->mSncResultCallback:Lcom/android/email/adapter/SncAdapter$SncResults;

    .line 106
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/adapter/SncAdapter;->mSncResultCallback:Lcom/android/email/adapter/SncAdapter$SncResults;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->addCallback(Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;)V

    .line 108
    :cond_0
    return-void
.end method

.method public isMailboxSyncable(J)Z
    .locals 1
    .parameter "mailboxId"

    .prologue
    .line 1400
    const/4 v0, 0x1

    return v0
.end method

.method public loadAttachment(JJJI)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1278
    new-instance v2, Lcom/android/email/adapter/SncAdapter$10;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tLoadAtt_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move-wide v5, p1

    move/from16 v7, p7

    move-wide v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Lcom/android/email/adapter/SncAdapter$10;-><init>(Lcom/android/email/adapter/SncAdapter;Ljava/lang/String;JIJJ)V

    invoke-virtual {v2}, Lcom/android/email/adapter/SncAdapter$10;->start()V

    .line 1298
    return-void
.end method

.method public loadAttachment(JJJJZZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1310
    const-string v0, "SncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAttachment() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    invoke-direct/range {p0 .. p8}, Lcom/android/email/adapter/SncAdapter;->loadAttachment(JJJJ)V

    .line 1314
    return-void
.end method

.method public loadMessageForView(J)V
    .locals 3
    .parameter "messageId"

    .prologue
    .line 1191
    const-string v0, "SncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMessageForView() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    new-instance v0, Lcom/android/email/adapter/SncAdapter$7;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tLoadMsgForView_msgId_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/email/adapter/SncAdapter$7;-><init>(Lcom/android/email/adapter/SncAdapter;Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/android/email/adapter/SncAdapter$7;->start()V

    .line 1199
    return-void
.end method

.method public loadMore(J)V
    .locals 3
    .parameter "messageId"

    .prologue
    .line 1051
    const-string v0, "SncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMore() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    new-instance v0, Lcom/android/email/adapter/SncAdapter$4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tLoadMore_msgId_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/email/adapter/SncAdapter$4;-><init>(Lcom/android/email/adapter/SncAdapter;Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/android/email/adapter/SncAdapter$4;->start()V

    .line 1059
    return-void
.end method

.method public loadMoreMessages(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 1
    .parameter "account"
    .parameter "mailbox"

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter;->mMessagingController:Lcom/android/email/SncMessagingController;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/SncMessagingController;->synchronizeMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 1345
    return-void
.end method

.method public modifyUserAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .parameter "accountId"
    .parameter "password"
    .parameter "accountName"
    .parameter "displayName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 636
    .local p6, serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    const-string v0, "SNCEVENT@CONTR"

    const-string v1, "modifyUserAccount"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getInstance(Landroid/content/Context;)Lcom/android/email/syncnconnect/SyncConnectImpl;

    move-result-object v0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/syncnconnect/SyncConnectImpl;->modifyUserAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 639
    return-void
.end method

.method public moveMessage(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter;->mMessagingController:Lcom/android/email/SncMessagingController;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/SncMessagingController;->processPendingActions(J)V

    .line 1334
    return-void
.end method

.method public processPendingActions(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1338
    invoke-virtual {p0, p1, p2}, Lcom/android/email/adapter/SncAdapter;->sendPendingMessages(J)V

    .line 1339
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter;->mMessagingController:Lcom/android/email/SncMessagingController;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/SncMessagingController;->processPendingActions(J)V

    .line 1340
    return-void
.end method

.method public qreSyncMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 4
    .parameter "account"
    .parameter "mailbox"

    .prologue
    .line 725
    const-string v0, "SncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qreSyncMailbox | accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter;->mMessagingController:Lcom/android/email/SncMessagingController;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/SncMessagingController;->qreSyncMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 727
    return-void
.end method

.method public refreshIRMTemplates(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 1526
    return-void
.end method

.method public sendMessage(JJJ)V
    .locals 7
    .parameter "mailBoxId"
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    .line 1062
    sget-object v3, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, p5, p6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1064
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    sget-object v3, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x5

    sget-object v5, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f080010

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, p5, p6, v4, v5}, Lcom/android/emailcommon/utility/Utility;->findOrCreateMailboxOfType(Landroid/content/Context;JILjava/lang/String;)J

    move-result-wide v1

    .line 1067
    .local v1, sentboxId:J
    const-string v3, "SncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMessage() is called : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    new-instance v3, Lcom/android/email/adapter/SncAdapter$5;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/email/adapter/SncAdapter$5;-><init>(Lcom/android/email/adapter/SncAdapter;Lcom/android/emailcommon/provider/EmailContent$Account;J)V

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1084
    return-void
.end method

.method public sendPendingMessages(J)V
    .locals 7
    .parameter "accountId"

    .prologue
    .line 1087
    sget-object v3, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1089
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    sget-object v3, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x5

    sget-object v5, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f080010

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, p1, p2, v4, v5}, Lcom/android/emailcommon/utility/Utility;->findOrCreateMailboxOfType(Landroid/content/Context;JILjava/lang/String;)J

    move-result-wide v1

    .line 1092
    .local v1, sentboxId:J
    const-string v3, "SncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendPendingMessages() is called : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    new-instance v3, Lcom/android/email/adapter/SncAdapter$6;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/email/adapter/SncAdapter$6;-><init>(Lcom/android/email/adapter/SncAdapter;Lcom/android/emailcommon/provider/EmailContent$Account;J)V

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1110
    return-void
.end method

.method public serviceCheckMail(JJJLcom/android/email/Controller$Result;)V
    .locals 8
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "tag"
    .parameter "callback"

    .prologue
    .line 953
    const-string v0, "SNCEVENT@CONTR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceCheckMail not needed for SNC since it has PUSH support [accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][ mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const-string v0, "SncAdapter"

    const-string v1, "Still refreshing not to disappoint the user"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const-string v0, "SNCEVENT@CONTR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceCheckMail [accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][ mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    new-instance v0, Lcom/android/email/adapter/SncAdapter$3;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/email/adapter/SncAdapter$3;-><init>(Lcom/android/email/adapter/SncAdapter;JJJ)V

    invoke-virtual {v0}, Lcom/android/email/adapter/SncAdapter$3;->start()V

    .line 983
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getInstance(Landroid/content/Context;)Lcom/android/email/syncnconnect/SyncConnectImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->syncUserAccount(J)V

    .line 985
    return-void
.end method

.method public setMailboxSyncable(JJZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1407
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1408
    sget-object v1, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 1409
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 1410
    :cond_0
    const-string v0, "SncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set PUSH failed. Invalid Params: accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    :goto_0
    return-void

    .line 1415
    :cond_1
    const/4 v2, 0x1

    if-ne v2, p5, :cond_2

    .line 1416
    iget-object v2, p0, Lcom/android/email/adapter/SncAdapter;->mMessagingController:Lcom/android/email/SncMessagingController;

    invoke-virtual {v2, v0, v1}, Lcom/android/email/SncMessagingController;->startIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    goto :goto_0

    .line 1418
    :cond_2
    iget-object v2, p0, Lcom/android/email/adapter/SncAdapter;->mMessagingController:Lcom/android/email/SncMessagingController;

    invoke-virtual {v2, v0, v1}, Lcom/android/email/SncMessagingController;->stopIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    goto :goto_0
.end method

.method public setMessageBoolean([JLjava/lang/String;ZJ)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1430
    const-string v0, "SncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageBoolean() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1435
    if-nez v0, :cond_1

    .line 1491
    :cond_0
    :goto_0
    return-void

    .line 1442
    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1444
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1445
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1446
    array-length v3, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-wide v4, p1, v0

    .line 1447
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1449
    sget-object v7, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v2, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1453
    sget-object v6, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v4

    .line 1454
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 1457
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1446
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1460
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v0, p4, v2

    if-nez v0, :cond_6

    .line 1462
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1463
    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(J)I

    move-result v0

    .line 1464
    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 1468
    :cond_4
    invoke-virtual {p0, v2, v3}, Lcom/android/email/adapter/SncAdapter;->processPendingActions(J)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1484
    :catch_0
    move-exception v0

    .line 1485
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    .line 1489
    :cond_5
    :goto_3
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/EmailUtility;->getUnreadTotalCount(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/email/BadgeManager;->updateBadgeProvider(Landroid/content/Context;I)V

    goto :goto_0

    .line 1473
    :cond_6
    :try_start_1
    invoke-static {p4, p5}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(J)I

    move-result v0

    .line 1475
    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 1480
    :cond_7
    invoke-virtual {p0, p4, p5}, Lcom/android/email/adapter/SncAdapter;->processPendingActions(J)V
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public setMessageRead(JZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1495
    const-string v2, "SncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMessageRead() is called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    sget-object v2, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    .line 1499
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1500
    const-string v4, "flagRead"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1501
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1502
    sget-object v5, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1505
    const-string v3, "messageid=?"

    .line 1506
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 1510
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1511
    const-string v6, "new"

    if-eqz p3, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1512
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://logs/email"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1516
    new-instance v0, Lcom/android/email/adapter/SncAdapter$12;

    invoke-direct {v0, p0, v2}, Lcom/android/email/adapter/SncAdapter$12;-><init>(Lcom/android/email/adapter/SncAdapter;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    invoke-virtual {v0}, Lcom/android/email/adapter/SncAdapter$12;->start()V

    .line 1522
    return-void

    :cond_0
    move v0, v1

    .line 1511
    goto :goto_0
.end method

.method public updateMailbox(JJZ)V
    .locals 6
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "userRequest"

    .prologue
    .line 921
    const-string v0, "SNCEVENT@CONTR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMailbox [accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][ mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    new-instance v0, Lcom/android/email/adapter/SncAdapter$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/adapter/SncAdapter$2;-><init>(Lcom/android/email/adapter/SncAdapter;JJ)V

    invoke-virtual {v0}, Lcom/android/email/adapter/SncAdapter$2;->start()V

    .line 945
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getInstance(Landroid/content/Context;)Lcom/android/email/syncnconnect/SyncConnectImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->syncUserAccount(J)V

    .line 946
    return-void
.end method

.method public updateMailboxList(J)V
    .locals 4
    .parameter "accountId"

    .prologue
    const/4 v3, 0x0

    .line 909
    const-string v0, "SNCEVENT@CONTR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMailboxList [accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v3}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxListStatus(JII)V

    .line 911
    sget-boolean v0, Lcom/android/email/activity/utils/AppPreferences;->ENABLE_SNC_GET_TAGS:Z

    if-eqz v0, :cond_0

    .line 912
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getInstance(Landroid/content/Context;)Lcom/android/email/syncnconnect/SyncConnectImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getTags(J)V

    .line 917
    :goto_0
    return-void

    .line 916
    :cond_0
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    const/16 v1, 0x64

    invoke-virtual {v0, p1, p2, v3, v1}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxListStatus(JII)V

    goto :goto_0
.end method

.method public updateUnifiedAccount()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 796
    sget-object v5, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreUnifiedAccount(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 797
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_0

    .line 798
    const-string v5, "SncAdapter"

    const-string v6, "Failed to get the unified account :("

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    :goto_0
    return-void

    .line 801
    :cond_0
    sget-object v5, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getDeviceMDN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 802
    .local v1, mdn:Ljava/lang/String;
    sget-object v5, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 803
    .local v2, token:Ljava/lang/String;
    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    .line 804
    :cond_1
    const-string v5, "SncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get Mdn or token - ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 808
    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 809
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "login"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const-string v5, "password"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 813
    .local v3, uAuthKeyRecv:Landroid/net/Uri;
    sget-object v5, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 816
    sget-object v5, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 819
    const-string v5, "SncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updated the mdn and pwd of UnifiedAccount - ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/email/EmailLog;->DEBUG_LOG_PRIVACY:Z

    if-eqz v7, :cond_3

    .end local v2           #token:Ljava/lang/String;
    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v2       #token:Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/android/email/EmailLog;->LOG_PRIVACY:Ljava/lang/String;

    goto :goto_1
.end method

.method public updateUserProfile(Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 2
    .parameter "profileInfo"

    .prologue
    .line 621
    const-string v0, "SNCEVENT@CONTR"

    const-string v1, "updateUserProfile"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    sget-object v0, Lcom/android/email/adapter/SncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getInstance(Landroid/content/Context;)Lcom/android/email/syncnconnect/SyncConnectImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->updateUserProfile(Lcom/android/email/syncnconnect/utils/SncProfile;)V

    .line 623
    return-void
.end method
