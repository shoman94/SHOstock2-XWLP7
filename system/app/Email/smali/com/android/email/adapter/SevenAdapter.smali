.class public Lcom/android/email/adapter/SevenAdapter;
.super Lcom/android/email/adapter/ProtocolAdapter;
.source "SevenAdapter.java"

# interfaces
.implements Lcom/android/email/combined/AccountFacade$AccountListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/adapter/SevenAdapter$1;,
        Lcom/android/email/adapter/SevenAdapter$MySevenListener;,
        Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;
    }
.end annotation


# static fields
.field private static MEAILBOX_PROJECTION:[Ljava/lang/String;

.field private static MESSAGEID_TO_MAILBOXID_PROJECTION:[Ljava/lang/String;

.field private static accountFacade:Lcom/android/email/combined/AccountFacade;

.field private static m_seven_csc_status:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

.field private static m_seven_status:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;


# instance fields
.field private m7listener:Lcom/seven/Z7/app/Z7CommonListener;

.field private mHandler:Landroid/os/Handler;

.field private mMySevenListener:Lcom/android/email/adapter/SevenAdapter$MySevenListener;

.field z7service:Lcom/digc/seven/Z7MailHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "sevenMailboxKey"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/adapter/SevenAdapter;->MEAILBOX_PROJECTION:[Ljava/lang/String;

    .line 75
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "mailboxKey"

    aput-object v1, v0, v3

    const-string v1, "sevenMessageKey"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/adapter/SevenAdapter;->MESSAGEID_TO_MAILBOXID_PROJECTION:[Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;->NOT_INITIALIZED:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    sput-object v0, Lcom/android/email/adapter/SevenAdapter;->m_seven_status:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    .line 86
    sget-object v0, Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;->NOT_INITIALIZED:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    sput-object v0, Lcom/android/email/adapter/SevenAdapter;->m_seven_csc_status:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/email/adapter/ProtocolAdapter;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/adapter/SevenAdapter;->mHandler:Landroid/os/Handler;

    .line 512
    return-void
.end method

.method private conv_to_seven_flags(I)I
    .locals 2
    .parameter "flag"

    .prologue
    .line 306
    const/4 v0, 0x0

    .line 308
    .local v0, ret_flag:I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 309
    const/4 v0, 0x1

    .line 314
    :cond_0
    :goto_0
    return v0

    .line 310
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 311
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static deleteSevenAccount(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1048
    invoke-static {p0}, Lcom/digc/seven/SevenSyncProvider;->getAccountCount(Landroid/content/Context;)I

    move-result v0

    .line 1049
    .local v0, count:I
    const-string v1, "SevenAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteSevenAccount() is called : count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    if-gtz v0, :cond_0

    .line 1052
    const-string v1, "SevenAdapter"

    const-string v2, "deleteSevenAccount start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    invoke-static {p0}, Lcom/android/email/adapter/SevenAdapter;->deleteSevenAccountForEmail(Landroid/content/Context;)V

    .line 1054
    const-string v1, "SevenAdapter"

    const-string v2, "deleteSevenAccount end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_0
    return-void
.end method

.method public static deleteSevenAccountForEmail(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 1015
    const-string v5, "SevenAdapter"

    const-string v6, "deleteSevenAccountForEmail() is called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    if-nez p0, :cond_0

    .line 1018
    sget-object p0, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    .line 1021
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 1024
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 1025
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v6, "com.seven.Z7"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1026
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5, v0, v8, v8}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 1024
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1031
    .end local v0           #account:Landroid/accounts/Account;
    :cond_2
    const-string v5, "SevenAdapter"

    const-string v6, "deleteSevenAccountForEmail delete"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id in (select accountKey from Account_CB where typeMsg=1)"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1045
    return-void
.end method

.method public static getAccountFacade()Lcom/android/email/combined/AccountFacade;
    .locals 1

    .prologue
    .line 1009
    sget-object v0, Lcom/android/email/adapter/SevenAdapter;->accountFacade:Lcom/android/email/combined/AccountFacade;

    return-object v0
.end method

.method private getPremiumAccountStatus(Landroid/content/Context;I)I
    .locals 9
    .parameter "context"
    .parameter "remoteAccountId"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 639
    if-ge p2, v4, :cond_0

    .line 640
    const/4 v7, -0x1

    .line 654
    :goto_0
    return v7

    .line 641
    :cond_0
    const/4 v7, -0x1

    .line 642
    .local v7, result:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/seven/Z7/provider/Z7Content$Accounts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "status"

    aput-object v3, v2, v8

    const-string v3, "account_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 648
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 652
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private hasPremiumMessage(Landroid/content/Context;I)Z
    .locals 9
    .parameter "context"
    .parameter "messageKey"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 471
    if-ge p2, v8, :cond_0

    move v0, v7

    .line 490
    :goto_0
    return v0

    .line 474
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/seven/Z7/provider/Z7Content$Emails;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "_id=?"

    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 479
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 481
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 487
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v0, v7

    .line 490
    goto :goto_0
.end method

.method public static initSevenState(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "bForce"

    .prologue
    .line 129
    sget-object v1, Lcom/android/email/adapter/SevenAdapter;->m_seven_status:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    sget-object v2, Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;->NOT_INITIALIZED:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    if-eq v1, v2, :cond_0

    if-eqz p1, :cond_1

    .line 131
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.seven.Z7"

    const/16 v3, 0x100

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 132
    sget-object v1, Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;->ENABLED:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    sput-object v1, Lcom/android/email/adapter/SevenAdapter;->m_seven_status:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    const-string v1, "EmailUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSevenState() m_seven_state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/email/adapter/SevenAdapter;->m_seven_status:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_1
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;->DISABLED:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    sput-object v1, Lcom/android/email/adapter/SevenAdapter;->m_seven_status:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    goto :goto_0
.end method

.method public static isCscEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 117
    sget-object v1, Lcom/android/email/adapter/SevenAdapter;->m_seven_csc_status:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    sget-object v2, Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;->NOT_INITIALIZED:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    if-ne v1, v2, :cond_0

    .line 118
    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getInstance()Lcom/android/email/activity/setup/AccountSetupCustomer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->isCombinedEnabled()Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 119
    sget-object v1, Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;->ENABLED:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    sput-object v1, Lcom/android/email/adapter/SevenAdapter;->m_seven_csc_status:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    .line 125
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/email/adapter/SevenAdapter;->m_seven_csc_status:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    sget-object v2, Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;->ENABLED:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    if-ne v1, v2, :cond_2

    :goto_1
    return v0

    .line 121
    :cond_1
    sget-object v1, Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;->DISABLED:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    sput-object v1, Lcom/android/email/adapter/SevenAdapter;->m_seven_csc_status:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    goto :goto_0

    .line 125
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static setSevenEnabled(Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;)V
    .locals 3
    .parameter "new_state"

    .prologue
    .line 112
    const-string v0, "SevenAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSevenEnabled new state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sput-object p0, Lcom/android/email/adapter/SevenAdapter;->m_seven_status:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    .line 114
    return-void
.end method


# virtual methods
.method public addUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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
    .line 468
    .local p4, serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    return-void
.end method

.method public deleteAccountSync(JLandroid/content/Context;)V
    .locals 10
    .parameter "accountId"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 1168
    const-string v0, "SevenAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAccountSync() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1171
    const-string v0, "SevenAdapter"

    const-string v1, "Invalid Account Id"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :goto_0
    return-void

    .line 1175
    :cond_0
    invoke-static {p3, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    .line 1177
    .local v7, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v7, :cond_1

    .line 1180
    sget-object v0, Lcom/android/email/adapter/SevenAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v4, p1, p2}, Lcom/android/email/Controller$Result;->deleteAccountCallback(Landroid/os/Bundle;J)V

    goto :goto_0

    .line 1188
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 1193
    .local v3, tempString:[Ljava/lang/String;
    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p3

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    .line 1197
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleteAccount Controller sevenAccountKey :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " accountId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-static {p3}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v9

    .line 1202
    .local v9, zHandler:Lcom/digc/seven/Z7MailHandler;
    iget-object v0, p0, Lcom/android/email/adapter/SevenAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v1, v2}, Lcom/digc/seven/Z7MailHandler;->removeAccount(Landroid/os/Handler;ILandroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1203
    .end local v3           #tempString:[Ljava/lang/String;
    .end local v9           #zHandler:Lcom/digc/seven/Z7MailHandler;
    :catch_0
    move-exception v8

    .line 1204
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "Email"

    const-string v1, "Exception while deleting account"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deleteMessage(Ljava/util/HashSet;JJ)Z
    .locals 1
    .parameter
    .parameter "accountId"
    .parameter "sourceMailboxId"
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
    .line 289
    .local p1, messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public deleteMessageSync([JJ)V
    .locals 25
    .parameter "messageIds"
    .parameter "trashMailboxId"

    .prologue
    .line 1061
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1063
    .local v11, cv:Landroid/content/ContentValues;
    const-string v2, "SevenAdapter"

    const-string v3, "deleteMessageSync() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const-string v2, "mailboxKey"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1067
    move-object/from16 v9, p1

    .local v9, arr$:[J
    array-length v14, v9

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_0
    if-ge v13, v14, :cond_0

    aget-wide v17, v9, v13

    .line 1068
    .local v17, messageId:J
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v17

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    .line 1070
    .local v8, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/adapter/SevenAdapter;->z7service:Lcom/digc/seven/Z7MailHandler;

    if-eqz v2, :cond_3

    .line 1072
    if-nez v8, :cond_1

    .line 1163
    .end local v8           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v17           #messageId:J
    :cond_0
    :goto_1
    return-void

    .line 1075
    .restart local v8       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v17       #messageId:J
    :cond_1
    const/16 v21, -0x1

    .line 1076
    .local v21, sevenMailboxId:I
    const/4 v15, -0x1

    .line 1079
    .local v15, mailType:I
    :try_start_0
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v17

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v16

    .line 1080
    .local v16, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v16, :cond_0

    .line 1083
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/email/adapter/SevenAdapter;->MEAILBOX_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v10

    .line 1089
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1090
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 1091
    .end local v21           #sevenMailboxId:I
    .local v5, sevenMailboxId:I
    const/4 v2, 0x2

    :try_start_2
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v15

    .line 1094
    :goto_2
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1097
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v17

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    .line 1100
    .local v22, uri:Landroid/net/Uri;
    const/4 v2, 0x3

    if-eq v15, v2, :cond_2

    const/4 v2, 0x4

    if-eq v15, v2, :cond_2

    const/4 v2, 0x5

    if-ne v15, v2, :cond_4

    .line 1102
    :cond_2
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1103
    const-string v2, "SevenAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[deleteMessage] >>> (mailboxKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", messageKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    .end local v5           #sevenMailboxId:I
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v15           #mailType:I
    .end local v16           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v22           #uri:Landroid/net/Uri;
    :cond_3
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 1094
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v15       #mailType:I
    .restart local v16       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v21       #sevenMailboxId:I
    :catchall_0
    move-exception v2

    move/from16 v5, v21

    .end local v21           #sevenMailboxId:I
    .restart local v5       #sevenMailboxId:I
    :goto_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1158
    :catch_0
    move-exception v12

    .line 1159
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v16           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .local v12, e:Ljava/lang/Exception;
    :goto_5
    const-string v2, "SevenAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[deleteMessage] >>> Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1105
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v16       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v22       #uri:Landroid/net/Uri;
    :cond_4
    const/4 v2, 0x6

    if-ne v15, v2, :cond_6

    .line 1106
    :try_start_4
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v17

    long-to-int v3, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/email/adapter/SevenAdapter;->hasPremiumMessage(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1109
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    iget-wide v3, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v0, v17

    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 1112
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1113
    const-string v2, "SevenAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[deleteMessage] >>> (messageKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1115
    :cond_5
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v17

    invoke-static {v2, v0, v1}, Lcom/digc/seven/SevenSyncProvider;->getSevenFolderIdFromMessageId(Landroid/content/Context;J)I

    move-result v19

    .line 1119
    .local v19, remoteSevenFolderId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/adapter/SevenAdapter;->z7service:Lcom/digc/seven/Z7MailHandler;

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v3

    long-to-int v3, v3

    const/16 v4, 0x100

    move-wide/from16 v6, v17

    invoke-virtual/range {v2 .. v7}, Lcom/digc/seven/Z7MailHandler;->delete(IIIJ)V

    .line 1121
    const-string v2, "SevenAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[deleteMessage/z7service] >>> (SevenAccountKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sevenMailboxId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sevenMessageKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", remoteSevenFolderId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1127
    .end local v19           #remoteSevenFolderId:I
    :cond_6
    const/4 v2, 0x1

    if-lt v5, v2, :cond_7

    const-wide/16 v2, 0x1

    cmp-long v2, v17, v2

    if-gez v2, :cond_8

    .line 1128
    :cond_7
    const-string v2, "SevenAdapter"

    const-string v3, "[deleteMessage] >>> invalid premium message data"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 1131
    :cond_8
    const/16 v20, 0x1

    .line 1133
    .local v20, result:Z
    :try_start_5
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v17

    long-to-int v3, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/email/adapter/SevenAdapter;->hasPremiumMessage(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1134
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v17

    invoke-static {v2, v0, v1}, Lcom/digc/seven/SevenSyncProvider;->getSevenFolderIdFromMessageId(Landroid/content/Context;J)I

    move-result v19

    .line 1138
    .restart local v19       #remoteSevenFolderId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/adapter/SevenAdapter;->z7service:Lcom/digc/seven/Z7MailHandler;

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v3

    long-to-int v3, v3

    const/16 v4, 0x100

    move-wide/from16 v6, v17

    invoke-virtual/range {v2 .. v7}, Lcom/digc/seven/Z7MailHandler;->delete(IIIJ)V

    .line 1141
    const-string v2, "SevenAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[deleteMessage/z7service] >>> (SevenAccountKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sevenMailboxId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sevenMessageKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", remoteSevenFolderId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1153
    .end local v19           #remoteSevenFolderId:I
    :goto_6
    if-eqz v20, :cond_3

    .line 1154
    :try_start_6
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    .line 1146
    :cond_9
    :try_start_7
    const-string v2, "SevenAdapter"

    const-string v3, "[deleteMessage/z7service] >>> not availabled seven message"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_6

    .line 1149
    :catch_1
    move-exception v12

    .line 1150
    .restart local v12       #e:Ljava/lang/Exception;
    const/16 v20, 0x0

    .line 1151
    :try_start_8
    const-string v2, "SevenAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[deleteMessage/z7service] >>> Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1153
    if-eqz v20, :cond_3

    .line 1154
    :try_start_9
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1153
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    if-eqz v20, :cond_a

    .line 1154
    sget-object v3, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v11, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_a
    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 1158
    .end local v5           #sevenMailboxId:I
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v16           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v20           #result:Z
    .end local v22           #uri:Landroid/net/Uri;
    .restart local v21       #sevenMailboxId:I
    :catch_2
    move-exception v12

    move/from16 v5, v21

    .end local v21           #sevenMailboxId:I
    .restart local v5       #sevenMailboxId:I
    goto/16 :goto_5

    .line 1094
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v16       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catchall_2
    move-exception v2

    goto/16 :goto_4

    .end local v5           #sevenMailboxId:I
    .restart local v21       #sevenMailboxId:I
    :cond_b
    move/from16 v5, v21

    .end local v21           #sevenMailboxId:I
    .restart local v5       #sevenMailboxId:I
    goto/16 :goto_2
.end method

.method public doAddAccount(Landroid/os/Bundle;)I
    .locals 7
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1248
    const/4 v0, 0x0

    .line 1250
    .local v0, rValue:I
    iget-object v1, p0, Lcom/android/email/adapter/SevenAdapter;->z7service:Lcom/digc/seven/Z7MailHandler;

    const-string v2, "email"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "password"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "provider"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isp_type"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/digc/seven/Z7MailHandler;->getAccountBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/digc/seven/Z7MailHandler;->addAccount(Landroid/os/Bundle;)I

    move-result v0

    .line 1254
    return v0
.end method

.method protected doCleanupInternal()V
    .locals 2

    .prologue
    .line 969
    const-string v0, "SevenAdapter"

    const-string v1, "doCleanup() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v0, p0, Lcom/android/email/adapter/SevenAdapter;->m7listener:Lcom/seven/Z7/app/Z7CommonListener;

    invoke-virtual {v0}, Lcom/seven/Z7/app/Z7CommonListener;->unRegisterListener()V

    .line 972
    sget-object v0, Lcom/android/email/adapter/SevenAdapter;->accountFacade:Lcom/android/email/combined/AccountFacade;

    sget-object v1, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/email/combined/AccountFacade;->removeListener(Landroid/content/Context;)V

    .line 973
    sget-object v0, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/adapter/SevenAdapter;->mMySevenListener:Lcom/android/email/adapter/SevenAdapter$MySevenListener;

    invoke-static {v0, v1}, Lcom/android/email/combined/SevenUtils;->removeListener(Landroid/content/Context;Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 974
    return-void
.end method

.method public getAvailableAccounts()V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public getUserConfiguredAccounts()V
    .locals 0

    .prologue
    .line 449
    return-void
.end method

.method public getUserProfile()V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method public hasExpiredAccounts()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 939
    const-string v2, "SevenAdapter"

    const-string v3, "hasExpiredAccounts() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    invoke-virtual {p0}, Lcom/android/email/adapter/SevenAdapter;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 949
    :goto_0
    return v1

    .line 946
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/seven/Z7/app/SubscriptionStatus;->hasExpiredAccounts(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 947
    :catch_0
    move-exception v0

    .line 948
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initProtocol()V
    .locals 2

    .prologue
    .line 145
    const-string v0, "SevenAdapter"

    const-string v1, "initProtocol() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v0, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/combined/SevenUtils;->getZ7EmailService(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/adapter/SevenAdapter;->z7service:Lcom/digc/seven/Z7MailHandler;

    .line 149
    sget-object v0, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/combined/CombinedEmailManager;->getInstance(Landroid/content/Context;)Lcom/android/email/combined/CombinedEmailManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/combined/CombinedEmailManager;->getAccountFacade()Lcom/android/email/combined/AccountFacade;

    move-result-object v0

    sput-object v0, Lcom/android/email/adapter/SevenAdapter;->accountFacade:Lcom/android/email/combined/AccountFacade;

    .line 151
    sget-object v0, Lcom/android/email/adapter/SevenAdapter;->accountFacade:Lcom/android/email/combined/AccountFacade;

    invoke-virtual {v0, p0}, Lcom/android/email/combined/AccountFacade;->addListener(Lcom/android/email/combined/AccountFacade$AccountListener;)V

    .line 153
    sget-object v0, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/seven/Z7/app/Z7CommonListener;->getInstance(Landroid/content/Context;)Lcom/seven/Z7/app/Z7CommonListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/adapter/SevenAdapter;->m7listener:Lcom/seven/Z7/app/Z7CommonListener;

    .line 155
    new-instance v0, Lcom/android/email/adapter/SevenAdapter$MySevenListener;

    iget-object v1, p0, Lcom/android/email/adapter/SevenAdapter;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/email/adapter/SevenAdapter$MySevenListener;-><init>(Lcom/android/email/adapter/SevenAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/email/adapter/SevenAdapter;->mMySevenListener:Lcom/android/email/adapter/SevenAdapter$MySevenListener;

    .line 157
    sget-object v0, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/adapter/SevenAdapter;->mMySevenListener:Lcom/android/email/adapter/SevenAdapter$MySevenListener;

    invoke-static {v0, v1}, Lcom/android/email/combined/SevenUtils;->addListener(Landroid/content/Context;Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 158
    return-void
.end method

.method public isAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 162
    const-string v1, "SevenAdapter"

    const-string v2, "isAvailable() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/android/email/adapter/SevenAdapter;->isSevenEnabled()Z

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/android/email/adapter/SevenAdapter;->isCscEnabled()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSevenEnabled()Z
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, ret:Z
    sget-object v1, Lcom/android/email/adapter/SevenAdapter;->m_seven_status:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    sget-object v2, Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;->NOT_INITIALIZED:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    if-ne v1, v2, :cond_0

    .line 101
    sget-object v1, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/email/adapter/SevenAdapter;->initSevenState(Landroid/content/Context;Z)V

    .line 104
    :cond_0
    sget-object v1, Lcom/android/email/adapter/SevenAdapter;->m_seven_status:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    sget-object v2, Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;->ENABLED:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    if-ne v1, v2, :cond_1

    .line 105
    const/4 v0, 0x1

    .line 108
    :cond_1
    return v0
.end method

.method public loadAttachment(JJJI)V
    .locals 9
    .parameter "attachmentId"
    .parameter "messageId"
    .parameter "accountId"
    .parameter "addFlag"

    .prologue
    .line 276
    const-string v0, "SevenAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAttachment() is called"

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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/android/email/adapter/SevenAdapter;->z7service:Lcom/digc/seven/Z7MailHandler;

    if-eqz v0, :cond_0

    .line 279
    sget-object v0, Lcom/android/email/adapter/SevenAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    const/4 v1, 0x0

    const/16 v8, 0x12c

    move-wide v2, p5

    move-wide v4, p3

    move-wide v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    .line 284
    :goto_0
    return-void

    .line 281
    :cond_0
    sget-object v0, Lcom/android/email/adapter/SevenAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v8, 0x0

    move-wide v2, p5

    move-wide v4, p3

    move-wide v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_0
.end method

.method public loadAttachment(JJJJZZZ)V
    .locals 9
    .parameter "attachmentId"
    .parameter "messageId"
    .parameter "mailboxId"
    .parameter "accountId"
    .parameter "prune"
    .parameter "reconnect"
    .parameter "background"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/email/adapter/SevenAdapter;->z7service:Lcom/digc/seven/Z7MailHandler;

    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Lcom/android/email/adapter/SevenAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    const/4 v1, 0x0

    const/16 v8, 0x12c

    move-wide/from16 v2, p7

    move-wide v4, p3

    move-wide v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    .line 271
    :goto_0
    return-void

    .line 268
    :cond_0
    sget-object v0, Lcom/android/email/adapter/SevenAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v8, 0x0

    move-wide/from16 v2, p7

    move-wide v4, p3

    move-wide v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_0
.end method

.method public loadMessageForView(J)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 296
    return-void
.end method

.method public loadMore(J)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 302
    return-void
.end method

.method public moveMessageToSameAccount(Ljava/util/ArrayList;[JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V
    .locals 24
    .parameter
    .parameter "messageIds"
    .parameter "account"
    .parameter "accountId"
    .parameter "targetMailboxId"
    .parameter "prevMailboxId"
    .parameter "isDelete"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;[J",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            "JJJZ)V"
        }
    .end annotation

    .prologue
    .line 757
    .local p1, messageIdsToMove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v3, "SevenAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveMessageToSameAccount() is called : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p8

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    sget-object v3, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 764
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/adapter/SevenAdapter;->hasExpiredAccounts()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 765
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 766
    .local v15, id:J
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 767
    .local v11, cv:Landroid/content/ContentValues;
    const-string v3, "mailboxKey"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 768
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-wide v0, v15

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 770
    .local v21, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 773
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #id:J
    .end local v21           #uri:Landroid/net/Uri;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/adapter/SevenAdapter;->z7service:Lcom/digc/seven/Z7MailHandler;

    if-eqz v3, :cond_7

    .line 775
    const/16 v19, -0x1

    .line 777
    .local v19, sevenSourceMailboxId:I
    const/16 v20, -0x1

    .line 778
    .local v20, sourceMailType:I
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/email/adapter/SevenAdapter;->MEAILBOX_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 783
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 784
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 785
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v20

    .line 788
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 791
    const/4 v8, -0x1

    .line 793
    .local v8, sevenDestMailboxId:I
    const/4 v12, -0x1

    .line 794
    .local v12, destMailType:I
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/email/adapter/SevenAdapter;->MEAILBOX_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 799
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 800
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 801
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v12

    .line 804
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 807
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    .line 809
    .local v15, id:Ljava/lang/Long;
    const/16 v18, -0x1

    .line 810
    .local v18, sevenMessageKey:I
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/email/adapter/SevenAdapter;->MESSAGEID_TO_MAILBOXID_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 816
    .local v9, c:Landroid/database/Cursor;
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 817
    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v18

    .line 820
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 823
    const/16 v17, 0x1

    .line 826
    .local v17, result:Z
    :try_start_3
    sget-object v3, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lcom/digc/seven/SevenSyncProvider;->getSevenFolderIdFromMessageId(Landroid/content/Context;J)I

    move-result v5

    .line 828
    .local v5, remoteSevenFolderId:I
    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-lez v3, :cond_5

    if-lez v19, :cond_5

    if-lez v18, :cond_5

    if-lez v8, :cond_5

    .line 830
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/adapter/SevenAdapter;->z7service:Lcom/digc/seven/Z7MailHandler;

    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v6

    long-to-int v4, v6

    move/from16 v0, v18

    int-to-long v6, v0

    invoke-virtual/range {v3 .. v8}, Lcom/digc/seven/Z7MailHandler;->moveMail(IIJI)V

    .line 832
    const-string v3, "SevenAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[moveMessage/z7service] >>> (SevenAccountKey="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", sevenSourceMailboxId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", sevenMessageKey="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", sevenDestMailboxId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", remoteSevenFolderId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 858
    :goto_2
    if-eqz v17, :cond_3

    .line 860
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 861
    .restart local v11       #cv:Landroid/content/ContentValues;
    const-string v3, "mailboxKey"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 862
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 864
    .restart local v21       #uri:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 865
    const-string v3, "SevenAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[moveMessage] >>> (mailboxKey="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", messageKey="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 788
    .end local v5           #remoteSevenFolderId:I
    .end local v8           #sevenDestMailboxId:I
    .end local v9           #c:Landroid/database/Cursor;
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v12           #destMailType:I
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #id:Ljava/lang/Long;
    .end local v17           #result:Z
    .end local v18           #sevenMessageKey:I
    .end local v21           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3

    .line 804
    .restart local v8       #sevenDestMailboxId:I
    .restart local v12       #destMailType:I
    :catchall_1
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3

    .line 820
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v15       #id:Ljava/lang/Long;
    .restart local v18       #sevenMessageKey:I
    :catchall_2
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v3

    .line 839
    .restart local v5       #remoteSevenFolderId:I
    .restart local v17       #result:Z
    :cond_5
    :try_start_4
    const-string v3, "SevenAdapter"

    const-string v4, "[moveMessage/z7service] >>> invalid seven message data"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 841
    .end local v5           #remoteSevenFolderId:I
    :catch_0
    move-exception v13

    .line 842
    .local v13, e:Ljava/lang/Exception;
    const/16 v17, 0x0

    .line 843
    :try_start_5
    const-string v3, "SevenAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[moveMessage/z7service] >>> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 858
    if-eqz v17, :cond_3

    .line 860
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 861
    .restart local v11       #cv:Landroid/content/ContentValues;
    const-string v3, "mailboxKey"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 862
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 864
    .restart local v21       #uri:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 865
    const-string v3, "SevenAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[moveMessage] >>> (mailboxKey="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", messageKey="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 858
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v21           #uri:Landroid/net/Uri;
    :catchall_3
    move-exception v3

    if-eqz v17, :cond_6

    .line 860
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 861
    .restart local v11       #cv:Landroid/content/ContentValues;
    const-string v4, "mailboxKey"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v11, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 862
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 864
    .restart local v21       #uri:Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v11, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 865
    const-string v4, "SevenAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[moveMessage] >>> (mailboxKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", messageKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v21           #uri:Landroid/net/Uri;
    :cond_6
    throw v3

    .line 873
    .end local v8           #sevenDestMailboxId:I
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v12           #destMailType:I
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #id:Ljava/lang/Long;
    .end local v17           #result:Z
    .end local v18           #sevenMessageKey:I
    .end local v19           #sevenSourceMailboxId:I
    .end local v20           #sourceMailType:I
    :cond_7
    return-void
.end method

.method public onAccountAdded(II)V
    .locals 4
    .parameter "eMailAccountKey"
    .parameter "sevenAccountId"

    .prologue
    .line 998
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1000
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1001
    const-string v1, "account_id_seven"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1003
    const-string v1, "SevenAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAccountAdded is called : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    sget-object v1, Lcom/android/email/adapter/SevenAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v1, v0}, Lcom/android/email/Controller$Result;->setupAccountCallback(Landroid/os/Bundle;)V

    .line 1006
    return-void
.end method

.method public onAccountRemoved(I)V
    .locals 4
    .parameter "sevenAccountId"

    .prologue
    .line 990
    const-string v0, "SevenAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccountRemoved is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    sget-object v0, Lcom/android/email/adapter/SevenAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    const/4 v1, 0x0

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller$Result;->deleteAccountCallback(Landroid/os/Bundle;J)V

    .line 995
    return-void
.end method

.method public refreshIRMTemplates(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 1260
    return-void
.end method

.method public sendMessage(JJJ)V
    .locals 9
    .parameter "mailBoxId"
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    .line 321
    const-string v6, "SevenAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendMessage() is called : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v6, p0, Lcom/android/email/adapter/SevenAdapter;->z7service:Lcom/digc/seven/Z7MailHandler;

    if-eqz v6, :cond_2

    .line 325
    sget-object v6, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, p5, p6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 329
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_start_0
    sget-object v6, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    .line 331
    .local v4, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    sget-object v6, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v2

    .line 334
    .local v2, body:Lcom/android/emailcommon/provider/EmailContent$Body;
    iget-object v6, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 335
    iget-object v6, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 336
    iget-object v6, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 337
    iget-object v6, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 338
    iget-wide v6, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    iput-wide v6, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    .line 339
    iget-object v6, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 341
    iget v6, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    iget v6, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    .line 344
    :cond_0
    :try_start_1
    sget-object v6, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    iget-wide v7, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    .line 346
    .local v5, sorceMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-wide v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    iput-wide v6, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 352
    .end local v5           #sorceMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_1
    :goto_0
    :try_start_2
    sget-object v6, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v1

    .line 355
    .local v1, attachements:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    iput-wide v6, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    .line 357
    iget-object v6, p0, Lcom/android/email/adapter/SevenAdapter;->z7service:Lcom/digc/seven/Z7MailHandler;

    iget v7, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    invoke-direct {p0, v7}, Lcom/android/email/adapter/SevenAdapter;->conv_to_seven_flags(I)I

    move-result v7

    invoke-virtual {v6, v4, v1, v7}, Lcom/digc/seven/Z7MailHandler;->sendMessage(Lcom/android/emailcommon/provider/EmailContent$Message;[Lcom/android/emailcommon/provider/EmailContent$Attachment;I)I

    .line 367
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v1           #attachements:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    .end local v4           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_1
    return-void

    .line 347
    .restart local v0       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v2       #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    .restart local v4       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_0
    move-exception v3

    .line 348
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "SevenAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "message.mSevenMessageKey: Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 358
    .end local v2           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_1
    move-exception v3

    .line 359
    .local v3, e:Landroid/os/RemoteException;
    const-string v6, "SevenAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendMessage: RemoteException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 360
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v3

    .line 361
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "SevenAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendMessage: Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 364
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    const-string v6, "SevenAdapter"

    const-string v7, "sendMessage: error seven service is not available"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public sendPendingMessages(J)V
    .locals 13
    .parameter "accountId"

    .prologue
    .line 372
    iget-object v1, p0, Lcom/android/email/adapter/SevenAdapter;->z7service:Lcom/digc/seven/Z7MailHandler;

    if-eqz v1, :cond_2

    .line 374
    sget-object v1, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    .line 376
    .local v8, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    sget-object v1, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-static {v1, p1, p2, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v11

    .line 378
    .local v11, outboxId:J
    const-wide/16 v1, -0x1

    cmp-long v1, v11, v1

    if-nez v1, :cond_0

    .line 379
    const-string v1, "SevenAdapter"

    const-string v2, "sendPendingMessages: error no out box"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .end local v8           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v11           #outboxId:J
    :goto_0
    return-void

    .line 386
    .restart local v8       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v11       #outboxId:J
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/email/adapter/SevenAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    .line 388
    sget-object v1, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 389
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v3, "mailboxKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 395
    .local v9, c:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 396
    sget-object v1, Lcom/android/email/adapter/SevenAdapter;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/Controller$LegacyListener;->sendPendingMessagesCompleted(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 404
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 409
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v9           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 411
    .local v10, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/email/adapter/SevenAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const-wide/16 v5, -0x1

    const/4 v7, -0x1

    move-wide v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    .line 413
    const-string v1, "SevenAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPendingMessages: Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 406
    :goto_1
    iget-object v1, p0, Lcom/android/email/adapter/SevenAdapter;->z7service:Lcom/digc/seven/Z7MailHandler;

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/digc/seven/Z7MailHandler;->checkContentUpdates(I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 399
    :catch_1
    move-exception v10

    .line 401
    .restart local v10       #e:Ljava/lang/Exception;
    :try_start_4
    sget-object v1, Lcom/android/email/adapter/SevenAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const-wide/16 v5, -0x1

    const/4 v7, -0x1

    move-wide v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 404
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 416
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v8           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v11           #outboxId:J
    :cond_2
    const-string v1, "SevenAdapter"

    const-string v2, "sendPendingMessages: error seven service is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public serviceCheckMail(JJJLcom/android/email/Controller$Result;)V
    .locals 17
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "tag"
    .parameter "callback"

    .prologue
    .line 669
    const-string v2, "SevenAdapter"

    const-string v3, "serviceCheckMail start !!"

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v11

    .line 674
    .local v11, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_start_0
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 676
    .local v13, folderSyncMode:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/adapter/SevenAdapter;->mMySevenListener:Lcom/android/email/adapter/SevenAdapter$MySevenListener;

    move-wide/from16 v0, p1

    iput-wide v0, v2, Lcom/android/email/adapter/SevenAdapter$MySevenListener;->mAccountId:J

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/adapter/SevenAdapter;->mMySevenListener:Lcom/android/email/adapter/SevenAdapter$MySevenListener;

    move-wide/from16 v0, p3

    iput-wide v0, v2, Lcom/android/email/adapter/SevenAdapter$MySevenListener;->mMailBoxId:J

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/adapter/SevenAdapter;->mMySevenListener:Lcom/android/email/adapter/SevenAdapter$MySevenListener;

    invoke-virtual {v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/email/adapter/SevenAdapter$MySevenListener;->mRemoteAccountId:J

    .line 679
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/email/adapter/SevenAdapter;->getPremiumAccountStatus(Landroid/content/Context;I)I

    move-result v15

    .line 680
    .local v15, status:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/adapter/SevenAdapter;->mMySevenListener:Lcom/android/email/adapter/SevenAdapter$MySevenListener;

    iput v15, v2, Lcom/android/email/adapter/SevenAdapter$MySevenListener;->mAccountStatus:I

    .line 682
    const/4 v2, 0x4

    if-ne v15, v2, :cond_0

    .line 683
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v4, 0x4d

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/Controller$Result;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    .line 688
    :cond_0
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p3

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v14

    .line 690
    .local v14, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v14, :cond_3

    .line 692
    iget v2, v14, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncFlag:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    iget v2, v14, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-eqz v2, :cond_1

    iget v2, v14, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget v2, v14, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    iget v2, v14, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 697
    :cond_1
    iget-wide v2, v14, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSevenMailboxKey:J

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/adapter/SevenAdapter;->z7service:Lcom/digc/seven/Z7MailHandler;

    invoke-virtual {v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3, v13}, Lcom/digc/seven/Z7MailHandler;->updateFolderSyncModes(ILjava/util/Map;)V

    .line 701
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 702
    .local v16, updateValues:Landroid/content/ContentValues;
    const-string v2, "syncFlag"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 703
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$MailboxCB;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "mailboxKey=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 708
    const-string v2, "SevenAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateMailbox/z7service] >>> (SevenAccountKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", SevenMailboxKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v14, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSevenMailboxKey:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    .end local v16           #updateValues:Landroid/content/ContentValues;
    :cond_2
    :goto_0
    iget v2, v14, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 727
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    const/4 v3, 0x0

    const/16 v8, 0x64

    const-wide/16 v9, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/Controller$Result;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    .line 734
    :cond_3
    :goto_1
    iget v2, v14, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v2, :cond_4

    .line 735
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v4, 0x19a

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    .line 751
    .end local v13           #folderSyncMode:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v14           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v15           #status:I
    :cond_4
    :goto_2
    return-void

    .line 713
    .restart local v13       #folderSyncMode:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v14       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v15       #status:I
    :cond_5
    const/4 v2, 0x4

    if-eq v15, v2, :cond_2

    .line 718
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    const/4 v3, 0x0

    const/16 v8, 0x64

    const-wide/16 v9, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/Controller$Result;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 740
    .end local v13           #folderSyncMode:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v14           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v15           #status:I
    :catch_0
    move-exception v12

    .line 744
    .local v12, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/high16 v4, 0x5

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/16 v8, 0x64

    const-wide/16 v9, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/Controller$Result;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    .line 748
    const-string v2, "SevenAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMailbox: Exception >> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 729
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v13       #folderSyncMode:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v14       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v15       #status:I
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/adapter/SevenAdapter;->z7service:Lcom/digc/seven/Z7MailHandler;

    invoke-virtual {v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/digc/seven/Z7MailHandler;->checkContentUpdates(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setEnabled(ZZ)Z
    .locals 4
    .parameter "bEnable"
    .parameter "bForce"

    .prologue
    const/4 v3, 0x1

    .line 955
    const-string v0, "SevenAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    if-ne p1, v3, :cond_0

    .line 960
    sget-object v0, Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;->ENABLED:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    invoke-static {v0}, Lcom/android/email/adapter/SevenAdapter;->setSevenEnabled(Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;)V

    .line 965
    :goto_0
    return v3

    .line 962
    :cond_0
    sget-object v0, Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;->DISABLED:Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;

    invoke-static {v0}, Lcom/android/email/adapter/SevenAdapter;->setSevenEnabled(Lcom/android/email/adapter/SevenAdapter$SEVEN_ENABLE_STATUS;)V

    goto :goto_0
.end method

.method public setMessageBoolean([JLjava/lang/String;ZJ)V
    .locals 21
    .parameter "messageIds"
    .parameter "columnName"
    .parameter "columnValue"
    .parameter "currentAccountId"

    .prologue
    .line 878
    const-string v2, "SevenAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMessageBoolean() is called : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    move-object/from16 v9, p1

    .local v9, arr$:[J
    array-length v13, v9

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v13, :cond_4

    aget-wide v15, v9, v12

    .line 888
    .local v15, messageId:J
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    move-wide v0, v15

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v14

    .line 889
    .local v14, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v14, :cond_1

    .line 887
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 893
    :cond_1
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    iget-wide v5, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    .line 895
    .local v8, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/adapter/SevenAdapter;->z7service:Lcom/digc/seven/Z7MailHandler;

    if-eqz v2, :cond_0

    .line 898
    const/16 v17, -0x1

    .line 899
    .local v17, sevenMailboxId:I
    :try_start_0
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/email/adapter/SevenAdapter;->MEAILBOX_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v0, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 905
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 907
    .end local v17           #sevenMailboxId:I
    .local v4, sevenMailboxId:I
    :goto_2
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 910
    const-string v2, "flagRead"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/adapter/SevenAdapter;->z7service:Lcom/digc/seven/Z7MailHandler;

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v5

    long-to-int v3, v5

    iget-wide v5, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    long-to-int v5, v5

    int-to-long v5, v5

    move/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/digc/seven/Z7MailHandler;->markRead(IIJZ)V

    .line 913
    const-string v2, "SevenAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setMessageRead/z7service] >>> (SevenAccountKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", sevenMailboxId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", SevenMessageKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", isRead="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 929
    :catch_0
    move-exception v11

    .line 930
    .end local v10           #cursor:Landroid/database/Cursor;
    .local v11, e:Ljava/lang/Exception;
    :goto_3
    const-string v2, "SevenAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMessageRead: Exception"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 905
    .end local v4           #sevenMailboxId:I
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v17       #sevenMailboxId:I
    :cond_2
    const/4 v4, -0x1

    goto/16 :goto_2

    .line 907
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 929
    .end local v10           #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception v11

    move/from16 v4, v17

    .end local v17           #sevenMailboxId:I
    .restart local v4       #sevenMailboxId:I
    goto :goto_3

    .line 919
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_3
    :try_start_4
    const-string v2, "flagFavorite"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 920
    new-instance v18, Lcom/seven/Z7/common/Z7EmailId;

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v2

    long-to-int v2, v2

    iget-wide v5, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    long-to-int v3, v5

    int-to-long v5, v3

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v4, v5, v6}, Lcom/seven/Z7/common/Z7EmailId;-><init>(IIJ)V

    .line 921
    .local v18, z7messageId:Lcom/seven/Z7/common/Z7EmailId;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/adapter/SevenAdapter;->z7service:Lcom/digc/seven/Z7MailHandler;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/seven/Z7/common/Z7EmailId;

    const/4 v5, 0x0

    aput-object v18, v3, v5

    move/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Lcom/digc/seven/Z7MailHandler;->markFavorite([Lcom/seven/Z7/common/Z7EmailId;Z)V

    .line 922
    const-string v2, "SevenAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setMessageFavorite/z7service] >>> (SevenAccountKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", sevenMailboxId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", SevenMessageKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", isFavorite="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 935
    .end local v4           #sevenMailboxId:I
    .end local v8           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v14           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v15           #messageId:J
    .end local v18           #z7messageId:Lcom/seven/Z7/common/Z7EmailId;
    :cond_4
    return-void
.end method

.method public setMessageRead(JZ)V
    .locals 15
    .parameter "messageId"
    .parameter "isRead"

    .prologue
    .line 1210
    const-string v2, "SevenAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMessageRead() is called : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    .line 1213
    .local v11, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    iget-wide v5, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    .line 1217
    .local v8, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    const/4 v12, -0x1

    .line 1218
    .local v12, sevenMailboxId:I
    :try_start_0
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/email/adapter/SevenAdapter;->MEAILBOX_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v13, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1223
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 1225
    .end local v12           #sevenMailboxId:I
    .local v4, sevenMailboxId:I
    :goto_0
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1227
    iget-object v2, p0, Lcom/android/email/adapter/SevenAdapter;->z7service:Lcom/digc/seven/Z7MailHandler;

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v5

    long-to-int v3, v5

    iget-wide v5, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    long-to-int v5, v5

    int-to-long v5, v5

    move/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/digc/seven/Z7MailHandler;->markRead(IIJZ)V

    .line 1229
    const-string v2, "SevenAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setMessageRead/z7service] >>> (SevenAccountKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", sevenMailboxId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", SevenMessageKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", isRead="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1237
    .end local v9           #cursor:Landroid/database/Cursor;
    :goto_1
    return-void

    .line 1223
    .end local v4           #sevenMailboxId:I
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v12       #sevenMailboxId:I
    :cond_0
    const/4 v4, -0x1

    goto :goto_0

    .line 1225
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1234
    .end local v9           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v10

    move v4, v12

    .line 1235
    .end local v12           #sevenMailboxId:I
    .restart local v4       #sevenMailboxId:I
    .local v10, e:Ljava/lang/Exception;
    :goto_2
    const-string v2, "SevenAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMessageRead: Exception"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1234
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception v10

    goto :goto_2
.end method

.method public updateMailbox(JJZ)V
    .locals 16
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "userRequest"

    .prologue
    .line 175
    const-string v2, "SevenAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMailbox() is called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/adapter/SevenAdapter;->z7service:Lcom/digc/seven/Z7MailHandler;

    if-eqz v2, :cond_3

    .line 178
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v10

    .line 180
    .local v10, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_start_0
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 182
    .local v12, folderSyncMode:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    .line 188
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/email/adapter/SevenAdapter;->getPremiumAccountStatus(Landroid/content/Context;I)I

    move-result v14

    .line 192
    .local v14, status:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/adapter/SevenAdapter;->mMySevenListener:Lcom/android/email/adapter/SevenAdapter$MySevenListener;

    move-wide/from16 v0, p1

    iput-wide v0, v2, Lcom/android/email/adapter/SevenAdapter$MySevenListener;->mAccountId:J

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/adapter/SevenAdapter;->mMySevenListener:Lcom/android/email/adapter/SevenAdapter$MySevenListener;

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/android/email/adapter/SevenAdapter$MySevenListener;->mMailBoxId:J

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/adapter/SevenAdapter;->mMySevenListener:Lcom/android/email/adapter/SevenAdapter$MySevenListener;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/email/adapter/SevenAdapter$MySevenListener;->mAccountStatus:I

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/adapter/SevenAdapter;->mMySevenListener:Lcom/android/email/adapter/SevenAdapter$MySevenListener;

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/android/email/adapter/SevenAdapter$MySevenListener;->mRemoteAccountId:J

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/adapter/SevenAdapter;->mMySevenListener:Lcom/android/email/adapter/SevenAdapter$MySevenListener;

    invoke-virtual {v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/email/adapter/SevenAdapter$MySevenListener;->mRemoteAccountId:J

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/adapter/SevenAdapter;->mMySevenListener:Lcom/android/email/adapter/SevenAdapter$MySevenListener;

    iput v14, v2, Lcom/android/email/adapter/SevenAdapter$MySevenListener;->mAccountStatus:I

    .line 201
    const/4 v2, 0x4

    if-ne v14, v2, :cond_0

    .line 205
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v4, 0x4d

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    .line 210
    :cond_0
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p3

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v13

    .line 211
    .local v13, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v13, :cond_4

    iget v2, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncFlag:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    iget v2, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-eqz v2, :cond_1

    iget v2, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 215
    :cond_1
    iget-wide v2, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSevenMailboxKey:J

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/adapter/SevenAdapter;->z7service:Lcom/digc/seven/Z7MailHandler;

    invoke-virtual {v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3, v12}, Lcom/digc/seven/Z7MailHandler;->updateFolderSyncModes(ILjava/util/Map;)V

    .line 219
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 220
    .local v15, updateValues:Landroid/content/ContentValues;
    const-string v2, "syncFlag"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$MailboxCB;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "mailboxKey=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v15, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 227
    const-string v2, "SevenAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateMailbox/z7service] >>> (SevenAccountKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", SevenMailboxKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSevenMailboxKey:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .end local v15           #updateValues:Landroid/content/ContentValues;
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/adapter/SevenAdapter;->z7service:Lcom/digc/seven/Z7MailHandler;

    invoke-virtual {v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/digc/seven/Z7MailHandler;->checkContentUpdates(I)I

    .line 253
    .end local v10           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v12           #folderSyncMode:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v13           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v14           #status:I
    :cond_3
    :goto_1
    return-void

    .line 232
    .restart local v10       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v12       #folderSyncMode:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v13       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v14       #status:I
    :cond_4
    const/4 v2, 0x4

    if-eq v14, v2, :cond_2

    .line 236
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    const/4 v3, 0x0

    const/16 v8, 0x64

    const/4 v9, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    .end local v12           #folderSyncMode:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v13           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v14           #status:I
    :catch_0
    move-exception v11

    .line 247
    .local v11, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/email/adapter/SevenAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/high16 v4, 0x5

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/16 v8, 0x64

    const/4 v9, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    .line 250
    const-string v2, "SevenAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMailbox: Exception >> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateMailboxList(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 259
    return-void
.end method

.method public updateUserProfile(Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 0
    .parameter "profileInfo"

    .prologue
    .line 461
    return-void
.end method
