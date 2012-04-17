.class Lcom/android/email/activity/setup/AccountSettingsFragment$45;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;->saveSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

.field final synthetic val$changedSettings:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3064
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$45;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$45;->val$changedSettings:Ljava/util/HashMap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3068
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$45;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->zHandler:Lcom/digc/seven/Z7MailHandler;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$4900(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$45;->val$changedSettings:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Lcom/digc/seven/Z7MailHandler;->updateSettings(ILjava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3077
    :goto_0
    return-void

    .line 3069
    :catch_0
    move-exception v0

    .line 3070
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$45;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$45$1;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment$45$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment$45;Landroid/os/RemoteException;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
