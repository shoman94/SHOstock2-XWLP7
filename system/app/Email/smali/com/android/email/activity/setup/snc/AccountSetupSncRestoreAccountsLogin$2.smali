.class Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$2;
.super Ljava/lang/Object;
.source "AccountSetupSncRestoreAccountsLogin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "info"
    .parameter "keycode"
    .parameter "keyevent"

    .prologue
    .line 256
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    .line 258
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
