.class Lcom/android/email/activity/setup/AccountSettingsFragment$31;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;->loadSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2179
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$31;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 2182
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$31;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #setter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z
    invoke-static {v0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$2702(Lcom/android/email/activity/setup/AccountSettingsFragment;Z)Z

    .line 2183
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$31;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$31;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;->onSyncScheduleSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 2194
    return v2
.end method
