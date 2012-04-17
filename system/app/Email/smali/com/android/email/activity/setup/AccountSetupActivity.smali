.class public Lcom/android/email/activity/setup/AccountSetupActivity;
.super Landroid/app/Activity;
.source "AccountSetupActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {p1}, Lcom/android/email/activity/setup/SetupData;->restore(Landroid/os/Bundle;)Lcom/android/email/activity/setup/SetupData;

    .line 38
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 43
    invoke-static {p1}, Lcom/android/email/activity/setup/SetupData;->save(Landroid/os/Bundle;)V

    .line 44
    return-void
.end method
