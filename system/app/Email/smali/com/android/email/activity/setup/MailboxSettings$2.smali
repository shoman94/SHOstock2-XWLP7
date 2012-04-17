.class Lcom/android/email/activity/setup/MailboxSettings$2;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MailboxSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/MailboxSettings;->saveToDatabase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/MailboxSettings;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    iput-object p3, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object p4, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {p0, p2}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    return-void
.end method

.method private findInterval()I
    .locals 10

    .prologue
    .line 359
    iget-object v8, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v6

    .line 360
    .local v6, syncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;
    const/4 v4, 0x1

    .line 361
    .local v4, requireManualSync:Z
    iget-object v8, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Lcom/android/email/activity/setup/MailboxSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 362
    .local v7, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    .line 364
    .local v2, isRoaming:Z
    invoke-static {v6}, Lcom/android/emailcommon/utility/SyncScheduler;->getIsPeakAndNextAlarm(Lcom/android/emailcommon/utility/SyncScheduleData;)Landroid/util/Pair;

    move-result-object v8

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 365
    .local v1, isInPeakPeriod:Z
    const/4 v3, -0x2

    .line 366
    .local v3, newSyncInterval:I
    const/4 v4, 0x1

    .line 367
    if-eqz v2, :cond_0

    iget-object v8, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$context:Landroid/content/Context;

    if-eqz v8, :cond_0

    .line 368
    iget-object v8, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$context:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v5

    .line 369
    .local v5, securityPolicy:Lcom/android/email/SecurityPolicy;
    iget-object v8, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    .line 370
    .local v0, accountPolicies:Lcom/android/emailcommon/service/PolicySet;
    if-eqz v0, :cond_0

    .line 371
    iget-boolean v4, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    .line 374
    .end local v0           #accountPolicies:Lcom/android/emailcommon/service/PolicySet;
    .end local v5           #securityPolicy:Lcom/android/email/SecurityPolicy;
    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v6}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v4, :cond_2

    .line 375
    :cond_1
    const/4 v3, -0x1

    .line 388
    :goto_0
    return v3

    .line 376
    :cond_2
    if-eqz v1, :cond_4

    .line 378
    iget-object v8, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    #getter for: Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-static {v8}, Lcom/android/email/activity/setup/MailboxSettings;->access$100(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v8

    iget v8, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mPeakSyncSchedule:I

    if-nez v8, :cond_3

    .line 379
    invoke-virtual {v6}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v3

    goto :goto_0

    .line 381
    :cond_3
    iget-object v8, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v3, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mPeakSyncSchedule:I

    goto :goto_0

    .line 383
    :cond_4
    iget-object v8, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    #getter for: Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-static {v8}, Lcom/android/email/activity/setup/MailboxSettings;->access$100(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v8

    iget v8, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mOffpeakSyncSchedule:I

    if-nez v8, :cond_5

    .line 384
    invoke-virtual {v6}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v3

    goto :goto_0

    .line 386
    :cond_5
    iget-object v8, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v3, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mOffpeakSyncSchedule:I

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 329
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/MailboxSettings$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    .line 332
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 334
    .local v0, cv:Landroid/content/ContentValues;
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings$2;->findInterval()I

    move-result v1

    .line 336
    .local v1, interval:I
    const-string v3, "peakSyncSchedule"

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mPeakSyncSchedule:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    const-string v3, "offpeakSyncSchedule"

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mOffpeakSyncSchedule:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    const-string v3, "syncLookback"

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncLookback:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 341
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 343
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    #getter for: Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-static {v3}, Lcom/android/email/activity/setup/MailboxSettings;->access$100(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v3

    iget v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v3, :cond_0

    .line 346
    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput v1, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    .line 348
    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v3, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 351
    :cond_0
    return-object v6
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 329
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/MailboxSettings$2;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Void;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/RefreshManager;->refreshMessageList(JJZ)Z

    .line 396
    return-void
.end method
