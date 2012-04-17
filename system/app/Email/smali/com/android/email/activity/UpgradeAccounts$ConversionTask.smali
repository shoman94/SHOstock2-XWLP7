.class Lcom/android/email/activity/UpgradeAccounts$ConversionTask;
.super Landroid/os/AsyncTask;
.source "UpgradeAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UpgradeAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

.field mAccountNum:I

.field final mContext:Landroid/content/Context;

.field final mPreferences:Lcom/android/email/Preferences;

.field final synthetic this$0:Lcom/android/email/activity/UpgradeAccounts;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/UpgradeAccounts;Lcom/android/email/activity/UpgradeAccounts$AccountInfo;I)V
    .locals 2
    .parameter
    .parameter "accountInfo"
    .parameter "accountnum"

    .prologue
    .line 796
    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    .line 798
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 799
    iput-object p2, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    .line 800
    iput p3, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    .line 801
    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    .line 802
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mPreferences:Lcom/android/email/Preferences;

    .line 804
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 805
    return-void
.end method

.method private copyAndDeleteAccount(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;ILcom/android/email/activity/UpgradeAccounts$UIHandler;Ljava/lang/String;)Z
    .locals 9
    .parameter "info"
    .parameter "i"
    .parameter "handler"
    .parameter "type"

    .prologue
    const v8, 0x7f08014c

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1102
    if-eqz p4, :cond_2

    .line 1103
    :try_start_0
    iget-object v5, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v5}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v2

    .line 1104
    .local v2, storeUri:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1143
    .end local v2           #storeUri:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 1106
    .restart local v2       #storeUri:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 1107
    .local v1, isType:Z
    if-eqz v1, :cond_0

    .line 1112
    .end local v1           #isType:Z
    .end local v2           #storeUri:Ljava/lang/String;
    :cond_2
    iget-boolean v5, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    if-nez v5, :cond_4

    .line 1113
    iget-object v5, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v5}, Lcom/android/email/Account;->getUpdateAccount()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v5}, Lcom/android/email/Account;->getUpdateAccount()Ljava/lang/String;

    move-result-object v5

    const-string v6, "false"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1115
    :cond_3
    iget-object v5, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-static {v5, v6, p2, p3}, Lcom/android/email/activity/UpgradeAccounts;->copyAccount(Landroid/content/Context;Lcom/android/email/Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1133
    :cond_4
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-static {v3, v5, p2, p3}, Lcom/android/email/activity/UpgradeAccounts;->deleteAccountStore(Landroid/content/Context;Lcom/android/email/Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;)V

    .line 1134
    iget-object v3, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v3}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v3

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1141
    :goto_2
    const v3, 0x7fffffff

    invoke-virtual {p3, p2, v3}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->setProgress(II)V

    move v3, v4

    .line 1143
    goto :goto_0

    .line 1117
    :cond_5
    :try_start_2
    iget-object v5, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-static {v5, v6, p2, p3, p4}, Lcom/android/email/activity/UpgradeAccounts;->copyAccountForUpdate(Landroid/content/Context;Lcom/android/email/Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1118
    const-string v5, "Email"

    const-string v6, "Return false..copyAccountForUpdate() "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v5, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v5}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v7, 0x7f08014c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 1120
    const/4 v5, 0x1

    iput-boolean v5, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1124
    :catch_0
    move-exception v0

    .line 1125
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while copying account "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iget-object v5, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v5}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 1127
    iput-boolean v4, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    goto/16 :goto_0

    .line 1135
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 1136
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v3, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while deleting account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 789
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 15
    .parameter "params"

    .prologue
    .line 816
    invoke-static {}, Lcom/android/email/activity/UpgradeAccounts;->access$1100()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 817
    :try_start_0
    invoke-static {}, Lcom/android/email/activity/UpgradeAccounts;->access$1000()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 818
    const/4 v10, 0x0

    monitor-exit v11

    .line 1093
    :goto_0
    return-object v10

    .line 820
    :cond_0
    const-string v10, "Email"

    const-string v12, "ConversionTask() start "

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1002(Z)Z

    .line 822
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1202(Z)Z

    .line 823
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v5

    .line 824
    .local v5, handler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 829
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    const-string v12, "eas"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_7

    .line 830
    const/4 v9, 0x0

    .line 832
    .local v9, store:Lcom/android/email/mail/Store;
    :try_start_1
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    iget-object v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v9

    .line 834
    iget v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    const v12, 0x7fffffff

    invoke-virtual {v5, v10, v12}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->setMaxProgress(II)V

    .line 835
    iget v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    const/4 v12, -0x1

    invoke-virtual {v5, v10, v12}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->incProgress(II)V

    .line 836
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1302(Z)Z

    .line 837
    invoke-virtual {v9}, Lcom/android/email/mail/Store;->checkSettings()Landroid/os/Bundle;

    move-result-object v1

    .line 838
    .local v1, bundle:Landroid/os/Bundle;
    const-string v10, "validate_result_code"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 840
    .local v7, resultCode:I
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1302(Z)Z

    .line 841
    const/4 v10, -0x1

    if-eq v7, v10, :cond_6

    .line 842
    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConversionTask()- resultCode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    sparse-switch v7, :sswitch_data_0

    .line 908
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 909
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014c

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1023
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v7           #resultCode:I
    .end local v9           #store:Lcom/android/email/mail/Store;
    :cond_1
    :goto_1
    :try_start_2
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 1025
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    const-string v12, "eas"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1027
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v12, v12, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-static {v10, v12}, Lcom/android/email/activity/UpgradeAccounts;->estimateWork(Landroid/content/Context;Lcom/android/email/Account;)I

    move-result v3

    .line 1028
    .local v3, estimate:I
    const/4 v10, -0x1

    if-ne v3, v10, :cond_2

    .line 1029
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 1030
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014c

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 1033
    :cond_2
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12, v3}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->setMaxProgress(II)V

    .line 1063
    .end local v3           #estimate:I
    :cond_3
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1064
    .local v0, bResult:Ljava/lang/Boolean;
    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    .line 1066
    .local v6, info:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-boolean v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    if-nez v10, :cond_4

    .line 1067
    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Copy accounts   "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v13, v13, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    const-string v12, "pop3"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1069
    iget v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    const-string v12, "pop3"

    invoke-direct {p0, v6, v10, v5, v12}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->copyAndDeleteAccount(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;ILcom/android/email/activity/UpgradeAccounts$UIHandler;Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1079
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    if-eqz v10, :cond_5

    .line 1081
    :try_start_3
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    iget-object v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v10, v12}, Lcom/android/email/Account;->delete(Lcom/android/email/Preferences;)V

    .line 1082
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1090
    :cond_5
    :goto_3
    :try_start_4
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z

    .line 1091
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1093
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 846
    .end local v0           #bResult:Ljava/lang/Boolean;
    .end local v6           #info:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v7       #resultCode:I
    .restart local v9       #store:Lcom/android/email/mail/Store;
    :sswitch_0
    :try_start_5
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 861
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f080114

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 921
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v7           #resultCode:I
    :catch_0
    move-exception v2

    .line 922
    .local v2, e:Ljava/lang/Exception;
    :try_start_6
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 923
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014c

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1091
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #handler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    .end local v9           #store:Lcom/android/email/mail/Store;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v10

    .line 866
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v5       #handler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    .restart local v7       #resultCode:I
    .restart local v9       #store:Lcom/android/email/mail/Store;
    :sswitch_1
    :try_start_7
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 867
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f080109

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 870
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->showCredentialsDialog(I)V

    .line 871
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1202(Z)Z

    goto/16 :goto_1

    .line 874
    :sswitch_2
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    goto/16 :goto_1

    .line 877
    :sswitch_3
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 878
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f080113

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 882
    :sswitch_4
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 883
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f080118

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 886
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12}, Lcom/android/email/activity/UpgradeAccounts;->deletePreference(I)V

    goto/16 :goto_1

    .line 889
    :sswitch_5
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 890
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f080115

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 893
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12}, Lcom/android/email/activity/UpgradeAccounts;->deletePreference(I)V

    goto/16 :goto_1

    .line 896
    :sswitch_6
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 897
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f080112

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 901
    :sswitch_7
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 902
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08010d

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 914
    :cond_6
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    .line 926
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v7           #resultCode:I
    .end local v9           #store:Lcom/android/email/mail/Store;
    :cond_7
    :try_start_8
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    const-string v12, "imap"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    const-string v12, "pop3"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 930
    :cond_8
    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConversionTask()- Legacy checking incoming "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v13, v13, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 932
    const/4 v9, 0x0

    .line 934
    .restart local v9       #store:Lcom/android/email/mail/Store;
    :try_start_9
    iget v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    const v12, 0x7fffffff

    invoke-virtual {v5, v10, v12}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->setMaxProgress(II)V

    .line 935
    iget v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    const/4 v12, -0x1

    invoke-virtual {v5, v10, v12}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->incProgress(II)V

    .line 936
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    iget-object v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v9

    .line 938
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1302(Z)Z

    .line 939
    invoke-virtual {v9}, Lcom/android/email/mail/Store;->checkSettings()Landroid/os/Bundle;

    move-result-object v1

    .line 940
    .restart local v1       #bundle:Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 941
    .restart local v7       #resultCode:I
    if-eqz v1, :cond_9

    .line 942
    const-string v10, "validate_result_code"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 945
    :cond_9
    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConversionTask()- Legacy resultCode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const/4 v10, -0x1

    if-eq v7, v10, :cond_a

    .line 948
    packed-switch v7, :pswitch_data_0

    .line 958
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 959
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014c

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 992
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v7           #resultCode:I
    :goto_4
    :try_start_a
    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConversionTask()- Legacy checking outgoing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v13, v13, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 995
    :try_start_b
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v12, v12, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v12}, Lcom/android/email/Account;->getSenderUri()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v8

    .line 997
    .local v8, sender:Lcom/android/email/mail/Sender;
    invoke-virtual {v8}, Lcom/android/email/mail/Sender;->close()V

    .line 998
    invoke-virtual {v8}, Lcom/android/email/mail/Sender;->open()V

    .line 999
    invoke-virtual {v8}, Lcom/android/email/mail/Sender;->close()V

    .line 1000
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1302(Z)Z

    .line 1001
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 1002
    const-string v10, "Email"

    const-string v12, "ConversionTask()- Legacy checking outgoing OK!"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_3

    .line 1013
    .end local v8           #sender:Lcom/android/email/mail/Sender;
    :goto_5
    const/4 v10, 0x0

    :try_start_c
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1302(Z)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 950
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v7       #resultCode:I
    :pswitch_0
    :try_start_d
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 951
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f080109

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 954
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->showCredentialsDialog(I)V

    .line 955
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1202(Z)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_4

    .line 969
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v7           #resultCode:I
    :catch_1
    move-exception v2

    .line 970
    .local v2, e:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_e
    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConversionTask()- Legacy incoming Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v4

    .line 974
    .local v4, exceptionType:I
    const/4 v10, 0x5

    if-ne v4, v10, :cond_b

    .line 975
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f080109

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 977
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->showCredentialsDialog(I)V

    .line 978
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1202(Z)Z

    .line 983
    :goto_6
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_4

    .line 964
    .end local v2           #e:Lcom/android/emailcommon/mail/MessagingException;
    .end local v4           #exceptionType:I
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v7       #resultCode:I
    :cond_a
    :try_start_f
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 965
    const-string v10, "Email"

    const-string v12, "ConversionTask()- Legacy checking incoming OK!"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_4

    .line 984
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v7           #resultCode:I
    :catch_2
    move-exception v2

    .line 985
    .local v2, e:Ljava/lang/Exception;
    :try_start_10
    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConversionTask()- Legacy incoming Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 988
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014c

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 980
    .local v2, e:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v4       #exceptionType:I
    :cond_b
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014c

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    goto :goto_6

    .line 1003
    .end local v2           #e:Lcom/android/emailcommon/mail/MessagingException;
    .end local v4           #exceptionType:I
    :catch_3
    move-exception v2

    .line 1004
    .restart local v2       #e:Lcom/android/emailcommon/mail/MessagingException;
    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConversionTask()- Legacy outgoing Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1302(Z)Z

    .line 1008
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 1009
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014c

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 1015
    .end local v2           #e:Lcom/android/emailcommon/mail/MessagingException;
    .end local v9           #store:Lcom/android/email/mail/Store;
    :cond_c
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 1016
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014c

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 1018
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12}, Lcom/android/email/activity/UpgradeAccounts;->deletePreference(I)V

    goto/16 :goto_1

    .line 1071
    .restart local v0       #bResult:Ljava/lang/Boolean;
    .restart local v6       #info:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    :cond_d
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    const-string v12, "imap"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1072
    iget v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    const-string v12, "imap"

    invoke-direct {p0, v6, v10, v5, v12}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->copyAndDeleteAccount(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;ILcom/android/email/activity/UpgradeAccounts$UIHandler;Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_2

    .line 1074
    :cond_e
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    const-string v12, "eas"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1075
    iget v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    const-string v12, "eas"

    invoke-direct {p0, v6, v10, v5, v12}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->copyAndDeleteAccount(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;ILcom/android/email/activity/UpgradeAccounts$UIHandler;Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_2

    .line 1083
    :catch_4
    move-exception v2

    .line 1084
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception while deleting account "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_3

    .line 844
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x4 -> :sswitch_6
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0x10 -> :sswitch_0
        0x4d -> :sswitch_7
    .end sparse-switch

    .line 948
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 789
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 1148
    invoke-static {}, Lcom/android/email/activity/UpgradeAccounts;->access$1200()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1149
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$1002(Z)Z

    .line 1150
    invoke-virtual {p0}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1156
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mProceedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$700(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1159
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1160
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v1

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    if-ne v1, v2, :cond_2

    .line 1163
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_3

    .line 1164
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #calls: Lcom/android/email/activity/UpgradeAccounts;->onClickOk()V
    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$1400(Lcom/android/email/activity/UpgradeAccounts;)V

    .line 1179
    .end local v0           #i:I
    :cond_1
    :goto_1
    return-void

    .line 1159
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1166
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-virtual {v1}, Lcom/android/email/activity/UpgradeAccounts;->startConversion()V

    goto :goto_1

    .line 1169
    .end local v0           #i:I
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1170
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v1

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    if-nez v1, :cond_5

    .line 1171
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-virtual {v1}, Lcom/android/email/activity/UpgradeAccounts;->startConversion()V

    goto :goto_1

    .line 1169
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
