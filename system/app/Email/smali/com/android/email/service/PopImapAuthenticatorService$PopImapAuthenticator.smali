.class Lcom/android/email/service/PopImapAuthenticatorService$PopImapAuthenticator;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source "PopImapAuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/PopImapAuthenticatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PopImapAuthenticator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/PopImapAuthenticatorService;


# direct methods
.method public constructor <init>(Lcom/android/email/service/PopImapAuthenticatorService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/email/service/PopImapAuthenticatorService$PopImapAuthenticator;->this$0:Lcom/android/email/service/PopImapAuthenticatorService;

    .line 78
    invoke-direct {p0, p2}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 79
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
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
    const/4 v7, 0x0

    .line 89
    if-eqz p5, :cond_1

    const-string v4, "password"

    invoke-virtual {p5, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "username"

    invoke-virtual {p5, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    new-instance v0, Landroid/accounts/Account;

    const-string v4, "username"

    invoke-virtual {p5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.email"

    invoke-direct {v0, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v0, account:Landroid/accounts/Account;
    iget-object v4, p0, Lcom/android/email/service/PopImapAuthenticatorService$PopImapAuthenticator;->this$0:Lcom/android/email/service/PopImapAuthenticatorService;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v5, "password"

    invoke-virtual {p5, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v5, v6}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 97
    const/4 v3, 0x0

    .line 98
    .local v3, syncEmail:Z
    const-string v4, "email"

    invoke-virtual {p5, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "email"

    invoke-virtual {p5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    const/4 v3, 0x1

    .line 102
    :cond_0
    const-string v4, "com.android.email.provider"

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 103
    const-string v4, "com.android.email.provider"

    invoke-static {v0, v4, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 104
    const-string v4, "com.android.contacts"

    invoke-static {v0, v4, v7}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 105
    const-string v4, "com.android.calendar"

    invoke-static {v0, v4, v7}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 107
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v1, b:Landroid/os/Bundle;
    const-string v4, "authAccount"

    const-string v5, "username"

    invoke-virtual {p5, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v4, "accountType"

    const-string v5, "com.android.email"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #syncEmail:Z
    :goto_0
    return-object v1

    .line 117
    .end local v1           #b:Landroid/os/Bundle;
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 130
    .restart local v1       #b:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/email/service/PopImapAuthenticatorService$PopImapAuthenticator;->this$0:Lcom/android/email/service/PopImapAuthenticatorService;

    invoke-static {v4}, Lcom/android/email/activity/ActivityResourceInterface;->getSetupPopImapSetupIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 134
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "accountAuthenticatorResponse"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 135
    const-string v4, "intent"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "options"

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "accountType"

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccountRemovalAllowed(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 7
    .parameter "response"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 144
    const-string v3, "PopImapAuthenticatorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAccountRemovalAllowed() called for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v2, result:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/email/service/PopImapAuthenticatorService$PopImapAuthenticator;->this$0:Lcom/android/email/service/PopImapAuthenticatorService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "emailAddress=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 149
    .local v0, accountId:J
    invoke-static {v0, v1}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    iget-object v3, p0, Lcom/android/email/service/PopImapAuthenticatorService$PopImapAuthenticator;->this$0:Lcom/android/email/service/PopImapAuthenticatorService;

    #getter for: Lcom/android/email/service/PopImapAuthenticatorService;->mController:Lcom/android/email/Controller;
    invoke-static {v3}, Lcom/android/email/service/PopImapAuthenticatorService;->access$200(Lcom/android/email/service/PopImapAuthenticatorService;)Lcom/android/email/Controller;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/service/PopImapAuthenticatorService$PopImapAuthenticator;->this$0:Lcom/android/email/service/PopImapAuthenticatorService;

    #getter for: Lcom/android/email/service/PopImapAuthenticatorService;->mControllerResult:Lcom/android/email/Controller$Result;
    invoke-static {v4}, Lcom/android/email/service/PopImapAuthenticatorService;->access$100(Lcom/android/email/service/PopImapAuthenticatorService;)Lcom/android/email/Controller$Result;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 156
    iget-object v3, p0, Lcom/android/email/service/PopImapAuthenticatorService$PopImapAuthenticator;->this$0:Lcom/android/email/service/PopImapAuthenticatorService;

    invoke-static {v3}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/android/email/Controller;->deleteAccount(J)V

    .line 157
    iget-object v3, p0, Lcom/android/email/service/PopImapAuthenticatorService$PopImapAuthenticator;->this$0:Lcom/android/email/service/PopImapAuthenticatorService;

    #calls: Lcom/android/email/service/PopImapAuthenticatorService;->waitForAccountDeletion()V
    invoke-static {v3}, Lcom/android/email/service/PopImapAuthenticatorService;->access$300(Lcom/android/email/service/PopImapAuthenticatorService;)V

    .line 158
    iget-object v3, p0, Lcom/android/email/service/PopImapAuthenticatorService$PopImapAuthenticator;->this$0:Lcom/android/email/service/PopImapAuthenticatorService;

    #getter for: Lcom/android/email/service/PopImapAuthenticatorService;->isMailDeletedFromProvider:Z
    invoke-static {v3}, Lcom/android/email/service/PopImapAuthenticatorService;->access$400(Lcom/android/email/service/PopImapAuthenticatorService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    const-string v3, "booleanResult"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    :goto_0
    return-object v2

    .line 161
    :cond_0
    const-string v3, "booleanResult"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 164
    :cond_1
    const-string v3, "booleanResult"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
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
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "authTokenType"

    .prologue
    .line 191
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
    .line 197
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
    .line 203
    const/4 v0, 0x0

    return-object v0
.end method
