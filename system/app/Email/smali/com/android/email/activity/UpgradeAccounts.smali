.class public Lcom/android/email/activity/UpgradeAccounts;
.super Landroid/app/ListActivity;
.source "UpgradeAccounts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/UpgradeAccounts$FolderConversion;,
        Lcom/android/email/activity/UpgradeAccounts$ConversionTask;,
        Lcom/android/email/activity/UpgradeAccounts$UIHandler;,
        Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;,
        Lcom/android/email/activity/UpgradeAccounts$ViewHolder;,
        Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    }
.end annotation


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

.field private static sCheckSettingRunning:Z

.field private static sConversionHasRun:Z

.field private static final sConversionInProgress:Ljava/lang/Object;

.field private static sNoCredentialsError:Z


# instance fields
.field private account_eas:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

.field private account_eas_num:I

.field private mAdapter:Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;

.field public mContext:Landroid/content/Context;

.field private mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

.field private mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;

.field private mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

.field private mListView:Landroid/widget/ListView;

.field private mProceedButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/email/activity/UpgradeAccounts;->sConversionInProgress:Ljava/lang/Object;

    .line 133
    sput-boolean v1, Lcom/android/email/activity/UpgradeAccounts;->sConversionHasRun:Z

    .line 134
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/UpgradeAccounts;->sNoCredentialsError:Z

    .line 135
    sput-boolean v1, Lcom/android/email/activity/UpgradeAccounts;->sCheckSettingRunning:Z

    .line 1663
    new-instance v0, Lcom/android/email/activity/UpgradeAccounts$8;

    invoke-direct {v0}, Lcom/android/email/activity/UpgradeAccounts$8;-><init>()V

    sput-object v0, Lcom/android/email/activity/UpgradeAccounts;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 116
    new-instance v0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;-><init>(Lcom/android/email/activity/UpgradeAccounts;)V

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    .line 1256
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$ConversionTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/android/email/activity/UpgradeAccounts;->sConversionHasRun:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    sput-boolean p0, Lcom/android/email/activity/UpgradeAccounts;->sConversionHasRun:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/email/activity/UpgradeAccounts;Lcom/android/email/activity/UpgradeAccounts$ConversionTask;)Lcom/android/email/activity/UpgradeAccounts$ConversionTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    return-object p1
.end method

.method static synthetic access$1100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/email/activity/UpgradeAccounts;->sConversionInProgress:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/android/email/activity/UpgradeAccounts;->sNoCredentialsError:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    sput-boolean p0, Lcom/android/email/activity/UpgradeAccounts;->sNoCredentialsError:Z

    return p0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    sput-boolean p0, Lcom/android/email/activity/UpgradeAccounts;->sCheckSettingRunning:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/UpgradeAccounts;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/email/activity/UpgradeAccounts;->onClickOk()V

    return-void
.end method

.method static synthetic access$1500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/email/activity/UpgradeAccounts;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->account_eas:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/UpgradeAccounts;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/email/activity/UpgradeAccounts;->account_eas_num:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mProceedButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/UpgradeAccounts;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/email/activity/UpgradeAccounts;->fetchCredentialsDialog(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/activity/UpgradeAccounts;ZLandroid/widget/EditText;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/UpgradeAccounts;->showHidePassword(ZLandroid/widget/EditText;)V

    return-void
.end method

.method public static actionStart(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/UpgradeAccounts;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 150
    return-void
.end method

.method private static bulkUpgradesRequired(Landroid/content/Context;Lcom/android/email/Preferences;)Z
    .locals 4
    .parameter "context"
    .parameter "preferences"

    .prologue
    const/4 v2, 0x0

    .line 1641
    invoke-virtual {p1}, Lcom/android/email/Preferences;->getAccounts()[Lcom/android/email/Account;

    move-result-object v1

    .line 1642
    .local v1, legacyAccounts:[Lcom/android/email/Account;
    array-length v3, v1

    if-nez v3, :cond_1

    .line 1660
    :cond_0
    :goto_0
    return v2

    .line 1655
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1656
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/android/email/Account;->getBackupFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    .line 1657
    const/4 v2, 0x1

    goto :goto_0

    .line 1655
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static copyAccount(Landroid/content/Context;Lcom/android/email/Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;)V
    .locals 8
    .parameter "context"
    .parameter "account"
    .parameter "accountNum"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 1273
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "compatibilityUuid=?"

    new-array v5, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/email/Account;->getUuid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {p0, v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1277
    .local v7, existCount:I
    if-lez v7, :cond_1

    .line 1278
    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No conversion, account exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/email/Account;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    if-eqz p3, :cond_0

    .line 1280
    const v0, 0x7f08014c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 1345
    :cond_0
    :goto_0
    return-void

    .line 1285
    :cond_1
    invoke-static {p0, p1}, Lcom/android/email/LegacyConversions;->makeAccount(Landroid/content/Context;Lcom/android/email/Account;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 1287
    .local v1, newAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget v3, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 1288
    invoke-virtual {v1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 1289
    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncCalendar()I

    move-result v3

    if-ne v3, v2, :cond_2

    move v3, v2

    :goto_1
    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncContact()I

    move-result v4

    if-ne v4, v2, :cond_3

    move v4, v2

    :goto_2
    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncContact()I

    move-result v5

    if-ne v5, v2, :cond_4

    move v5, v2

    :goto_3
    sget-object v6, Lcom/android/email/activity/UpgradeAccounts;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/MailService;->setupAccountManagerAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;ZZZZLandroid/accounts/AccountManagerCallback;)V

    .line 1293
    if-eqz p3, :cond_0

    .line 1294
    invoke-virtual {p3, p2}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->incProgress(I)V

    goto :goto_0

    :cond_2
    move v3, v0

    .line 1289
    goto :goto_1

    :cond_3
    move v4, v0

    goto :goto_2

    :cond_4
    move v5, v0

    goto :goto_3
.end method

.method static copyAccountForUpdate(Landroid/content/Context;Lcom/android/email/Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;Ljava/lang/String;)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1365
    const/4 v0, 0x0

    .line 1367
    const-wide/16 v1, -0x1

    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-virtual {p1}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v7, v0

    .line 1371
    :goto_0
    if-nez v7, :cond_0

    .line 1372
    const/4 v0, 0x0

    .line 1441
    :goto_1
    return v0

    .line 1369
    :catch_0
    move-exception v1

    move-object v7, v0

    goto :goto_0

    .line 1375
    :cond_0
    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1377
    invoke-virtual {p1}, Lcom/android/email/Account;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 1379
    invoke-virtual {p1}, Lcom/android/email/Account;->getSyncWindow()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 1380
    invoke-virtual {p1}, Lcom/android/email/Account;->getAutomaticCheckIntervalMinutes()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 1381
    const/4 v0, 0x0

    .line 1382
    invoke-virtual {p1}, Lcom/android/email/Account;->isNotifyNewMail()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1383
    const/4 v0, 0x1

    .line 1384
    :cond_1
    invoke-virtual {p1}, Lcom/android/email/Account;->isVibrate()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1385
    or-int/lit8 v0, v0, 0x2

    .line 1388
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/android/email/Account;->isAddSignature()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1389
    or-int/lit16 v0, v0, 0x2000

    .line 1390
    :cond_3
    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setFlags(I)V

    .line 1391
    invoke-virtual {p1}, Lcom/android/email/Account;->getDeletePolicy()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 1392
    invoke-virtual {p1}, Lcom/android/email/Account;->getDefault()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    .line 1393
    invoke-virtual {p1}, Lcom/android/email/Account;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {p1}, Lcom/android/email/Account;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 1395
    invoke-virtual {p1}, Lcom/android/email/Account;->getSyncScheduleData()Ljava/lang/String;

    move-result-object v0

    .line 1396
    if-eqz v0, :cond_4

    .line 1397
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1398
    new-instance v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/4 v1, 0x0

    aget-object v1, v6, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v6, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    aget-object v3, v6, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    aget-object v5, v6, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v9, 0x5

    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    .line 1402
    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    .line 1405
    :cond_4
    :try_start_1
    invoke-virtual {v7, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 1406
    invoke-virtual {p1}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1412
    :goto_3
    :try_start_2
    invoke-virtual {v7, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 1413
    invoke-virtual {p1}, Lcom/android/email/Account;->getSenderUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1418
    :goto_4
    invoke-virtual {p1}, Lcom/android/email/Account;->getEmailSize()B

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailSize(B)V

    .line 1419
    invoke-virtual {p1}, Lcom/android/email/Account;->getSyncLookbackData()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 1420
    invoke-virtual {p1}, Lcom/android/email/Account;->getCalendarSyncLookbackData()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    .line 1421
    new-instance v1, Landroid/accounts/Account;

    iget-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-direct {v1, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    const-string v0, "com.android.contacts"

    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncContact()I

    move-result v2

    invoke-static {v1, v0, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1426
    const-string v2, "com.android.contacts"

    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncContact()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    const/4 v0, 0x1

    :goto_5
    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 1429
    const-string v0, "com.android.calendar"

    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncCalendar()I

    move-result v2

    invoke-static {v1, v0, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1431
    const-string v2, "com.android.calendar"

    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncCalendar()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    const/4 v0, 0x1

    :goto_6
    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 1433
    iget v0, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 1434
    iget-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 1435
    const-string v1, "accountKey"

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1436
    iget-object v1, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v1, p0, v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1437
    iget-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 1438
    const-string v1, "accountKey"

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1439
    iget-object v1, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v1, p0, v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1440
    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v7, p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1441
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1386
    :cond_5
    invoke-virtual {p1}, Lcom/android/email/Account;->isVibrateWhenSilent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1387
    or-int/lit8 v0, v0, 0x40

    goto/16 :goto_2

    .line 1407
    :catch_1
    move-exception v0

    .line 1408
    new-instance v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v1, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 1409
    const-string v1, "Email"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1414
    :catch_2
    move-exception v0

    .line 1415
    new-instance v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v1, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 1416
    const-string v1, "Email"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1426
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 1431
    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static deleteAccountStore(Landroid/content/Context;Lcom/android/email/Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;)V
    .locals 5
    .parameter "context"
    .parameter "account"
    .parameter "accountNum"
    .parameter "handler"

    .prologue
    .line 1546
    :try_start_0
    invoke-virtual {p1}, Lcom/android/email/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Lcom/android/email/mail/store/LocalStore;->newInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/store/LocalStore;

    move-result-object v1

    .line 1547
    .local v1, store:Lcom/android/email/mail/Store;
    invoke-virtual {v1}, Lcom/android/email/mail/store/LocalStore;->delete()V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1555
    .end local v1           #store:Lcom/android/email/mail/Store;
    :cond_0
    :goto_0
    return-void

    .line 1549
    :catch_0
    move-exception v0

    .line 1550
    .local v0, e:Lcom/android/emailcommon/mail/MessagingException;
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while deleting account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    if-eqz p3, :cond_0

    .line 1552
    const v2, 0x7f08014c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    goto :goto_0
.end method

.method static doBulkUpgradeIfNecessary(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 1614
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/email/activity/UpgradeAccounts;->bulkUpgradesRequired(Landroid/content/Context;Lcom/android/email/Preferences;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1615
    sget-boolean v1, Lcom/android/email/activity/UpgradeAccounts;->sConversionHasRun:Z

    if-eq v1, v0, :cond_0

    .line 1616
    invoke-static {p0}, Lcom/android/email/activity/UpgradeAccounts;->actionStart(Landroid/content/Context;)V

    .line 1619
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static estimateWork(Landroid/content/Context;Lcom/android/email/Account;)I
    .locals 10
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v6, -0x1

    .line 1200
    const/4 v1, 0x1

    .line 1202
    .local v1, estimate:I
    :try_start_0
    invoke-virtual {p1}, Lcom/android/email/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, p0, v8}, Lcom/android/email/mail/store/LocalStore;->newInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/store/LocalStore;

    move-result-object v5

    .line 1203
    .local v5, store:Lcom/android/email/mail/store/LocalStore;
    invoke-virtual {v5}, Lcom/android/email/mail/store/LocalStore;->getAllFolders()[Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    .line 1204
    .local v3, folders:[Lcom/android/emailcommon/mail/Folder;
    array-length v7, v3

    add-int/2addr v1, v7

    .line 1205
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v7, v3

    if-ge v4, v7, :cond_0

    .line 1206
    aget-object v2, v3, v4

    .line 1207
    .local v2, folder:Lcom/android/emailcommon/mail/Folder;
    sget-object v7, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_ONLY:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 1208
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getMessageCount()I

    move-result v7

    add-int/2addr v1, v7

    .line 1209
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 1205
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1211
    .end local v2           #folder:Lcom/android/emailcommon/mail/Folder;
    :cond_0
    invoke-virtual {v5}, Lcom/android/email/mail/store/LocalStore;->getStoredAttachmentCount()I

    move-result v7

    add-int/2addr v1, v7

    .line 1212
    invoke-virtual {v5}, Lcom/android/email/mail/store/LocalStore;->close()V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move v6, v1

    .line 1220
    .end local v3           #folders:[Lcom/android/emailcommon/mail/Folder;
    .end local v4           #i:I
    .end local v5           #store:Lcom/android/email/mail/store/LocalStore;
    :goto_1
    return v6

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    .local v0, e:Lcom/android/emailcommon/mail/MessagingException;
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while estimating account size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1216
    .end local v0           #e:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v0

    .line 1217
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while estimating account size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private fetchCredentialsDialog(I)V
    .locals 9
    .parameter "i"

    .prologue
    .line 616
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 617
    .local v3, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f04002d

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 618
    .local v0, creadentialView:Landroid/view/View;
    const v6, 0x7f10003d

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 619
    .local v2, emailEdit:Landroid/widget/EditText;
    const v6, 0x7f10001c

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 621
    .local v5, passwordEdit:Landroid/widget/EditText;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v7}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 622
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v7}, Lcom/android/email/Account;->getPasswd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 623
    const v6, 0x7f100048

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 624
    .local v4, mShowPassword:Landroid/widget/CheckBox;
    new-instance v6, Lcom/android/email/activity/UpgradeAccounts$4;

    invoke-direct {v6, p0, v4, v5}, Lcom/android/email/activity/UpgradeAccounts$4;-><init>(Lcom/android/email/activity/UpgradeAccounts;Landroid/widget/CheckBox;Landroid/widget/EditText;)V

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts;->mProceedButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 631
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080042

    new-instance v8, Lcom/android/email/activity/UpgradeAccounts$7;

    invoke-direct {v8, p0, v0, p1}, Lcom/android/email/activity/UpgradeAccounts$7;-><init>(Lcom/android/email/activity/UpgradeAccounts;Landroid/view/View;I)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080043

    new-instance v8, Lcom/android/email/activity/UpgradeAccounts$6;

    invoke-direct {v8, p0, p1}, Lcom/android/email/activity/UpgradeAccounts$6;-><init>(Lcom/android/email/activity/UpgradeAccounts;I)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/email/activity/UpgradeAccounts$5;

    invoke-direct {v7, p0, p1}, Lcom/android/email/activity/UpgradeAccounts$5;-><init>(Lcom/android/email/activity/UpgradeAccounts;I)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 672
    .local v1, credentialDialog:Landroid/app/Dialog;
    const v6, 0x7f0800cd

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setTitle(I)V

    .line 673
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 674
    return-void
.end method

.method private loadAccountFromPreference()V
    .locals 8

    .prologue
    .line 380
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    .line 397
    .local v3, p:Lcom/android/email/Preferences;
    invoke-virtual {v3}, Lcom/android/email/Preferences;->getAccounts()[Lcom/android/email/Account;

    move-result-object v2

    .line 399
    .local v2, legacyAccounts:[Lcom/android/email/Account;
    const/4 v0, 0x0

    .line 401
    .local v0, UpgradeAccountCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_1

    .line 402
    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/android/email/Account;->getBackupFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 403
    add-int/lit8 v0, v0, 0x1

    .line 401
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    :cond_1
    new-array v4, v0, [Lcom/android/email/Account;

    .line 407
    .local v4, tempAccounts:[Lcom/android/email/Account;
    const/4 v0, 0x0

    .line 408
    const/4 v1, 0x0

    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_3

    .line 409
    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/android/email/Account;->getBackupFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    .line 410
    aget-object v5, v2, v1

    aput-object v5, v4, v0

    .line 411
    add-int/lit8 v0, v0, 0x1

    .line 408
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 415
    :cond_3
    array-length v5, v4

    if-nez v5, :cond_4

    .line 416
    invoke-virtual {p0}, Lcom/android/email/activity/UpgradeAccounts;->finish()V

    .line 425
    :goto_2
    return-void

    .line 420
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/email/activity/UpgradeAccounts;->loadAccountInfoArray([Lcom/android/email/Account;)V

    .line 422
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*** Preparing to upgrade "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " accounts"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private loadAccountInfoArray([Lcom/android/email/Account;)V
    .locals 3
    .parameter "legacyAccounts"

    .prologue
    .line 372
    array-length v2, p1

    new-array v2, v2, [Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iput-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    .line 373
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 374
    new-instance v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, p1, v1

    invoke-direct {v0, v2}, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;-><init>(Lcom/android/email/Account;)V

    .line 375
    .local v0, ai:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aput-object v0, v2, v1

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    .end local v0           #ai:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    :cond_0
    return-void
.end method

.method private onClickOk()V
    .locals 0

    .prologue
    .line 342
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 343
    invoke-virtual {p0}, Lcom/android/email/activity/UpgradeAccounts;->finish()V

    .line 344
    return-void
.end method

.method private showHidePassword(ZLandroid/widget/EditText;)V
    .locals 2
    .parameter "show"
    .parameter "passwordEdit"

    .prologue
    .line 602
    if-eqz p1, :cond_0

    .line 603
    const/16 v1, 0x91

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 610
    :goto_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, password:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 612
    invoke-virtual {p2}, Landroid/widget/EditText;->invalidate()V

    .line 613
    return-void

    .line 607
    .end local v0           #password:Ljava/lang/String;
    :cond_0
    const/16 v1, 0x81

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method private updateList()V
    .locals 2

    .prologue
    .line 347
    new-instance v0, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;

    invoke-direct {v0, p0}, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;-><init>(Lcom/android/email/activity/UpgradeAccounts;)V

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mAdapter:Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;

    .line 348
    invoke-virtual {p0}, Lcom/android/email/activity/UpgradeAccounts;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts;->mAdapter:Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 349
    return-void
.end method


# virtual methods
.method public createAcounts(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;I)Z
    .locals 36
    .parameter "accountInfo"
    .parameter "accountNum"

    .prologue
    .line 684
    const/16 v28, 0x0

    .line 686
    .local v28, send_uri:Ljava/net/URI;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v24

    .line 687
    .local v24, email:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getPasswd()Ljava/lang/String;

    move-result-object v35

    .line 688
    .local v35, user_passwd:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getDescription()Ljava/lang/String;

    move-result-object v33

    .line 689
    .local v33, user_domain:Ljava/lang/String;
    const/16 v30, 0x0

    .line 690
    .local v30, server_name:Ljava/lang/String;
    const/16 v34, 0x0

    .line 691
    .local v34, user_name:Ljava/lang/String;
    const/16 v22, 0x0

    .line 694
    .local v22, account_name:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 695
    if-eqz v24, :cond_1

    .line 696
    const-string v3, "@"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 697
    .local v25, emailParts:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v25, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v34

    .line 698
    if-nez v30, :cond_0

    const/4 v3, 0x1

    aget-object v3, v25, v3

    if-eqz v3, :cond_0

    .line 699
    const/4 v3, 0x1

    aget-object v3, v25, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    .line 700
    :cond_0
    if-nez v22, :cond_1

    if-eqz v30, :cond_1

    .line 701
    move-object/from16 v22, v30

    .line 704
    .end local v25           #emailParts:[Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getUpdateAccount()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getUpdateAccount()Ljava/lang/String;

    move-result-object v3

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts;->mContext:Landroid/content/Context;

    const-wide/16 v4, -0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-static {v3, v4, v5, v0, v1}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/UpgradeAccounts;->mContext:Landroid/content/Context;

    const v5, 0x7f0800ce

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v3, v0, v4}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 708
    const/4 v3, 0x0

    move-object/from16 v14, v28

    .line 768
    .end local v28           #send_uri:Ljava/net/URI;
    .local v14, send_uri:Ljava/net/URI;
    :goto_0
    return v3

    .line 712
    .end local v14           #send_uri:Ljava/net/URI;
    .restart local v28       #send_uri:Ljava/net/URI;
    :cond_2
    const/16 v32, 0x0

    .line 713
    .local v32, userInfo:Ljava/lang/String;
    const/4 v8, 0x0

    .line 714
    .local v8, alias:Ljava/lang/String;
    :try_start_0
    new-instance v31, Ljava/net/URI;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 715
    .local v31, tempUri:Ljava/net/URI;
    invoke-virtual/range {v31 .. v31}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v27

    .line 716
    .local v27, scheme:Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v8

    .line 718
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v3

    const-string v4, "eas"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 720
    invoke-virtual/range {v31 .. v31}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 721
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 726
    :goto_1
    new-instance v2, Ljava/net/URI;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, uri:Ljava/net/URI;
    move-object/from16 v14, v28

    .line 753
    .end local v28           #send_uri:Ljava/net/URI;
    .restart local v14       #send_uri:Ljava/net/URI;
    :goto_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v3

    const-string v4, "eas"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 754
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/email/Account;->setSenderUri(Ljava/lang/String;)V

    .line 755
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/android/email/Account;->setDescription(Ljava/lang/String;)V

    .line 756
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Lcom/android/email/Account;->setName(Ljava/lang/String;)V

    .line 763
    :goto_3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V

    .line 764
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Lcom/android/email/Account;->setPasswd(Ljava/lang/String;)V

    .line 765
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    .line 766
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/email/Account;->save(Lcom/android/email/Preferences;)V

    .line 767
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 768
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 723
    .end local v2           #uri:Ljava/net/URI;
    .end local v14           #send_uri:Ljava/net/URI;
    .restart local v28       #send_uri:Ljava/net/URI;
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_1

    .line 730
    :cond_4
    new-instance v2, Ljava/net/URI;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 731
    .restart local v2       #uri:Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v13

    .line 732
    .local v13, revport:I
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v26

    .line 734
    .local v26, revadd:Ljava/lang/String;
    new-instance v2, Ljava/net/URI;

    .end local v2           #uri:Ljava/net/URI;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    .restart local v2       #uri:Ljava/net/URI;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getSendPort()I

    move-result v18

    .line 740
    .local v18, sendport:I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getSendAddr()Ljava/lang/String;

    move-result-object v29

    .line 741
    .local v29, sendadd:Ljava/lang/String;
    new-instance v3, Ljava/net/URI;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v4}, Lcom/android/email/Account;->getSenderUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v27

    .line 743
    new-instance v14, Ljava/net/URI;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v14 .. v21}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v28           #send_uri:Ljava/net/URI;
    .restart local v14       #send_uri:Ljava/net/URI;
    goto/16 :goto_2

    .line 748
    .end local v2           #uri:Ljava/net/URI;
    .end local v13           #revport:I
    .end local v14           #send_uri:Ljava/net/URI;
    .end local v18           #sendport:I
    .end local v26           #revadd:Ljava/lang/String;
    .end local v27           #scheme:Ljava/lang/String;
    .end local v29           #sendadd:Ljava/lang/String;
    .end local v31           #tempUri:Ljava/net/URI;
    .restart local v28       #send_uri:Ljava/net/URI;
    :catch_0
    move-exception v23

    .line 749
    .local v23, e:Ljava/net/URISyntaxException;
    invoke-virtual/range {v23 .. v23}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 750
    const/4 v3, 0x0

    move-object/from16 v14, v28

    .end local v28           #send_uri:Ljava/net/URI;
    .restart local v14       #send_uri:Ljava/net/URI;
    goto/16 :goto_0

    .line 758
    .end local v23           #e:Ljava/net/URISyntaxException;
    .restart local v2       #uri:Ljava/net/URI;
    .restart local v27       #scheme:Ljava/lang/String;
    .restart local v31       #tempUri:Ljava/net/URI;
    :cond_5
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v14}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/email/Account;->setSenderUri(Ljava/lang/String;)V

    .line 759
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/email/Account;->setDescription(Ljava/lang/String;)V

    .line 760
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Lcom/android/email/Account;->setName(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public deletePreference(I)V
    .locals 5
    .parameter "i"

    .prologue
    .line 1184
    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    iget-object v3, p0, Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    invoke-static {p0, v2, p1, v3}, Lcom/android/email/activity/UpgradeAccounts;->deleteAccountStore(Landroid/content/Context;Lcom/android/email/Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;)V

    .line 1185
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    .line 1186
    .local v1, mPreferences:Lcom/android/email/Preferences;
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v2, v1}, Lcom/android/email/Account;->delete(Lcom/android/email/Preferences;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    .end local v1           #mPreferences:Lcom/android/email/Preferences;
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    const v3, 0x7fffffff

    invoke-virtual {v2, p1, v3}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->setProgress(II)V

    .line 1191
    return-void

    .line 1187
    :catch_0
    move-exception v0

    .line 1188
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while deleting account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 326
    sget-boolean v0, Lcom/android/email/activity/UpgradeAccounts;->sCheckSettingRunning:Z

    if-nez v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/android/email/activity/UpgradeAccounts;->finish()V

    .line 329
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 339
    :goto_0
    return-void

    .line 334
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/UpgradeAccounts;->onClickOk()V

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x7f100279
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/email/activity/UpgradeAccounts;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mContext:Landroid/content/Context;

    .line 158
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/android/email/activity/UpgradeAccounts;->ctx:Landroid/content/Context;

    .line 159
    const v0, 0x7f0400a0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/UpgradeAccounts;->setContentView(I)V

    .line 160
    invoke-virtual {p0}, Lcom/android/email/activity/UpgradeAccounts;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mListView:Landroid/widget/ListView;

    .line 161
    const v0, 0x7f100279

    invoke-virtual {p0, v0}, Lcom/android/email/activity/UpgradeAccounts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mProceedButton:Landroid/widget/Button;

    .line 162
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 264
    const/4 v6, 0x3

    if-ne p1, v6, :cond_0

    .line 265
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 266
    .local v2, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f040056

    invoke-virtual {v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 278
    .local v4, textEntryView:Landroid/view/View;
    const v5, 0x7f100134

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 280
    .local v1, checkboxImei:Landroid/widget/CheckBox;
    const-string v0, "AndroidMail.Main"

    .line 281
    .local v0, PREFERENCES_FILE:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5}, Lcom/android/email/activity/UpgradeAccounts;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 283
    .local v3, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080042

    new-instance v7, Lcom/android/email/activity/UpgradeAccounts$3;

    invoke-direct {v7, p0, v3, v1}, Lcom/android/email/activity/UpgradeAccounts$3;-><init>(Lcom/android/email/activity/UpgradeAccounts;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080043

    new-instance v7, Lcom/android/email/activity/UpgradeAccounts$2;

    invoke-direct {v7, p0}, Lcom/android/email/activity/UpgradeAccounts$2;-><init>(Lcom/android/email/activity/UpgradeAccounts;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/email/activity/UpgradeAccounts$1;

    invoke-direct {v6, p0}, Lcom/android/email/activity/UpgradeAccounts$1;-><init>(Lcom/android/email/activity/UpgradeAccounts;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 317
    .end local v0           #PREFERENCES_FILE:Ljava/lang/String;
    .end local v1           #checkboxImei:Landroid/widget/CheckBox;
    .end local v2           #factory:Landroid/view/LayoutInflater;
    .end local v3           #mSharedPreferences:Landroid/content/SharedPreferences;
    .end local v4           #textEntryView:Landroid/view/View;
    :cond_0
    return-object v5
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 244
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->cancelTask(Landroid/os/AsyncTask;Z)V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    .line 247
    return-void
.end method

.method public onGetLicenseKey(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;I)V
    .locals 5
    .parameter "acc"
    .parameter "num"

    .prologue
    .line 251
    const-string v0, "AndroidMail.Main"

    .line 252
    .local v0, PREFERENCES_FILE:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/email/activity/UpgradeAccounts;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 254
    .local v2, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v3, "isCheckIMEI"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 255
    .local v1, checkIMEI:Z
    if-eqz v1, :cond_0

    .line 256
    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts;->account_eas:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    .line 257
    iput p2, p0, Lcom/android/email/activity/UpgradeAccounts;->account_eas_num:I

    .line 258
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/email/activity/UpgradeAccounts;->showDialog(I)V

    .line 260
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 232
    sget-boolean v0, Lcom/android/email/activity/UpgradeAccounts;->sConversionHasRun:Z

    if-nez v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/android/email/activity/UpgradeAccounts;->loadAccountFromPreference()V

    .line 235
    invoke-direct {p0}, Lcom/android/email/activity/UpgradeAccounts;->updateList()V

    .line 236
    invoke-virtual {p0}, Lcom/android/email/activity/UpgradeAccounts;->startConversion()V

    .line 238
    :cond_0
    return-void
.end method

.method public startConversion()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 167
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v2}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 169
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v2}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v2

    const-string v3, "eas"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 170
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v2}, Lcom/android/email/Account;->getUpdateAccount()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v2}, Lcom/android/email/Account;->getUpdateAccount()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    const-string v2, "UpgradeAccounts"

    const-string v3, "This is upgrade account"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2, v1}, Lcom/android/email/activity/UpgradeAccounts;->onGetLicenseKey(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;I)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 226
    return-void

    .line 177
    :cond_1
    :try_start_1
    const-string v2, "UpgradeAccounts"

    const-string v3, "This is create account"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mContext:Landroid/content/Context;

    const-wide/16 v3, -0x1

    new-instance v5, Ljava/net/URI;

    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v6}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v6}, Lcom/android/email/Account;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 181
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    iget-object v3, p0, Lcom/android/email/activity/UpgradeAccounts;->mContext:Landroid/content/Context;

    const v4, 0x7f0800ce

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 183
    const-string v2, "UpgradeAccounts"

    const-string v3, "There are same accounts in Database____"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0, v1}, Lcom/android/email/activity/UpgradeAccounts;->deletePreference(I)V

    .line 185
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V

    .line 167
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 187
    :cond_3
    const-string v2, "UpgradeAccounts"

    const-string v3, "There is no an account____"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2, v1}, Lcom/android/email/activity/UpgradeAccounts;->onGetLicenseKey(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;I)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    .line 192
    .end local v0           #e:Ljava/net/URISyntaxException;
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v2}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v2

    const-string v3, "imap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v2}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pop3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    :cond_5
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v2}, Lcom/android/email/Account;->getUpdateAccount()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v2}, Lcom/android/email/Account;->getUpdateAccount()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 199
    const-string v2, "Email"

    const-string v3, "This is upgrade account"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v2, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    iget-object v3, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3, v1}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;-><init>(Lcom/android/email/activity/UpgradeAccounts;Lcom/android/email/activity/UpgradeAccounts$AccountInfo;I)V

    iput-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    .line 201
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 204
    :cond_6
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mContext:Landroid/content/Context;

    const-wide/16 v3, -0x1

    new-instance v5, Ljava/net/URI;

    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v6}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v6}, Lcom/android/email/Account;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 207
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    iget-object v3, p0, Lcom/android/email/activity/UpgradeAccounts;->mContext:Landroid/content/Context;

    const v4, 0x7f0800ce

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 209
    const-string v2, "Email"

    const-string v3, "There are same accounts in Database____"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0, v1}, Lcom/android/email/activity/UpgradeAccounts;->deletePreference(I)V

    .line 211
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 213
    :cond_7
    const-string v2, "Email"

    const-string v3, "There is no an account____"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v2, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    iget-object v3, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3, v1}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;-><init>(Lcom/android/email/activity/UpgradeAccounts;Lcom/android/email/activity/UpgradeAccounts$AccountInfo;I)V

    iput-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    .line 215
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method
