.class public Lcom/android/email/activity/Welcome;
.super Landroid/app/Activity;
.source "Welcome.java"


# static fields
.field public static customer:Lcom/android/email/activity/setup/AccountSetupCustomer;

.field public static fromWidget:Z

.field private static largeDisplayPortSize:I

.field private static largeDisplaySize:I

.field public static needFull:Z

.field private static xlargeDisplayPortSize:I

.field private static xlargeDisplaySize:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAccountId:J

.field private mDebugPaneMode:I

.field private mHandler:Landroid/os/Handler;

.field private mMailboxId:J

.field private mMessageId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    sput-boolean v1, Lcom/android/email/activity/Welcome;->fromWidget:Z

    .line 105
    const/16 v0, 0x400

    sput v0, Lcom/android/email/activity/Welcome;->largeDisplaySize:I

    .line 107
    const/16 v0, 0x258

    sput v0, Lcom/android/email/activity/Welcome;->largeDisplayPortSize:I

    .line 111
    const/16 v0, 0x500

    sput v0, Lcom/android/email/activity/Welcome;->xlargeDisplaySize:I

    .line 113
    const/16 v0, 0x320

    sput v0, Lcom/android/email/activity/Welcome;->xlargeDisplayPortSize:I

    .line 333
    sput-boolean v1, Lcom/android/email/activity/Welcome;->needFull:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    const-string v0, "Welcome"

    iput-object v0, p0, Lcom/android/email/activity/Welcome;->TAG:Ljava/lang/String;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/Welcome;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static actionOpenAccountInbox(Landroid/app/Activity;J)V
    .locals 1
    .parameter "fromActivity"
    .parameter "accountId"

    .prologue
    .line 209
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 210
    return-void
.end method

.method public static actionStart(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 135
    const-class v0, Lcom/android/email/activity/Welcome;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 136
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 137
    return-void
.end method

.method public static createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 151
    const-class v0, Lcom/android/email/activity/MessageListXL;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 152
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 155
    :cond_0
    return-object v0
.end method

.method public static createOpenAccountInboxIntentFromShortcut(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 183
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 184
    .local v0, i:Landroid/content/Intent;
    const-string v1, "FROM_SHORTCUT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    return-object v0
.end method

.method public static createOpenAccountMailboxIntent(Landroid/content/Context;JJ)Landroid/content/Intent;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 160
    const-class v0, Lcom/android/email/activity/MessageListXL;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 161
    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 162
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 164
    :cond_0
    cmp-long v1, p3, v2

    if-eqz v1, :cond_1

    .line 165
    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 167
    :cond_1
    return-object v0
.end method

.method public static createOpenMessageIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    const-class v0, Lcom/android/email/activity/Welcome;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 196
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/email/activity/Welcome;->fromWidget:Z

    .line 197
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 198
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 199
    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 200
    const-string v1, "MESSAGE_ID"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 202
    :cond_0
    return-object v0
.end method

.method private static getDebugPaneMode(Landroid/content/Intent;)I
    .locals 3
    .parameter "i"

    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 218
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 219
    const-string v2, "DEBUG_PANE_MODE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, s:Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    const/4 v2, 0x1

    .line 226
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return v2

    .line 222
    .restart local v1       #s:Ljava/lang/String;
    :cond_0
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    const/4 v2, 0x2

    goto :goto_0

    .line 226
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isMailboxSelected()Z
    .locals 4

    .prologue
    .line 434
    iget-wide v0, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMessageSelected()Z
    .locals 4

    .prologue
    .line 438
    iget-wide v0, p0, Lcom/android/email/activity/Welcome;->mMessageId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public InitCustomizePreference()V
    .locals 1

    .prologue
    .line 442
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 443
    .local v0, sharedPref:Landroid/content/SharedPreferences;
    return-void
.end method

.method public MainActivityLauncher()V
    .locals 15

    .prologue
    .line 350
    const/4 v9, 0x0

    .line 352
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "emailAddress!=\'snc@snc.snc\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 359
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_0
    :goto_0
    if-eqz v9, :cond_3

    .line 364
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 366
    .local v12, numAccount:I
    if-nez v12, :cond_4

    .line 368
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "FROM_SHORTCUT"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f080270

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 371
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->finish()V

    .line 431
    .end local v12           #numAccount:I
    :goto_1
    return-void

    .line 355
    :catch_0
    move-exception v11

    .line 356
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Welcome"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 359
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 360
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 376
    .restart local v12       #numAccount:I
    :cond_2
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    .line 379
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/BadgeManager;->insertBadgeProvider(Landroid/content/Context;)V

    .line 380
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/BadgeManager;->updateBadgeProvider(Landroid/content/Context;)V

    .line 430
    .end local v12           #numAccount:I
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->finish()V

    goto :goto_1

    .line 383
    .restart local v12       #numAccount:I
    :cond_4
    iget-wide v7, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    .line 384
    .local v7, accountId:J
    const-wide/16 v3, -0x1

    cmp-long v0, v7, v3

    if-nez v0, :cond_7

    .line 388
    const/4 v10, 0x0

    .line 390
    .local v10, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v13, p0, Lcom/android/email/activity/Welcome;->mMessageId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 396
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 397
    const-string v0, "accountKey"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v1

    .line 407
    .end local v7           #accountId:J
    .local v1, accountId:J
    :goto_3
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 408
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 421
    .end local v10           #cur:Landroid/database/Cursor;
    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/android/email/activity/Welcome;->isMessageSelected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 422
    iget-wide v3, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    iget-wide v5, p0, Lcom/android/email/activity/Welcome;->mMessageId:J

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MessageListXL;->actionOpenMessage(Landroid/app/Activity;JJJ)V

    goto :goto_2

    .line 404
    .end local v1           #accountId:J
    .restart local v7       #accountId:J
    .restart local v10       #cur:Landroid/database/Cursor;
    :catch_1
    move-exception v11

    .line 405
    .restart local v11       #e:Ljava/lang/Exception;
    :try_start_3
    const-string v0, "Welcome"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 407
    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a

    .line 408
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-wide v1, v7

    .end local v7           #accountId:J
    .restart local v1       #accountId:J
    goto :goto_4

    .line 407
    .end local v1           #accountId:J
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v7       #accountId:J
    :catchall_1
    move-exception v0

    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 408
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 413
    .end local v10           #cur:Landroid/database/Cursor;
    :cond_7
    invoke-static {p0, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->isValidId(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_a

    .line 414
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f080270

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 416
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->finish()V

    goto/16 :goto_1

    .line 423
    .end local v7           #accountId:J
    .restart local v1       #accountId:J
    :cond_8
    invoke-direct {p0}, Lcom/android/email/activity/Welcome;->isMailboxSelected()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 424
    iget-wide v3, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/email/activity/MessageListXL;->actionOpenMailbox(Landroid/app/Activity;JJ)V

    goto/16 :goto_2

    .line 426
    :cond_9
    invoke-static {p0, v1, v2}, Lcom/android/email/activity/MessageListXL;->actionOpenAccount(Landroid/app/Activity;J)V

    goto/16 :goto_2

    .end local v1           #accountId:J
    .restart local v7       #accountId:J
    :cond_a
    move-wide v1, v7

    .end local v7           #accountId:J
    .restart local v1       #accountId:J
    goto :goto_4

    .end local v1           #accountId:J
    .restart local v7       #accountId:J
    .restart local v10       #cur:Landroid/database/Cursor;
    :cond_b
    move-wide v1, v7

    .end local v7           #accountId:J
    .restart local v1       #accountId:J
    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v13, 0x1

    const-wide/16 v2, -0x1

    const/4 v12, 0x0

    .line 231
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 234
    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getInstance()Lcom/android/email/activity/setup/AccountSetupCustomer;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/Welcome;->customer:Lcom/android/email/activity/setup/AccountSetupCustomer;

    .line 237
    sget-object v0, Lcom/android/email/activity/Welcome;->customer:Lcom/android/email/activity/setup/AccountSetupCustomer;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupCustomer;->isCombinedEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.seven.Z7.ACTION_EMAIL"

    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->finish()V

    .line 331
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 247
    invoke-static {v12}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 251
    sput-boolean v12, Lcom/android/email/Email;->SETUP_WIZARD_FLOW:Z

    .line 252
    sput-boolean v12, Lcom/android/email/Email;->SETUP_WIZARD_FLOW_FROM_SERVICE:Z

    .line 254
    sput-boolean v12, Lcom/android/email/Email;->SETUP_FROM_ACCOUNT_MANAGER_FLOW:Z

    .line 261
    invoke-static {p0}, Lcom/android/email/activity/UpgradeAccounts;->doBulkUpgradeIfNecessary(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->finish()V

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->InitCustomizePreference()V

    .line 275
    invoke-static {p0}, Lcom/android/email/AccountBackupRestore;->restoreAccountsIfNeeded(Landroid/content/Context;)V

    .line 284
    invoke-static {p0}, Lcom/android/email/ExchangeUtils;->startExchangeService(Landroid/content/Context;)V

    .line 287
    invoke-static {}, Lcom/android/email/FolderProperties;->setInitInstance()V

    .line 290
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 291
    .local v9, mIntent:Landroid/content/Intent;
    const-string v0, "IS_FROM_COMPOSER"

    invoke-virtual {v9, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 292
    .local v8, isFromComposer:Z
    if-nez v8, :cond_2

    .line 293
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->ClearComposerIntent()V

    .line 296
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.LogProvider"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 297
    .local v6, action:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    .line 298
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/Welcome;->getDebugPaneMode(Landroid/content/Intent;)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/Welcome;->mDebugPaneMode:I

    .line 299
    const-string v0, "com.android.email.LogProvider"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 300
    const-string v0, "Z7App"

    const-string v1, "LOG_VIEW_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    sput-boolean v13, Lcom/android/email/activity/Welcome;->needFull:Z

    .line 302
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.MessageView_mailbox_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    .line 303
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.MessageView_message_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/Welcome;->mMessageId:J

    .line 304
    iget-wide v0, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 305
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v13, [Ljava/lang/String;

    iget-wide v10, p0, Lcom/android/email/activity/Welcome;->mMessageId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 311
    .local v7, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 312
    const-string v0, "mailboxKey"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 328
    .end local v7           #cur:Landroid/database/Cursor;
    :cond_4
    :goto_1
    const-string v0, "Z7App"

    const-string v1, "mMessageId : %d"

    new-array v2, v13, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/email/activity/Welcome;->mMessageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v0, "Z7App"

    const-string v1, "mMailboxId : %d"

    new-array v2, v13, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->MainActivityLauncher()V

    goto/16 :goto_0

    .line 319
    .restart local v7       #cur:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 321
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 325
    .end local v7           #cur:Landroid/database/Cursor;
    :cond_5
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    .line 326
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MESSAGE_ID"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/Welcome;->mMessageId:J

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 339
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 340
    return-void
.end method
