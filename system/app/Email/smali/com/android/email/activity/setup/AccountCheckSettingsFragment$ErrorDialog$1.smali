.class Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$1;
.super Ljava/lang/Object;
.source "AccountCheckSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

.field final synthetic val$target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$1;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$1;->val$target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1034
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$1;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->dismiss()V

    .line 1036
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$1;->val$target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    if-eqz v1, :cond_0

    .line 1037
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$1;->val$target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    #calls: Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onErrorDialogEditButton()V
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$300(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1042
    :cond_0
    :goto_0
    return-void

    .line 1039
    :catch_0
    move-exception v0

    .line 1040
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ErrorDialog"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
