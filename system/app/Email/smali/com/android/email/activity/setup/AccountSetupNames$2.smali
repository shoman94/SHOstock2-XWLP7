.class Lcom/android/email/activity/setup/AccountSetupNames$2;
.super Ljava/lang/Object;
.source "AccountSetupNames.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupNames;->finishActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupNames;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupNames;)V
    .locals 0
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupNames$2;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 426
    const/4 v7, 0x0

    .line 427
    .local v7, sncProfileUpdated:Z
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames$2;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-static {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccounts(Landroid/content/Context;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 428
    .local v1, accounts:[Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v1, :cond_0

    .line 429
    move-object v2, v1

    .local v2, arr$:[Lcom/android/emailcommon/provider/EmailContent$Account;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 430
    .local v0, a:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v8, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    const-string v9, "SNC_PROFILE_BACKEDUP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 432
    const/4 v7, 0x1

    .line 433
    const-string v8, "AccountSetupNames"

    const-string v9, "Already EXchange profile backed up in SNC Server"

    invoke-static {v8, v9}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    .end local v0           #a:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v2           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    if-nez v7, :cond_1

    .line 439
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames$2;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-static {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreUnifiedAccount(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 441
    const-string v8, "AccountSetupNames"

    const-string v9, "Unified account is already created"

    invoke-static {v8, v9}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames$2;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    #calls: Lcom/android/email/activity/setup/AccountSetupNames;->updateExchangeProfile()V
    invoke-static {v8}, Lcom/android/email/activity/setup/AccountSetupNames;->access$100(Lcom/android/email/activity/setup/AccountSetupNames;)V

    .line 452
    :cond_1
    :goto_1
    return-void

    .line 429
    .restart local v0       #a:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v2       #arr$:[Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 444
    .end local v0           #a:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v2           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_3
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    .line 445
    .local v6, mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    const-string v8, "AccountSetupNames"

    const-string v9, "Exchange Profile will be backed up later"

    invoke-static {v8, v9}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v8, "SNC_PROFILE_TOBE_BACKEDUP"

    iput-object v8, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 447
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 448
    .local v3, cv:Landroid/content/ContentValues;
    const-string v8, "compatibilityUuid"

    iget-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames$2;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-virtual {v6, v8, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto :goto_1
.end method
