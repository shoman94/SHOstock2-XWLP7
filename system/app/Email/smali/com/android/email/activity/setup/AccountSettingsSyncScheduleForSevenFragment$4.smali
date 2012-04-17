.class Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4;
.super Ljava/lang/Object;
.source "AccountSettingsSyncScheduleForSevenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->onSave()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;

.field final synthetic val$changedSettings:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4;->val$changedSettings:Ljava/util/HashMap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 430
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->zHandler:Lcom/digc/seven/Z7MailHandler;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->access$600(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4;->val$changedSettings:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Lcom/digc/seven/Z7MailHandler;->updateSettings(ILjava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_0
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4$1;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4;Landroid/os/RemoteException;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
