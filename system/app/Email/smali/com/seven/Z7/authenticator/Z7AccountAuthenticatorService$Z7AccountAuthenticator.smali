.class public Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$Z7AccountAuthenticator;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source "Z7AccountAuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Z7AccountAuthenticator"
.end annotation


# instance fields
.field private Z7TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService;


# direct methods
.method public constructor <init>(Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$Z7AccountAuthenticator;->this$0:Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService;

    .line 60
    invoke-direct {p0, p2}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 57
    const-string v0, "Z7ContactsAccountAuthenticator"

    iput-object v0, p0, Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$Z7AccountAuthenticator;->Z7TAG:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public LogPrint(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$Z7AccountAuthenticator;->Z7TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method public addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
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
    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got request to add account with type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$Z7AccountAuthenticator;->LogPrint(Ljava/lang/String;)V

    .line 120
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v1, ret:Landroid/os/Bundle;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.seven.action.ADD_ACCOUNT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    const-string v2, "accountType"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v2, "accountAuthenticatorResponse"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 126
    const-string v3, "filter"

    const-string v2, "com.seven.Z7.im"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 131
    return-object v1

    .line 126
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "options"

    .prologue
    .line 95
    const-string v0, "confirmCredentials -- not implemented"

    invoke-virtual {p0, v0}, Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$Z7AccountAuthenticator;->LogPrint(Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "accountType"

    .prologue
    .line 108
    const-string v0, "editProperties -- not implemented"

    invoke-virtual {p0, v0}, Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$Z7AccountAuthenticator;->LogPrint(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
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
    .line 73
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "getAuthToken -- not implemented"

    invoke-virtual {p0, v0}, Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$Z7AccountAuthenticator;->LogPrint(Ljava/lang/String;)V

    .line 79
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAuthToken -- not implemented, authTokenType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$Z7AccountAuthenticator;->LogPrint(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "authTokenType"

    .prologue
    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "getAuthTokenLabel -- not implemented"

    invoke-virtual {p0, v0}, Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$Z7AccountAuthenticator;->LogPrint(Ljava/lang/String;)V

    .line 89
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAuthTokenLabel -- not implemented, authTokenType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$Z7AccountAuthenticator;->LogPrint(Ljava/lang/String;)V

    goto :goto_0
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
    .line 102
    const-string v0, "hasFeatures -- not implemented"

    invoke-virtual {p0, v0}, Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$Z7AccountAuthenticator;->LogPrint(Ljava/lang/String;)V

    .line 103
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
    .line 66
    const-string v0, "updateCredentials -- not implemented"

    invoke-virtual {p0, v0}, Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$Z7AccountAuthenticator;->LogPrint(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method
