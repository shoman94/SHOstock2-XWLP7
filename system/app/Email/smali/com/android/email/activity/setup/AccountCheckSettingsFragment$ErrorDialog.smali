.class public Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
.super Landroid/app/DialogFragment;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 998
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static varargs newInstance(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;I[Ljava/lang/String;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    .locals 3
    .parameter "target"
    .parameter "messageId"
    .parameter "messageArguments"

    .prologue
    .line 1008
    new-instance v1, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;-><init>()V

    .line 1009
    .local v1, fragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1010
    .local v0, arguments:Landroid/os/Bundle;
    const-string v2, "ErrorDialog.Message.Id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1011
    const-string v2, "ErrorDialog.Message.Args"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1012
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->setArguments(Landroid/os/Bundle;)V

    .line 1013
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1014
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1047
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    .line 1048
    .local v0, target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 1049
    #calls: Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onErrorDialogEditButton()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$300(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    .line 1050
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 1019
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1020
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1021
    .local v0, arguments:Landroid/os/Bundle;
    const-string v5, "ErrorDialog.Message.Id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1022
    .local v3, messageId:I
    const-string v5, "ErrorDialog.Message.Args"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1023
    .local v2, messageArguments:[Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    .line 1025
    .local v4, target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1010355

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080106

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080124

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$1;

    invoke-direct {v7, p0, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$1;-><init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
