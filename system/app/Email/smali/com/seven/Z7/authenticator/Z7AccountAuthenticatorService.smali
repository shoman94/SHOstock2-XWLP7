.class public Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService;
.super Landroid/app/Service;
.source "Z7AccountAuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$Z7AccountAuthenticator;,
        Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$WorkAuthenticatorService;,
        Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$AOLAuthenticatorService;,
        Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$GmailAuthenticatorService;,
        Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$MSNAuthenticatorService;,
        Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$YahooAuthenticatorService;,
        Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$IMAuthenticatorService;
    }
.end annotation


# instance fields
.field protected mContactsAuthenticator:Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$Z7AccountAuthenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method protected getAuthenticator()Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$Z7AccountAuthenticator;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService;->mContactsAuthenticator:Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$Z7AccountAuthenticator;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$Z7AccountAuthenticator;

    invoke-direct {v0, p0, p0}, Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$Z7AccountAuthenticator;-><init>(Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService;->mContactsAuthenticator:Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$Z7AccountAuthenticator;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService;->mContactsAuthenticator:Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$Z7AccountAuthenticator;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 24
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.accounts.AccountAuthenticator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService;->getAuthenticator()Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$Z7AccountAuthenticator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$Z7AccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 27
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
