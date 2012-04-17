.class Lcom/android/email/service/EasAuthenticatorService$EasAuthenticator;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source "EasAuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/EasAuthenticatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EasAuthenticator"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/email/service/EasAuthenticatorService;


# direct methods
.method public constructor <init>(Lcom/android/email/service/EasAuthenticatorService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/email/service/EasAuthenticatorService$EasAuthenticator;->this$0:Lcom/android/email/service/EasAuthenticatorService;

    .line 72
    invoke-direct {p0, p2}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 73
    iput-object p2, p0, Lcom/android/email/service/EasAuthenticatorService$EasAuthenticator;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 16
    .parameter "response"
    .parameter "accountType"
    .parameter "authTokenType"
    .parameter "requiredFeatures"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 84
    if-eqz p5, :cond_6

    const-string v13, "password"

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v13, "username"

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 86
    new-instance v4, Landroid/accounts/Account;

    const-string v13, "username"

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.android.exchange"

    invoke-direct {v4, v13, v14}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .local v4, account:Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/service/EasAuthenticatorService$EasAuthenticator;->this$0:Lcom/android/email/service/EasAuthenticatorService;

    invoke-static {v13}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v13

    const-string v14, "password"

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v4, v14, v15}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 94
    const/4 v8, 0x0

    .line 95
    .local v8, syncContacts:Z
    const-string v13, "contacts"

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "contacts"

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 97
    const/4 v8, 0x1

    .line 99
    :cond_0
    const-string v13, "com.android.contacts"

    const/4 v14, 0x1

    invoke-static {v4, v13, v14}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 100
    const-string v13, "com.android.contacts"

    invoke-static {v4, v13, v8}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 104
    const/4 v7, 0x0

    .line 105
    .local v7, syncCalendar:Z
    const-string v13, "calendar"

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "calendar"

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 107
    const/4 v7, 0x1

    .line 109
    :cond_1
    const-string v13, "com.android.calendar"

    const/4 v14, 0x1

    invoke-static {v4, v13, v14}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 110
    const-string v13, "com.android.calendar"

    invoke-static {v4, v13, v7}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 114
    const/4 v9, 0x0

    .line 115
    .local v9, syncEmail:Z
    const-string v13, "email"

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "email"

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 117
    const/4 v9, 0x1

    .line 121
    :cond_2
    const-string v13, "com.android.email.provider"

    const/4 v14, 0x1

    invoke-static {v4, v13, v14}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 124
    const-string v13, "com.android.email.provider"

    invoke-static {v4, v13, v9}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 127
    const/4 v10, 0x0

    .line 128
    .local v10, syncTasks:Z
    const-string v13, "tasks"

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "tasks"

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 130
    const/4 v10, 0x1

    .line 134
    :cond_3
    const-string v13, "account_id"

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 135
    .local v2, accId:J
    const-wide/16 v13, 0x0

    cmp-long v13, v2, v13

    if-lez v13, :cond_4

    .line 136
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/service/EasAuthenticatorService$EasAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v13, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 137
    .local v1, acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v1, :cond_4

    .line 138
    iget-object v13, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v13, :cond_4

    .line 139
    iget-object v13, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    .line 140
    .local v11, version:D
    const-string v13, "EasAuthenticatorService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addAccount: version = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-wide/high16 v13, 0x4028

    cmpg-double v13, v11, v13

    if-gez v13, :cond_5

    .line 142
    const-string v13, "tasks"

    const/4 v14, 0x0

    invoke-static {v4, v13, v14}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 143
    const/4 v10, 0x0

    .line 151
    .end local v1           #acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v11           #version:D
    :cond_4
    :goto_0
    const-string v13, "tasks"

    invoke-static {v4, v13, v10}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 154
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v5, b:Landroid/os/Bundle;
    const-string v13, "authAccount"

    const-string v14, "username"

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v13, "accountType"

    const-string v14, "com.android.exchange"

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .end local v2           #accId:J
    .end local v4           #account:Landroid/accounts/Account;
    .end local v7           #syncCalendar:Z
    .end local v8           #syncContacts:Z
    .end local v9           #syncEmail:Z
    .end local v10           #syncTasks:Z
    :goto_1
    return-object v5

    .line 145
    .end local v5           #b:Landroid/os/Bundle;
    .restart local v1       #acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v2       #accId:J
    .restart local v4       #account:Landroid/accounts/Account;
    .restart local v7       #syncCalendar:Z
    .restart local v8       #syncContacts:Z
    .restart local v9       #syncEmail:Z
    .restart local v10       #syncTasks:Z
    .restart local v11       #version:D
    :cond_5
    const-string v13, "tasks"

    const/4 v14, 0x1

    invoke-static {v4, v13, v14}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_0

    .line 164
    .end local v1           #acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v2           #accId:J
    .end local v4           #account:Landroid/accounts/Account;
    .end local v7           #syncCalendar:Z
    .end local v8           #syncContacts:Z
    .end local v9           #syncEmail:Z
    .end local v10           #syncTasks:Z
    .end local v11           #version:D
    :cond_6
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 165
    .restart local v5       #b:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/service/EasAuthenticatorService$EasAuthenticator;->this$0:Lcom/android/email/service/EasAuthenticatorService;

    invoke-static {v13}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionSetupExchangeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    .line 167
    .local v6, intent:Landroid/content/Intent;
    const-string v13, "accountAuthenticatorResponse"

    move-object/from16 v0, p1

    invoke-virtual {v6, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 168
    const-string v13, "intent"

    invoke-virtual {v5, v13, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1
.end method

.method public confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "options"

    .prologue
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method public editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "accountType"

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "loginOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "authTokenType"

    .prologue
    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "features"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "loginOptions"

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method
