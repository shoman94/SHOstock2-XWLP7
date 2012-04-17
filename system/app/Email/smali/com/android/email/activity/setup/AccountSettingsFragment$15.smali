.class Lcom/android/email/activity/setup/AccountSettingsFragment$15;
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
    .line 1688
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$15;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 1690
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$15;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #setter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z
    invoke-static {v0, v7}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$2702(Lcom/android/email/activity/setup/AccountSettingsFragment;Z)Z

    .line 1692
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$15;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$15;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v1

    iput-object v1, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->syncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    .line 1693
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1694
    const-string v0, "extraAccount"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$15;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1695
    const-string v0, "com.android.email.SyncScheduleExtra"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$15;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->syncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1696
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$15;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1697
    const-class v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f08043d

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$15;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const/16 v6, 0x3eb

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1701
    return v7
.end method
