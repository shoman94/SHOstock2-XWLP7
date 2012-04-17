.class final Lcom/android/email/activity/UpgradeAccounts$8;
.super Ljava/lang/Object;
.source "UpgradeAccounts.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UpgradeAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1663
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1666
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 1670
    .local v5, bundle:Landroid/os/Bundle;
    if-nez v5, :cond_1

    .line 1728
    .end local v5           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 1674
    .restart local v5       #bundle:Landroid/os/Bundle;
    :cond_1
    invoke-static {}, Lcom/android/email/activity/UpgradeAccounts;->access$1500()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/email/Preferences;->getAccounts()[Lcom/android/email/Account;

    move-result-object v4

    .line 1676
    .local v4, backups:[Lcom/android/email/Account;
    const-string v11, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AccountBackupRestore : Added to AccountManager : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "authAccount"

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    invoke-static {}, Lcom/android/email/activity/UpgradeAccounts;->access$1500()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 1683
    .local v1, acts:[Landroid/accounts/Account;
    move-object v3, v1

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v10, v3

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v10, :cond_2

    aget-object v0, v3, v9

    .line 1684
    .local v0, act:Landroid/accounts/Account;
    const-string v11, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AccountBackupRestore : Account list in Account manager: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1692
    .end local v0           #act:Landroid/accounts/Account;
    :cond_2
    move-object v3, v4

    .local v3, arr$:[Lcom/android/email/Account;
    array-length v10, v3

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v10, :cond_0

    aget-object v2, v3, v9

    .line 1694
    .local v2, addedAccount:Lcom/android/email/Account;
    invoke-virtual {v2}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v11

    const-string v12, "authAccount"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1695
    invoke-static {}, Lcom/android/email/activity/UpgradeAccounts;->access$1500()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithEmailAddress(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    .line 1698
    .local v8, emailAcct:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v8, :cond_4

    .line 1699
    iget v11, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v11, v11, -0x11

    iput v11, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 1701
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1703
    .local v6, cv:Landroid/content/ContentValues;
    const-string v11, "_id"

    iget-wide v12, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1705
    const-string v11, "flags"

    iget v12, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1708
    invoke-static {}, Lcom/android/email/activity/UpgradeAccounts;->access$1500()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v8, v11, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1692
    .end local v6           #cv:Landroid/content/ContentValues;
    .end local v8           #emailAcct:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1712
    .restart local v8       #emailAcct:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_4
    const-string v11, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AccountBackupRestore:AccountManagerCallback() failed to find account in DB: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_3

    .line 1720
    .end local v1           #acts:[Landroid/accounts/Account;
    .end local v2           #addedAccount:Lcom/android/email/Account;
    .end local v3           #arr$:[Lcom/android/email/Account;
    .end local v4           #backups:[Lcom/android/email/Account;
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v8           #emailAcct:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v9           #i$:I
    .end local v10           #len$:I
    :catch_0
    move-exception v7

    .line 1721
    .local v7, e:Landroid/accounts/OperationCanceledException;
    invoke-virtual {v7}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto/16 :goto_0

    .line 1722
    .end local v7           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v7

    .line 1723
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1724
    .end local v7           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 1725
    .local v7, e:Landroid/accounts/AuthenticatorException;
    invoke-virtual {v7}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    goto/16 :goto_0
.end method
