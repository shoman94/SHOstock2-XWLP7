.class public Lcom/android/email/service/EasAuthenticatorService;
.super Landroid/app/Service;
.source "EasAuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/EasAuthenticatorService$EasAuthenticator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 68
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 212
    const-string v0, "android.accounts.AccountAuthenticator"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Lcom/android/email/service/EasAuthenticatorService$EasAuthenticator;

    invoke-direct {v0, p0, p0}, Lcom/android/email/service/EasAuthenticatorService$EasAuthenticator;-><init>(Lcom/android/email/service/EasAuthenticatorService;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/email/service/EasAuthenticatorService$EasAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
