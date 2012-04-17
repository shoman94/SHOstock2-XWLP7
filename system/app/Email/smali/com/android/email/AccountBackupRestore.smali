.class public Lcom/android/email/AccountBackupRestore;
.super Ljava/lang/Object;
.source "AccountBackupRestore.java"


# static fields
.field private static ctx:Landroid/content/Context;

.field static mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private static sBackupsChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/AccountBackupRestore;->sBackupsChecked:Z

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/AccountBackupRestore;->ctx:Landroid/content/Context;

    .line 265
    new-instance v0, Lcom/android/email/AccountBackupRestore$1;

    invoke-direct {v0}, Lcom/android/email/AccountBackupRestore$1;-><init>()V

    sput-object v0, Lcom/android/email/AccountBackupRestore;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/email/AccountBackupRestore;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public static backupAccounts(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "Email"

    const-string v1, "backupAccounts"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/email/AccountBackupRestore;->doBackupAccounts(Landroid/content/Context;Lcom/android/email/Preferences;)V

    .line 100
    return-void
.end method

.method static declared-synchronized doBackupAccounts(Landroid/content/Context;Lcom/android/email/Preferences;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 155
    const-class v6, Lcom/android/email/AccountBackupRestore;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p1}, Lcom/android/email/Preferences;->getAccounts()[Lcom/android/email/Account;

    move-result-object v1

    .line 156
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 157
    invoke-virtual {v3, p1}, Lcom/android/email/Account;->delete(Lcom/android/email/Preferences;)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v7

    .line 169
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_1

    .line 262
    :goto_1
    monitor-exit v6

    return-void

    .line 175
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "typeMsg=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 178
    :goto_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 179
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 181
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 182
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backing up account:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_2
    invoke-static {p0, v0}, Lcom/android/email/LegacyConversions;->makeLegacyAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/email/Account;

    move-result-object v2

    .line 187
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->isEasAccount(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 188
    new-instance v3, Landroid/accounts/Account;

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-direct {v3, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v4, "com.android.contacts"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 192
    if-eqz v4, :cond_3

    .line 193
    iget v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 195
    :cond_3
    const-string v4, "com.android.calendar"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 197
    if-eqz v4, :cond_4

    .line 198
    iget v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 200
    :cond_4
    const-string v4, "com.android.email.provider"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 203
    if-eqz v4, :cond_5

    .line 204
    iget v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 209
    :cond_5
    const-string v4, "tasks"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 210
    if-eqz v3, :cond_6

    .line 211
    iget v3, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v3, v3, 0x9

    iput v3, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 228
    :cond_6
    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 230
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v3

    .line 231
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 232
    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v9, "_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v9, "_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v9, "_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v9, "_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v9, "_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-virtual {v2, v3}, Lcom/android/email/Account;->setSyncScheduleData(Ljava/lang/String;)V

    .line 243
    :cond_7
    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_8

    .line 244
    iget v3, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 248
    :cond_8
    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_9

    .line 249
    iget v0, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 255
    :cond_9
    iget v0, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 257
    invoke-virtual {v2, p1}, Lcom/android/email/Account;->save(Lcom/android/email/Preferences;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 260
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 155
    :catchall_1
    move-exception v0

    monitor-exit v6

    throw v0

    .line 260
    :cond_a
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1
.end method

.method static declared-synchronized doRestoreAccounts(Landroid/content/Context;Lcom/android/email/Preferences;Z)Z
    .locals 24
    .parameter "context"
    .parameter "preferences"
    .parameter "unitTest"

    .prologue
    .line 346
    const-class v23, Lcom/android/email/AccountBackupRestore;

    monitor-enter v23

    const/16 v20, 0x0

    .line 347
    .local v20, sncAccountAvailable:Z
    const/16 v19, 0x0

    .line 352
    .local v19, sncAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_start_0
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "typeMsg=0"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v9}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    .line 354
    .local v16, numAccounts:I
    if-lez v16, :cond_0

    .line 355
    const/4 v3, 0x0

    .line 509
    :goto_0
    monitor-exit v23

    return v3

    .line 358
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/email/Preferences;->getAccounts()[Lcom/android/email/Account;

    move-result-object v12

    .line 359
    .local v12, backups:[Lcom/android/email/Account;
    array-length v3, v12

    if-nez v3, :cond_1

    .line 360
    const/4 v3, 0x0

    goto :goto_0

    .line 363
    :cond_1
    sput-object p0, Lcom/android/email/AccountBackupRestore;->ctx:Landroid/content/Context;

    .line 365
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*** Restoring Email Accounts, found "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v9, v12

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    move-object v10, v12

    .local v10, arr$:[Lcom/android/email/Account;
    array-length v15, v10

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1
    if-ge v13, v15, :cond_10

    aget-object v11, v10, v13

    .line 372
    .local v11, backupAccount:Lcom/android/email/Account;
    iget v3, v11, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_3

    .line 369
    :cond_2
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 376
    :cond_3
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restoring account:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Lcom/android/email/Account;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/email/LegacyConversions;->makeAccount(Landroid/content/Context;Lcom/android/email/Account;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v22

    .line 379
    .local v22, toAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit8 v3, v3, 0x10

    move-object/from16 v0, v22

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 382
    iget v3, v11, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    .line 383
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 387
    :cond_4
    const-string v3, "snc"

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v14, 0x1

    .line 388
    .local v14, isSncAccount:Z
    :goto_3
    if-eqz v14, :cond_5

    .line 389
    invoke-virtual {v11}, Lcom/android/email/Account;->getSyncScheduleData()Ljava/lang/String;

    move-result-object v17

    .line 390
    .local v17, sSyncScheduleData:Ljava/lang/String;
    if-eqz v17, :cond_a

    .line 391
    const-string v3, "_"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 392
    .local v21, storedData:[Ljava/lang/String;
    new-instance v2, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/4 v3, 0x0

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v9, 0x2

    aget-object v9, v21, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v9, 0x3

    aget-object v9, v21, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v9, 0x4

    aget-object v9, v21, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x5

    aget-object v9, v21, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    .line 396
    .local v2, syncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    .line 412
    .end local v2           #syncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;
    .end local v17           #sSyncScheduleData:Ljava/lang/String;
    .end local v21           #storedData:[Ljava/lang/String;
    :cond_5
    :goto_4
    iget v3, v11, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_6

    .line 413
    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit16 v3, v3, 0x100

    move-object/from16 v0, v22

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 445
    :cond_6
    const/4 v5, 0x0

    .line 448
    .local v5, email:Z
    const/4 v7, 0x0

    .line 449
    .local v7, contacts:Z
    const/4 v6, 0x0

    .line 450
    .local v6, calendar:Z
    const/4 v8, 0x0

    .line 452
    .local v8, task:Z
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->isEasAccount(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 453
    iget v3, v11, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_c

    const/4 v5, 0x1

    .line 456
    :goto_5
    iget v3, v11, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_d

    const/4 v7, 0x1

    .line 457
    :goto_6
    iget v3, v11, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_e

    const/4 v6, 0x1

    .line 458
    :goto_7
    iget v3, v11, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v3, v3, 0x9

    if-eqz v3, :cond_f

    const/4 v8, 0x1

    .line 475
    :cond_7
    :goto_8
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 481
    if-nez p2, :cond_8

    .line 482
    sget-object v9, Lcom/android/email/AccountBackupRestore;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    move-object/from16 v3, p0

    move-object/from16 v4, v22

    invoke-static/range {v3 .. v9}, Lcom/android/email/service/MailService;->setupAccountManagerAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;ZZZZLandroid/accounts/AccountManagerCallback;)V

    .line 495
    :cond_8
    move-object/from16 v0, v22

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-static {v3}, Lcom/android/email/esp/ServiceProvider;->getProviderId(I)I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    .line 497
    const/16 v20, 0x1

    .line 498
    move-object/from16 v19, v22

    goto/16 :goto_2

    .line 387
    .end local v5           #email:Z
    .end local v6           #calendar:Z
    .end local v7           #contacts:Z
    .end local v8           #task:Z
    .end local v14           #isSncAccount:Z
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 398
    .restart local v14       #isSncAccount:Z
    .restart local v17       #sSyncScheduleData:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->isEasAccount(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 399
    new-instance v3, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v4, 0x1e0

    const/16 v5, 0x3fc

    const/16 v6, 0x3e

    const/4 v7, -0x2

    const/4 v8, -0x2

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .line 346
    .end local v10           #arr$:[Lcom/android/email/Account;
    .end local v11           #backupAccount:Lcom/android/email/Account;
    .end local v12           #backups:[Lcom/android/email/Account;
    .end local v13           #i$:I
    .end local v14           #isSncAccount:Z
    .end local v15           #len$:I
    .end local v16           #numAccounts:I
    .end local v17           #sSyncScheduleData:Ljava/lang/String;
    .end local v22           #toAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :catchall_0
    move-exception v3

    monitor-exit v23

    throw v3

    .line 402
    .restart local v10       #arr$:[Lcom/android/email/Account;
    .restart local v11       #backupAccount:Lcom/android/email/Account;
    .restart local v12       #backups:[Lcom/android/email/Account;
    .restart local v13       #i$:I
    .restart local v14       #isSncAccount:Z
    .restart local v15       #len$:I
    .restart local v16       #numAccounts:I
    .restart local v17       #sSyncScheduleData:Ljava/lang/String;
    .restart local v22       #toAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_b
    :try_start_2
    new-instance v3, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v4, 0x12c

    const/16 v5, 0x4ec

    const/16 v6, 0x7f

    const/4 v7, -0x2

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    goto/16 :goto_4

    .line 453
    .end local v17           #sSyncScheduleData:Ljava/lang/String;
    .restart local v5       #email:Z
    .restart local v6       #calendar:Z
    .restart local v7       #contacts:Z
    .restart local v8       #task:Z
    :cond_c
    const/4 v5, 0x0

    goto :goto_5

    .line 456
    :cond_d
    const/4 v7, 0x0

    goto :goto_6

    .line 457
    :cond_e
    const/4 v6, 0x0

    goto :goto_7

    .line 458
    :cond_f
    const/4 v8, 0x0

    goto :goto_8

    .line 503
    .end local v5           #email:Z
    .end local v6           #calendar:Z
    .end local v7           #contacts:Z
    .end local v8           #task:Z
    .end local v11           #backupAccount:Lcom/android/email/Account;
    .end local v14           #isSncAccount:Z
    .end local v22           #toAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_10
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_11

    .line 504
    new-instance v18, Lcom/android/email/adapter/SncAdapter;

    invoke-direct/range {v18 .. v18}, Lcom/android/email/adapter/SncAdapter;-><init>()V

    .line 505
    .local v18, snc:Lcom/android/email/adapter/SncAdapter;
    invoke-virtual/range {v18 .. v18}, Lcom/android/email/adapter/SncAdapter;->initProtocol()V

    .line 506
    move-object/from16 v0, v19

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lcom/android/email/adapter/SncAdapter;->addBackupAccount(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 509
    .end local v18           #snc:Lcom/android/email/adapter/SncAdapter;
    :cond_11
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public static declared-synchronized restoreAccountsIfNeeded(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 109
    const-class v6, Lcom/android/email/AccountBackupRestore;

    monitor-enter v6

    :try_start_0
    sget-boolean v5, Lcom/android/email/AccountBackupRestore;->sBackupsChecked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 144
    :goto_0
    monitor-exit v6

    return-void

    .line 112
    :cond_0
    const/4 v3, 0x0

    .line 117
    .local v3, prefPath:Ljava/lang/String;
    :try_start_1
    const-string v3, "/data/data/com.android.email/shared_prefs"

    .line 121
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 124
    .local v1, fileList:[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 125
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_1

    .line 126
    const-string v5, "AccountBackupRestore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileName["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v2

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    .end local v1           #fileList:[Ljava/io/File;
    .end local v2           #i:I
    :cond_1
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {p0, v5, v7}, Lcom/android/email/AccountBackupRestore;->doRestoreAccounts(Landroid/content/Context;Lcom/android/email/Preferences;Z)Z

    move-result v4

    .line 134
    .local v4, restored:Z
    if-eqz v4, :cond_2

    .line 136
    const-string v5, "Email"

    const-string v7, "Register services after restoring accounts"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v5

    const-wide/16 v7, -0x1

    invoke-virtual {v5, v7, v8}, Lcom/android/email/SecurityPolicy;->updatePolicies(J)V

    .line 140
    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z

    .line 141
    invoke-static {p0}, Lcom/android/email/ExchangeUtils;->startExchangeService(Landroid/content/Context;)V

    .line 143
    :cond_2
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/email/AccountBackupRestore;->sBackupsChecked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    .end local v0           #f:Ljava/io/File;
    .end local v3           #prefPath:Ljava/lang/String;
    .end local v4           #restored:Z
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method
