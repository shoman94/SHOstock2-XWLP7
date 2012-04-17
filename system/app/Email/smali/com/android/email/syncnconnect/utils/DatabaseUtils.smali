.class public Lcom/android/email/syncnconnect/utils/DatabaseUtils;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# static fields
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

.field private static mContextForAccountManager:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/android/email/syncnconnect/utils/DatabaseUtils$2;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils$2;-><init>()V

    sput-object v0, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->mContextForAccountManager:Landroid/content/Context;

    return-object v0
.end method

.method public static addAccountToAccountManager(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 153
    const-string v0, "DatabaseUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAccountToAccountManager is called :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sput-object p0, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->mContextForAccountManager:Landroid/content/Context;

    .line 155
    new-instance v0, Lcom/android/email/syncnconnect/utils/DatabaseUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/android/email/syncnconnect/utils/DatabaseUtils$1;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 162
    return-void
.end method

.method public static checkRestoreFlowDone(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 371
    const-string v2, "snc_settings_preferences"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 374
    .local v1, sharedPref:Landroid/content/SharedPreferences;
    const-string v2, "snc_restore_flow_done"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 375
    .local v0, ret:Z
    const-string v2, "DatabaseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkRestoreFlowDone - ret - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return v0
.end method

.method private static commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 7
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v4, 0x0

    .line 215
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSaved()Z

    move-result v5

    if-nez v5, :cond_0

    .line 216
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 217
    invoke-static {p1}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "emailAddress=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 228
    .local v0, accountId:J
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v5

    const-string v6, "Account added from web"

    invoke-virtual {v5, v4, v6, v0, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    .line 246
    .end local v0           #accountId:J
    :goto_0
    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z

    .line 248
    invoke-static {p0, p1}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->addAccountToAccountManager(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 251
    invoke-static {p0}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 252
    return-void

    .line 231
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 232
    .local v2, cv:Landroid/content/ContentValues;
    sget v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    int-to-byte v5, v5

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    iget-boolean v6, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    :cond_1
    int-to-byte v4, v4

    or-int/2addr v4, v5

    and-int/lit16 v3, v4, 0xff

    .line 234
    .local v3, defaultSize:I
    const-string v4, "isDefault"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string v4, "emailAddress"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v4, "displayName"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v4, "syncInterval"

    iget v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    const-string v4, "syncLookback"

    iget v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    const-string v4, "typeMsg"

    iget v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    const-string v4, "signature"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v4, "accountType"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    invoke-virtual {p1, p0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto :goto_0
.end method

.method public static createAccount(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserEndpoint;)J
    .locals 20
    .parameter "context"
    .parameter "userInfo"

    .prologue
    .line 68
    const-wide/16 v11, 0x0

    .line 70
    .local v11, accountId:J
    if-nez p1, :cond_0

    move-wide v13, v11

    .line 146
    .end local v11           #accountId:J
    .local v13, accountId:J
    :goto_0
    return-wide v13

    .line 73
    .end local v13           #accountId:J
    .restart local v11       #accountId:J
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v19

    .line 75
    .local v19, userName:Ljava/lang/String;
    const-string v4, "DatabaseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding Account in the Email Database with email address :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->findDuplicateAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 78
    const-string v4, "DatabaseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Account with ID :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " already exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v13, v11

    .line 79
    .end local v11           #accountId:J
    .restart local v13       #accountId:J
    goto :goto_0

    .line 82
    .end local v13           #accountId:J
    .restart local v11       #accountId:J
    :cond_1
    new-instance v16, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct/range {v16 .. v16}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    .line 86
    .local v16, mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual/range {p1 .. p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserEndpointId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    iput-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 87
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailAddress(Ljava/lang/String;)V

    .line 88
    const/16 v4, 0xf

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 89
    const/4 v4, 0x6

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    .line 90
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailSize(B)V

    .line 91
    const/4 v4, 0x5

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/email/esp/ServiceProvider;->getSncProvider(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v4

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    .line 93
    const v4, 0x7f0801d8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    .line 95
    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 103
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getAccountName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getAccountName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 108
    :goto_2
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->setTypeMsg(I)V

    .line 110
    new-instance v2, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v3, 0x12c

    const/16 v4, 0x4ec

    const/16 v5, 0x7f

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    .line 116
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getPassword(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 118
    .local v17, password:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URI;

    const-string v3, "snc+ssl+trustallcerts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/email/syncnconnect/utils/SncServerSettings;->IMAP_VIP:Ljava/lang/String;

    sget v6, Lcom/android/email/syncnconnect/utils/SncServerSettings;->IMAP_PORT:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .local v2, incoming:Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    new-instance v3, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smtp+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/email/syncnconnect/utils/SncServerSettings;->SMTP_AUTH_FLAGS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/email/syncnconnect/utils/SncServerSettings;->SMTP_VIP:Ljava/lang/String;

    const/16 v7, 0x24b

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v3, outgoing:Ljava/net/URI;
    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "emailAddress=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v11

    .line 144
    const-string v4, "DatabaseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Account Created with AccountId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v13, v11

    .line 146
    .end local v11           #accountId:J
    .restart local v13       #accountId:J
    goto/16 :goto_0

    .line 99
    .end local v2           #incoming:Ljava/net/URI;
    .end local v3           #outgoing:Ljava/net/URI;
    .end local v13           #accountId:J
    .end local v17           #password:Ljava/lang/String;
    .restart local v11       #accountId:J
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-static {v5}, Lcom/android/email/esp/ServiceProvider;->getDefaultAccountName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 101
    .local v15, displayName:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 106
    .end local v15           #displayName:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 136
    .restart local v17       #password:Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 137
    .local v18, use:Ljava/net/URISyntaxException;
    const-string v4, "DatabaseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception Captured while configuring the account :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v13, v11

    .line 138
    .end local v11           #accountId:J
    .restart local v13       #accountId:J
    goto/16 :goto_0
.end method

.method public static deleteAccount(Landroid/content/Context;Ljava/lang/String;)J
    .locals 17
    .parameter "context"
    .parameter "userEndpointId"

    .prologue
    .line 255
    const-string v12, "DatabaseUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Deleting Account from the Email Database with userEndpointId :: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-wide/16 v2, -0x1

    .line 260
    .local v2, accountId:J
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "compatibilityUuid=\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 263
    const-wide/16 v12, -0x1

    cmp-long v12, v2, v12

    if-nez v12, :cond_0

    .line 264
    const-string v12, "DatabaseUtils"

    const-string v13, "Invalid Account Id"

    invoke-static {v12, v13}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v4, v2

    .line 324
    .end local v2           #accountId:J
    .local v4, accountId:J
    :goto_0
    return-wide v4

    .line 269
    .end local v4           #accountId:J
    .restart local v2       #accountId:J
    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 270
    .local v1, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v1, :cond_1

    .line 271
    const-string v12, "DatabaseUtils"

    const-string v13, "Account is Empty: Null"

    invoke-static {v12, v13}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v4, v2

    .line 272
    .end local v2           #accountId:J
    .restart local v4       #accountId:J
    goto :goto_0

    .line 277
    .end local v4           #accountId:J
    .restart local v2       #accountId:J
    :cond_1
    sget-object v12, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "login=\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/emailcommon/provider/EmailContent;->getIdListWhere(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)[J

    move-result-object v8

    .line 279
    .local v8, idList:[J
    array-length v12, v8

    const/4 v13, 0x2

    if-gt v12, v13, :cond_4

    .line 280
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 285
    .local v6, cv:Landroid/content/ContentValues;
    const-string v12, "hostAuthKeyRecv"

    const/4 v13, 0x0

    aget-wide v13, v8, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 286
    const-string v12, "hostAuthKeySend"

    const/4 v13, 0x1

    aget-wide v13, v8, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 287
    sget-object v12, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 288
    .local v11, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v11, v6, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 295
    .end local v6           #cv:Landroid/content/ContentValues;
    .end local v11           #uri:Landroid/net/Uri;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 297
    .local v10, storeUri:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 298
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-static {v10, v0, v12}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/email/mail/BaseSncStore;->delete()V

    .line 300
    invoke-static {v10}, Lcom/android/email/mail/BaseSncStore;->removeInstance(Ljava/lang/String;)V

    .line 304
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 306
    .local v9, senderUri:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 307
    invoke-static {v9}, Lcom/android/email/mail/Sender;->removeInstance(Ljava/lang/String;)V

    .line 310
    :cond_3
    sget-object v12, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 311
    .restart local v11       #uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v11, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 314
    invoke-static/range {p0 .. p0}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 317
    invoke-static/range {p0 .. p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    .line 319
    invoke-static/range {p0 .. p0}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z

    .end local v1           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v8           #idList:[J
    .end local v9           #senderUri:Ljava/lang/String;
    .end local v10           #storeUri:Ljava/lang/String;
    .end local v11           #uri:Landroid/net/Uri;
    :goto_2
    move-wide v4, v2

    .line 324
    .end local v2           #accountId:J
    .restart local v4       #accountId:J
    goto/16 :goto_0

    .line 290
    .end local v4           #accountId:J
    .restart local v1       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v2       #accountId:J
    .restart local v8       #idList:[J
    :cond_4
    const-string v12, "DatabaseUtils"

    new-instance v13, Ljava/lang/Exception;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "account "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v15, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " has less than 2 HostAuth entries in HostAuth table"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v13}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 320
    .end local v1           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v8           #idList:[J
    :catch_0
    move-exception v7

    .line 321
    .local v7, e:Ljava/lang/Exception;
    const-string v12, "DatabaseUtils"

    const-string v13, "Exception while deleting account"

    invoke-static {v12, v7, v13}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getAccountIdFromEmailId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2
    .parameter "context"
    .parameter "emailId"

    .prologue
    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emailAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAccountIdFromUserEndpointId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2
    .parameter "context"
    .parameter "userEndpointId"

    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compatibilityUuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAllSncAccounts(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 744
    const-string v0, "DatabaseUtils"

    const-string v1, "Into getAllSncAccounts"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const/4 v0, 0x0

    .line 747
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccounts(Landroid/content/Context;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 748
    if-eqz v2, :cond_1

    .line 749
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 750
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 751
    iget-wide v5, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 752
    const-string v5, "DatabaseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SNC Account :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 757
    :cond_1
    return-object v0
.end method

.method public static getCachedEndpoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 847
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 849
    .local v0, sncEndpointList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncEndpoint;>;"
    invoke-static {}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getCorporateEndpoint()Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    invoke-static {}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getVerizonEndpoint()Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    invoke-static {}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getOthersEndpoint()Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    return-object v0
.end method

.method public static getCorporateEndpoint()Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .locals 3

    .prologue
    .line 788
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 789
    new-instance v1, Lcom/android/email/syncnconnect/utils/SncService;

    invoke-direct {v1}, Lcom/android/email/syncnconnect/utils/SncService;-><init>()V

    .line 790
    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceId(Ljava/lang/String;)V

    .line 791
    const-string v2, "Mail"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceName(Ljava/lang/String;)V

    .line 792
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    new-instance v1, Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-direct {v1}, Lcom/android/email/syncnconnect/utils/SncEndpoint;-><init>()V

    .line 795
    const-string v2, "6"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setEndpointId(Ljava/lang/String;)V

    .line 796
    const-string v2, "Corporate"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setEndpointName(Ljava/lang/String;)V

    .line 797
    const-string v2, "Microsoft ActiveSync"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setProvider(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setSncServiceList(Ljava/util/List;)V

    .line 800
    return-object v1
.end method

.method public static getDeviceMDN(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 357
    const-string v1, "snc_settings_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 360
    .local v0, sharedPref:Landroid/content/SharedPreferences;
    const-string v1, "MDN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDeviceToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 364
    const-string v1, "snc_settings_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 367
    .local v0, sharedPref:Landroid/content/SharedPreferences;
    const-string v1, "AUTH_TOKEN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEmailIdFromAccountId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 422
    const-string v0, "DatabaseUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Into getEmailIdFromAccountId for accountId :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const/4 v8, 0x0

    .line 426
    .local v8, emailId:Ljava/lang/String;
    const-wide/16 v4, -0x1

    cmp-long v0, p1, v4

    if-nez v0, :cond_0

    move-object v9, v8

    .line 447
    .end local v8           #emailId:Ljava/lang/String;
    .local v9, emailId:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 430
    .end local v9           #emailId:Ljava/lang/String;
    .restart local v8       #emailId:Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 431
    .local v1, u:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "emailAddress"

    aput-object v0, v2, v10

    .line 434
    .local v2, uuid_projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 437
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 439
    const-string v0, "DatabaseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EmailAddress :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v9, v8

    .line 447
    .end local v8           #emailId:Ljava/lang/String;
    .restart local v9       #emailId:Ljava/lang/String;
    goto :goto_0

    .line 441
    .end local v9           #emailId:Ljava/lang/String;
    .restart local v8       #emailId:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 442
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 444
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getEndpointDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .locals 22
    .parameter "context"
    .parameter "endpointId"

    .prologue
    .line 626
    const-string v19, "DatabaseUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Getting EndpointDetails for endpointId :: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const/4 v6, 0x0

    .line 630
    .local v6, endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    if-nez p1, :cond_0

    move-object v7, v6

    .line 685
    .end local v6           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .local v7, endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    :goto_0
    return-object v7

    .line 634
    .end local v7           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v6       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 637
    .local v4, docFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 638
    .local v3, docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    const-string v19, "sncAvailableAccounts.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v8

    .line 639
    .local v8, fs:Ljava/io/FileInputStream;
    invoke-virtual {v3, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 641
    .local v2, doc:Lorg/w3c/dom/Document;
    const-string v19, "sncEndpoint"

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 642
    .local v17, sncUserEndpointList:Lorg/w3c/dom/NodeList;
    if-nez v17, :cond_1

    move-object v7, v6

    .line 643
    .end local v6           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v7       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    goto :goto_0

    .line 646
    .end local v7           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v6       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    :cond_1
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_3

    .line 647
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    .line 648
    .local v16, sncUserEndpoint:Lorg/w3c/dom/Element;
    const-string v19, "endpointId"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 649
    .local v18, value:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 650
    new-instance v7, Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-direct {v7}, Lcom/android/email/syncnconnect/utils/SncEndpoint;-><init>()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 651
    .end local v6           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v7       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setEndpointId(Ljava/lang/String;)V

    .line 652
    const-string v19, "provider"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setProvider(Ljava/lang/String;)V

    .line 653
    const-string v19, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setEndpointName(Ljava/lang/String;)V

    .line 655
    const-string v19, "sncServices"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    .line 657
    .local v15, sncServices:Lorg/w3c/dom/Element;
    const-string v19, "sncService"

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 659
    .local v14, sncServiceList:Lorg/w3c/dom/NodeList;
    if-eqz v14, :cond_5

    .line 660
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .local v12, serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    const/4 v10, 0x0

    .local v10, j:I
    :goto_2
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_2

    .line 662
    invoke-interface {v14, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 664
    .local v11, service:Lorg/w3c/dom/Element;
    new-instance v13, Lcom/android/email/syncnconnect/utils/SncService;

    invoke-direct {v13}, Lcom/android/email/syncnconnect/utils/SncService;-><init>()V

    .line 665
    .local v13, sncService:Lcom/android/email/syncnconnect/utils/SncService;
    const-string v19, "serviceId"

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceId(Ljava/lang/String;)V

    .line 666
    const-string v19, "name"

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceName(Ljava/lang/String;)V

    .line 667
    const-string v19, "isNotified"

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/email/syncnconnect/utils/SncService;->setIsNotified(Ljava/lang/String;)V

    .line 668
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 670
    .end local v11           #service:Lorg/w3c/dom/Element;
    .end local v13           #sncService:Lcom/android/email/syncnconnect/utils/SncService;
    :cond_2
    invoke-virtual {v7, v12}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setSncServiceList(Ljava/util/List;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v6, v7

    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v3           #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v7           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .end local v8           #fs:Ljava/io/FileInputStream;
    .end local v9           #i:I
    .end local v10           #j:I
    .end local v12           #serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    .end local v14           #sncServiceList:Lorg/w3c/dom/NodeList;
    .end local v15           #sncServices:Lorg/w3c/dom/Element;
    .end local v16           #sncUserEndpoint:Lorg/w3c/dom/Element;
    .end local v17           #sncUserEndpointList:Lorg/w3c/dom/NodeList;
    .end local v18           #value:Ljava/lang/String;
    .restart local v6       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    :cond_3
    :goto_3
    move-object v7, v6

    .line 685
    .end local v6           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v7       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    goto/16 :goto_0

    .line 646
    .end local v7           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v2       #doc:Lorg/w3c/dom/Document;
    .restart local v3       #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v8       #fs:Ljava/io/FileInputStream;
    .restart local v9       #i:I
    .restart local v16       #sncUserEndpoint:Lorg/w3c/dom/Element;
    .restart local v17       #sncUserEndpointList:Lorg/w3c/dom/NodeList;
    .restart local v18       #value:Ljava/lang/String;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 675
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v3           #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v8           #fs:Ljava/io/FileInputStream;
    .end local v9           #i:I
    .end local v16           #sncUserEndpoint:Lorg/w3c/dom/Element;
    .end local v17           #sncUserEndpointList:Lorg/w3c/dom/NodeList;
    .end local v18           #value:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 676
    .local v5, e:Ljavax/xml/parsers/ParserConfigurationException;
    :goto_4
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_3

    .line 677
    .end local v5           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v5

    .line 678
    .local v5, e:Ljava/io/FileNotFoundException;
    :goto_5
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 679
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .line 680
    .local v5, e:Lorg/xml/sax/SAXException;
    :goto_6
    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_3

    .line 681
    .end local v5           #e:Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v5

    .line 682
    .local v5, e:Ljava/io/IOException;
    :goto_7
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 681
    .end local v5           #e:Ljava/io/IOException;
    .end local v6           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v2       #doc:Lorg/w3c/dom/Document;
    .restart local v3       #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v8       #fs:Ljava/io/FileInputStream;
    .restart local v9       #i:I
    .restart local v16       #sncUserEndpoint:Lorg/w3c/dom/Element;
    .restart local v17       #sncUserEndpointList:Lorg/w3c/dom/NodeList;
    .restart local v18       #value:Ljava/lang/String;
    :catch_4
    move-exception v5

    move-object v6, v7

    .end local v7           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v6       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    goto :goto_7

    .line 679
    .end local v6           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v7       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    :catch_5
    move-exception v5

    move-object v6, v7

    .end local v7           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v6       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    goto :goto_6

    .line 677
    .end local v6           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v7       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    :catch_6
    move-exception v5

    move-object v6, v7

    .end local v7           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v6       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    goto :goto_5

    .line 675
    .end local v6           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v7       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    :catch_7
    move-exception v5

    move-object v6, v7

    .end local v7           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v6       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    goto :goto_4

    .end local v6           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v7       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v14       #sncServiceList:Lorg/w3c/dom/NodeList;
    .restart local v15       #sncServices:Lorg/w3c/dom/Element;
    :cond_5
    move-object v6, v7

    .end local v7           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v6       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    goto :goto_3
.end method

.method public static getEndpointDetailsFromProviderName(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .locals 12
    .parameter "context"
    .parameter "providerName"

    .prologue
    .line 587
    const/4 v4, 0x0

    .line 589
    .local v4, endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 592
    .local v2, docFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 593
    .local v1, docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    const-string v11, "sncAvailableAccounts.xml"

    invoke-virtual {p0, v11}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    .line 594
    .local v6, fs:Ljava/io/FileInputStream;
    invoke-virtual {v1, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 596
    .local v0, doc:Lorg/w3c/dom/Document;
    const-string v11, "sncEndpoint"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 597
    .local v9, sncEndpointList:Lorg/w3c/dom/NodeList;
    if-nez v9, :cond_0

    move-object v5, v4

    .line 622
    .end local v0           #doc:Lorg/w3c/dom/Document;
    .end local v1           #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v4           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .end local v6           #fs:Ljava/io/FileInputStream;
    .end local v9           #sncEndpointList:Lorg/w3c/dom/NodeList;
    .local v5, endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    :goto_0
    return-object v5

    .line 601
    .end local v5           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v0       #doc:Lorg/w3c/dom/Document;
    .restart local v1       #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v6       #fs:Ljava/io/FileInputStream;
    .restart local v9       #sncEndpointList:Lorg/w3c/dom/NodeList;
    :cond_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v7, v11, :cond_1

    .line 602
    invoke-interface {v9, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 603
    .local v8, sncEndpoint:Lorg/w3c/dom/Element;
    const-string v11, "provider"

    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 604
    .local v10, value:Ljava/lang/String;
    invoke-virtual {v10, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 605
    new-instance v5, Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-direct {v5}, Lcom/android/email/syncnconnect/utils/SncEndpoint;-><init>()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 606
    .end local v4           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v5       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    :try_start_1
    const-string v11, "endpointId"

    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setEndpointId(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v5, p1}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setProvider(Ljava/lang/String;)V

    .line 608
    const-string v11, "name"

    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setEndpointName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v4, v5

    .end local v0           #doc:Lorg/w3c/dom/Document;
    .end local v1           #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v5           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .end local v6           #fs:Ljava/io/FileInputStream;
    .end local v7           #i:I
    .end local v8           #sncEndpoint:Lorg/w3c/dom/Element;
    .end local v9           #sncEndpointList:Lorg/w3c/dom/NodeList;
    .end local v10           #value:Ljava/lang/String;
    .restart local v4       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    :cond_1
    :goto_2
    move-object v5, v4

    .line 622
    .end local v4           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v5       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    goto :goto_0

    .line 601
    .end local v5           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v0       #doc:Lorg/w3c/dom/Document;
    .restart local v1       #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v6       #fs:Ljava/io/FileInputStream;
    .restart local v7       #i:I
    .restart local v8       #sncEndpoint:Lorg/w3c/dom/Element;
    .restart local v9       #sncEndpointList:Lorg/w3c/dom/NodeList;
    .restart local v10       #value:Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 612
    .end local v0           #doc:Lorg/w3c/dom/Document;
    .end local v1           #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #fs:Ljava/io/FileInputStream;
    .end local v7           #i:I
    .end local v8           #sncEndpoint:Lorg/w3c/dom/Element;
    .end local v9           #sncEndpointList:Lorg/w3c/dom/NodeList;
    .end local v10           #value:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 613
    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    :goto_3
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_2

    .line 614
    .end local v3           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v3

    .line 615
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_4
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 616
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 617
    .local v3, e:Lorg/xml/sax/SAXException;
    :goto_5
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_2

    .line 618
    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v3

    .line 619
    .local v3, e:Ljava/io/IOException;
    :goto_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 618
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v0       #doc:Lorg/w3c/dom/Document;
    .restart local v1       #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v6       #fs:Ljava/io/FileInputStream;
    .restart local v7       #i:I
    .restart local v8       #sncEndpoint:Lorg/w3c/dom/Element;
    .restart local v9       #sncEndpointList:Lorg/w3c/dom/NodeList;
    .restart local v10       #value:Ljava/lang/String;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v4       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    goto :goto_6

    .line 616
    .end local v4           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v5       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v4       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    goto :goto_5

    .line 614
    .end local v4           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v5       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    :catch_6
    move-exception v3

    move-object v4, v5

    .end local v5           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v4       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    goto :goto_4

    .line 612
    .end local v4           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v5       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    :catch_7
    move-exception v3

    move-object v4, v5

    .end local v5           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .restart local v4       #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    goto :goto_3
.end method

.method public static getOthersEndpoint()Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .locals 3

    .prologue
    .line 820
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 821
    new-instance v1, Lcom/android/email/syncnconnect/utils/SncService;

    invoke-direct {v1}, Lcom/android/email/syncnconnect/utils/SncService;-><init>()V

    .line 822
    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceId(Ljava/lang/String;)V

    .line 823
    const-string v2, "Mail"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceName(Ljava/lang/String;)V

    .line 824
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    new-instance v1, Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-direct {v1}, Lcom/android/email/syncnconnect/utils/SncEndpoint;-><init>()V

    .line 827
    const-string v2, "8"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setEndpointId(Ljava/lang/String;)V

    .line 828
    const-string v2, "Others"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setEndpointName(Ljava/lang/String;)V

    .line 829
    const-string v2, "Others"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setProvider(Ljava/lang/String;)V

    .line 830
    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setSncServiceList(Ljava/util/List;)V

    .line 832
    return-object v1
.end method

.method private static getPassword(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "userName"

    .prologue
    .line 196
    const/4 v1, 0x0

    .line 198
    .local v1, password:Ljava/lang/String;
    const-string v3, "snc_accounts_credentials"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 201
    .local v2, sharedPref:Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    if-nez v1, :cond_0

    .line 204
    invoke-static {p0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 211
    :goto_0
    return-object v1

    .line 206
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 207
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static getSncEndpoint(Landroid/content/Context;J)Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .locals 4
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 689
    const/4 v1, 0x0

    .line 691
    .local v1, endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    invoke-static {p0, p1, p2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getEmailIdFromAccountId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, emailId:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getUserEndpointDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    move-result-object v2

    .line 693
    .local v2, userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    if-eqz v2, :cond_0

    .line 694
    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getEndpointDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v1

    .line 697
    :cond_0
    invoke-static {v1}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->printSncEndpoint(Lcom/android/email/syncnconnect/utils/SncEndpoint;)V

    .line 698
    return-object v1
.end method

.method public static getSncHostAuth(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 761
    .line 763
    invoke-static {p0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 765
    if-eqz v0, :cond_1

    .line 766
    const-string v3, "protocol=? AND password!=?"

    .line 769
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "snc"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 772
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 775
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    .line 781
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 784
    :cond_1
    return-object v5

    .line 778
    :catch_0
    move-exception v0

    .line 779
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 781
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getSncUserEndpoint(Landroid/content/Context;J)Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .locals 2
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 702
    const/4 v1, 0x0

    .line 704
    .local v1, userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    invoke-static {p0, p1, p2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getEmailIdFromAccountId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, emailId:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getUserEndpointDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    move-result-object v1

    .line 707
    invoke-static {v1}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->printSncUserEndpoint(Lcom/android/email/syncnconnect/utils/SncUserEndpoint;)V

    .line 708
    return-object v1
.end method

.method public static getUserEndpointDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .locals 22
    .parameter "context"
    .parameter "emailId"

    .prologue
    .line 451
    const-string v19, "DatabaseUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Getting UserEndpointDetails for emailId :: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const/16 v16, 0x0

    .line 455
    .local v16, userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    if-nez p1, :cond_0

    move-object/from16 v17, v16

    .line 515
    .end local v16           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .local v17, userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    :goto_0
    return-object v17

    .line 459
    .end local v17           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v16       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 462
    .local v4, docFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 463
    .local v3, docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    const-string v19, "sncUserAccounts.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    .line 464
    .local v6, fs:Ljava/io/FileInputStream;
    invoke-virtual {v3, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 466
    .local v2, doc:Lorg/w3c/dom/Document;
    const-string v19, "sncUserEndpoint"

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 467
    .local v15, sncUserEndpointList:Lorg/w3c/dom/NodeList;
    if-nez v15, :cond_1

    move-object/from16 v17, v16

    .line 468
    .end local v16           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v17       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    goto :goto_0

    .line 471
    .end local v17           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v16       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    :cond_1
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_3

    .line 472
    invoke-interface {v15, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 473
    .local v14, sncUserEndpoint:Lorg/w3c/dom/Element;
    const-string v19, "userName"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 474
    .local v18, value:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 475
    new-instance v17, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-direct/range {v17 .. v17}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;-><init>()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 476
    .end local v16           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v17       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    :try_start_1
    const-string v19, "userEndpointId"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setUserEndpointId(Ljava/lang/String;)V

    .line 477
    const-string v19, "endpointId"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setEndpointId(Ljava/lang/String;)V

    .line 478
    const-string v19, "provider"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setProvider(Ljava/lang/String;)V

    .line 479
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setUserName(Ljava/lang/String;)V

    .line 480
    const-string v19, "displayOrder"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setDisplayOrder(Ljava/lang/String;)V

    .line 481
    const-string v19, "accountName"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setAccountName(Ljava/lang/String;)V

    .line 482
    const-string v19, "displayName"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setDisplayName(Ljava/lang/String;)V

    .line 483
    const-string v19, "defaultFlag"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setDefaultFlag(Ljava/lang/String;)V

    .line 485
    const-string v19, "sncServices"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    .line 487
    .local v13, sncServices:Lorg/w3c/dom/Element;
    const-string v19, "sncService"

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 489
    .local v12, sncServiceList:Lorg/w3c/dom/NodeList;
    if-eqz v12, :cond_5

    .line 490
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v10, serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    const/4 v8, 0x0

    .local v8, j:I
    :goto_2
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_2

    .line 492
    invoke-interface {v12, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 494
    .local v9, service:Lorg/w3c/dom/Element;
    new-instance v11, Lcom/android/email/syncnconnect/utils/SncService;

    invoke-direct {v11}, Lcom/android/email/syncnconnect/utils/SncService;-><init>()V

    .line 495
    .local v11, sncService:Lcom/android/email/syncnconnect/utils/SncService;
    const-string v19, "serviceId"

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceId(Ljava/lang/String;)V

    .line 496
    const-string v19, "name"

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceName(Ljava/lang/String;)V

    .line 497
    const-string v19, "isNotified"

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/email/syncnconnect/utils/SncService;->setIsNotified(Ljava/lang/String;)V

    .line 498
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 500
    .end local v9           #service:Lorg/w3c/dom/Element;
    .end local v11           #sncService:Lcom/android/email/syncnconnect/utils/SncService;
    :cond_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setSncServiceList(Ljava/util/List;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v16, v17

    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v3           #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #fs:Ljava/io/FileInputStream;
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v10           #serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    .end local v12           #sncServiceList:Lorg/w3c/dom/NodeList;
    .end local v13           #sncServices:Lorg/w3c/dom/Element;
    .end local v14           #sncUserEndpoint:Lorg/w3c/dom/Element;
    .end local v15           #sncUserEndpointList:Lorg/w3c/dom/NodeList;
    .end local v17           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .end local v18           #value:Ljava/lang/String;
    .restart local v16       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    :cond_3
    :goto_3
    move-object/from16 v17, v16

    .line 515
    .end local v16           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v17       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    goto/16 :goto_0

    .line 471
    .end local v17           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v2       #doc:Lorg/w3c/dom/Document;
    .restart local v3       #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6       #fs:Ljava/io/FileInputStream;
    .restart local v7       #i:I
    .restart local v14       #sncUserEndpoint:Lorg/w3c/dom/Element;
    .restart local v15       #sncUserEndpointList:Lorg/w3c/dom/NodeList;
    .restart local v16       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v18       #value:Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 505
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v3           #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #fs:Ljava/io/FileInputStream;
    .end local v7           #i:I
    .end local v14           #sncUserEndpoint:Lorg/w3c/dom/Element;
    .end local v15           #sncUserEndpointList:Lorg/w3c/dom/NodeList;
    .end local v18           #value:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 506
    .local v5, e:Ljavax/xml/parsers/ParserConfigurationException;
    :goto_4
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_3

    .line 507
    .end local v5           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v5

    .line 508
    .local v5, e:Ljava/io/FileNotFoundException;
    :goto_5
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 509
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .line 510
    .local v5, e:Lorg/xml/sax/SAXException;
    :goto_6
    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_3

    .line 511
    .end local v5           #e:Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v5

    .line 512
    .local v5, e:Ljava/io/IOException;
    :goto_7
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 511
    .end local v5           #e:Ljava/io/IOException;
    .end local v16           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v2       #doc:Lorg/w3c/dom/Document;
    .restart local v3       #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6       #fs:Ljava/io/FileInputStream;
    .restart local v7       #i:I
    .restart local v14       #sncUserEndpoint:Lorg/w3c/dom/Element;
    .restart local v15       #sncUserEndpointList:Lorg/w3c/dom/NodeList;
    .restart local v17       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v18       #value:Ljava/lang/String;
    :catch_4
    move-exception v5

    move-object/from16 v16, v17

    .end local v17           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v16       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    goto :goto_7

    .line 509
    .end local v16           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v17       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    :catch_5
    move-exception v5

    move-object/from16 v16, v17

    .end local v17           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v16       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    goto :goto_6

    .line 507
    .end local v16           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v17       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    :catch_6
    move-exception v5

    move-object/from16 v16, v17

    .end local v17           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v16       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    goto :goto_5

    .line 505
    .end local v16           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v17       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    :catch_7
    move-exception v5

    move-object/from16 v16, v17

    .end local v17           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v16       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    goto :goto_4

    .end local v16           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v12       #sncServiceList:Lorg/w3c/dom/NodeList;
    .restart local v13       #sncServices:Lorg/w3c/dom/Element;
    .restart local v17       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    :cond_5
    move-object/from16 v16, v17

    .end local v17           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v16       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    goto :goto_3
.end method

.method public static getUserEndpointDetailsFromId(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .locals 21
    .parameter "context"
    .parameter "userEndpointId"

    .prologue
    .line 520
    const/16 v16, 0x0

    .line 522
    .local v16, userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    if-nez p1, :cond_0

    move-object/from16 v17, v16

    .line 582
    .end local v16           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .local v17, userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    :goto_0
    return-object v17

    .line 526
    .end local v17           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v16       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 529
    .local v4, docFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 530
    .local v3, docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    const-string v19, "sncUserAccounts.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    .line 531
    .local v6, fs:Ljava/io/FileInputStream;
    invoke-virtual {v3, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 533
    .local v2, doc:Lorg/w3c/dom/Document;
    const-string v19, "sncUserEndpoint"

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 534
    .local v15, sncUserEndpointList:Lorg/w3c/dom/NodeList;
    if-nez v15, :cond_1

    move-object/from16 v17, v16

    .line 535
    .end local v16           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v17       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    goto :goto_0

    .line 538
    .end local v17           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v16       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    :cond_1
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_3

    .line 539
    invoke-interface {v15, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 540
    .local v14, sncUserEndpoint:Lorg/w3c/dom/Element;
    const-string v19, "userEndpointId"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 541
    .local v18, value:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 542
    new-instance v17, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-direct/range {v17 .. v17}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;-><init>()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 543
    .end local v16           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v17       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    :try_start_1
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setUserEndpointId(Ljava/lang/String;)V

    .line 544
    const-string v19, "userName"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setUserName(Ljava/lang/String;)V

    .line 545
    const-string v19, "endpointId"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setEndpointId(Ljava/lang/String;)V

    .line 546
    const-string v19, "provider"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setProvider(Ljava/lang/String;)V

    .line 547
    const-string v19, "displayOrder"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setDisplayOrder(Ljava/lang/String;)V

    .line 548
    const-string v19, "accountName"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setAccountName(Ljava/lang/String;)V

    .line 549
    const-string v19, "displayName"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setDisplayName(Ljava/lang/String;)V

    .line 550
    const-string v19, "defaultFlag"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setDefaultFlag(Ljava/lang/String;)V

    .line 552
    const-string v19, "sncServices"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    .line 554
    .local v13, sncServices:Lorg/w3c/dom/Element;
    const-string v19, "sncService"

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 556
    .local v12, sncServiceList:Lorg/w3c/dom/NodeList;
    if-eqz v12, :cond_5

    .line 557
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v10, serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    const/4 v8, 0x0

    .local v8, j:I
    :goto_2
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_2

    .line 559
    invoke-interface {v12, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 561
    .local v9, service:Lorg/w3c/dom/Element;
    new-instance v11, Lcom/android/email/syncnconnect/utils/SncService;

    invoke-direct {v11}, Lcom/android/email/syncnconnect/utils/SncService;-><init>()V

    .line 562
    .local v11, sncService:Lcom/android/email/syncnconnect/utils/SncService;
    const-string v19, "serviceId"

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceId(Ljava/lang/String;)V

    .line 563
    const-string v19, "name"

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceName(Ljava/lang/String;)V

    .line 564
    const-string v19, "isNotified"

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/email/syncnconnect/utils/SncService;->setIsNotified(Ljava/lang/String;)V

    .line 565
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 567
    .end local v9           #service:Lorg/w3c/dom/Element;
    .end local v11           #sncService:Lcom/android/email/syncnconnect/utils/SncService;
    :cond_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setSncServiceList(Ljava/util/List;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v16, v17

    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v3           #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #fs:Ljava/io/FileInputStream;
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v10           #serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    .end local v12           #sncServiceList:Lorg/w3c/dom/NodeList;
    .end local v13           #sncServices:Lorg/w3c/dom/Element;
    .end local v14           #sncUserEndpoint:Lorg/w3c/dom/Element;
    .end local v15           #sncUserEndpointList:Lorg/w3c/dom/NodeList;
    .end local v17           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .end local v18           #value:Ljava/lang/String;
    .restart local v16       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    :cond_3
    :goto_3
    move-object/from16 v17, v16

    .line 582
    .end local v16           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v17       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    goto/16 :goto_0

    .line 538
    .end local v17           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v2       #doc:Lorg/w3c/dom/Document;
    .restart local v3       #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6       #fs:Ljava/io/FileInputStream;
    .restart local v7       #i:I
    .restart local v14       #sncUserEndpoint:Lorg/w3c/dom/Element;
    .restart local v15       #sncUserEndpointList:Lorg/w3c/dom/NodeList;
    .restart local v16       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v18       #value:Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 572
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v3           #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #fs:Ljava/io/FileInputStream;
    .end local v7           #i:I
    .end local v14           #sncUserEndpoint:Lorg/w3c/dom/Element;
    .end local v15           #sncUserEndpointList:Lorg/w3c/dom/NodeList;
    .end local v18           #value:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 573
    .local v5, e:Ljavax/xml/parsers/ParserConfigurationException;
    :goto_4
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_3

    .line 574
    .end local v5           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v5

    .line 575
    .local v5, e:Ljava/io/FileNotFoundException;
    :goto_5
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 576
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .line 577
    .local v5, e:Lorg/xml/sax/SAXException;
    :goto_6
    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_3

    .line 578
    .end local v5           #e:Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v5

    .line 579
    .local v5, e:Ljava/io/IOException;
    :goto_7
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 578
    .end local v5           #e:Ljava/io/IOException;
    .end local v16           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v2       #doc:Lorg/w3c/dom/Document;
    .restart local v3       #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6       #fs:Ljava/io/FileInputStream;
    .restart local v7       #i:I
    .restart local v14       #sncUserEndpoint:Lorg/w3c/dom/Element;
    .restart local v15       #sncUserEndpointList:Lorg/w3c/dom/NodeList;
    .restart local v17       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v18       #value:Ljava/lang/String;
    :catch_4
    move-exception v5

    move-object/from16 v16, v17

    .end local v17           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v16       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    goto :goto_7

    .line 576
    .end local v16           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v17       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    :catch_5
    move-exception v5

    move-object/from16 v16, v17

    .end local v17           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v16       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    goto :goto_6

    .line 574
    .end local v16           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v17       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    :catch_6
    move-exception v5

    move-object/from16 v16, v17

    .end local v17           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v16       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    goto :goto_5

    .line 572
    .end local v16           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v17       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    :catch_7
    move-exception v5

    move-object/from16 v16, v17

    .end local v17           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v16       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    goto :goto_4

    .end local v16           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v12       #sncServiceList:Lorg/w3c/dom/NodeList;
    .restart local v13       #sncServices:Lorg/w3c/dom/Element;
    .restart local v17       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    :cond_5
    move-object/from16 v16, v17

    .end local v17           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .restart local v16       #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    goto :goto_3
.end method

.method public static getUserEndpointId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 328
    const-string v0, "DatabaseUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Into getUserEndpointId for accountId :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const/4 v8, 0x0

    .line 332
    .local v8, userEndpointId:Ljava/lang/String;
    const-wide/16 v4, -0x1

    cmp-long v0, p1, v4

    if-nez v0, :cond_0

    move-object v9, v8

    .line 353
    .end local v8           #userEndpointId:Ljava/lang/String;
    .local v9, userEndpointId:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 336
    .end local v9           #userEndpointId:Ljava/lang/String;
    .restart local v8       #userEndpointId:Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 337
    .local v1, u:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "compatibilityUuid"

    aput-object v0, v2, v10

    .line 340
    .local v2, uuid_projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 343
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 345
    const-string v0, "DatabaseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserEndpointId :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v9, v8

    .line 353
    .end local v8           #userEndpointId:Ljava/lang/String;
    .restart local v9       #userEndpointId:Ljava/lang/String;
    goto :goto_0

    .line 347
    .end local v9           #userEndpointId:Ljava/lang/String;
    .restart local v8       #userEndpointId:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 348
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 350
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getVerizonEndpoint()Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .locals 3

    .prologue
    .line 804
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 805
    new-instance v1, Lcom/android/email/syncnconnect/utils/SncService;

    invoke-direct {v1}, Lcom/android/email/syncnconnect/utils/SncService;-><init>()V

    .line 806
    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceId(Ljava/lang/String;)V

    .line 807
    const-string v2, "Mail"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceName(Ljava/lang/String;)V

    .line 808
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    new-instance v1, Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-direct {v1}, Lcom/android/email/syncnconnect/utils/SncEndpoint;-><init>()V

    .line 811
    const-string v2, "7"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setEndpointId(Ljava/lang/String;)V

    .line 812
    const-string v2, "Verizon.net"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setEndpointName(Ljava/lang/String;)V

    .line 813
    const-string v2, "Verizon"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setProvider(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setSncServiceList(Ljava/util/List;)V

    .line 816
    return-object v1
.end method

.method public static isSncServicePresent(Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter "serviceName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 858
    .local p0, serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    const/4 v0, 0x0

    .line 860
    .local v0, bRet:Z
    if-eqz p0, :cond_1

    .line 861
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/utils/SncService;

    .line 862
    .local v2, service:Lcom/android/email/syncnconnect/utils/SncService;
    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 863
    const/4 v0, 0x1

    .line 868
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #service:Lcom/android/email/syncnconnect/utils/SncService;
    :cond_1
    return v0
.end method

.method public static organizeEndpointList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, endpointList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncEndpoint;>;"
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 838
    invoke-static {p0, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 839
    const/4 v0, 0x3

    invoke-static {p0, v3, v0}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 840
    invoke-static {p0, v2, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 841
    invoke-static {}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getCorporateEndpoint()Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 842
    invoke-static {}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getVerizonEndpoint()Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    invoke-static {}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getOthersEndpoint()Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    return-void
.end method

.method public static printSncEndpoint(Lcom/android/email/syncnconnect/utils/SncEndpoint;)V
    .locals 5
    .parameter "endpoint"

    .prologue
    .line 712
    if-eqz p0, :cond_0

    .line 713
    const-string v2, "DatabaseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EndpointDetails ::\nEndpointId :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nEndpointName :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getEndpointName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nProviderName :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/syncnconnect/utils/SncService;

    .line 718
    .local v1, service:Lcom/android/email/syncnconnect/utils/SncService;
    const-string v2, "DatabaseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nService :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 721
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #service:Lcom/android/email/syncnconnect/utils/SncService;
    :cond_0
    return-void
.end method

.method public static printSncUserEndpoint(Lcom/android/email/syncnconnect/utils/SncUserEndpoint;)V
    .locals 5
    .parameter "userEndpoint"

    .prologue
    .line 724
    if-eqz p0, :cond_0

    .line 725
    const-string v2, "DatabaseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserEndpointDetails ::\nUserEndpointId :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserEndpointId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nEndpointId :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nUserName :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nProviderName :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nDisplayOrder :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getDisplayOrder()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nAccountName :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nDisplayName :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nDefaultFlag :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getDefaultFlag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/syncnconnect/utils/SncService;

    .line 738
    .local v1, service:Lcom/android/email/syncnconnect/utils/SncService;
    const-string v2, "DatabaseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nService :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 741
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #service:Lcom/android/email/syncnconnect/utils/SncService;
    :cond_0
    return-void
.end method

.method public static setRestoreFlowDone(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "sncRestoreSettings"

    .prologue
    .line 380
    const-string v2, "DatabaseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Into setRestoreFlowDone with value :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v2, "snc_settings_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 385
    .local v1, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 386
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "snc_restore_flow_done"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 387
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 388
    return-void
.end method

.method public static setSncTestServer(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "sncTestServer"

    .prologue
    .line 400
    const-string v2, "DatabaseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Into setSncTestServer with value :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v2, "snc_settings_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 405
    .local v1, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 406
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "snc_test_server"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 407
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 408
    return-void
.end method

.method public static updateSncHostAuthEntries(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 872
    invoke-static {p0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 873
    const-string v1, "DatabaseUtils"

    const-string v2, "Into updateSncHostAuthEntries() method"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 879
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "password = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/android/emailcommon/provider/EmailContent;->getIdListWhere(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)[J

    move-result-object v1

    .line 882
    if-eqz v1, :cond_0

    .line 883
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v3, v1, v0

    .line 884
    const-string v5, "DatabaseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updating password for id :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 886
    const-string v6, "password"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 888
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v5, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 883
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 892
    :cond_0
    return-void
.end method
