.class Lcom/android/email/activity/setup/AccountSettingsFragment$41;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 2489
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2490
    .local v0, summary:Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2491
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$41;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountPassword:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$4500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 2492
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$41;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #setter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mPassword:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$4602(Lcom/android/email/activity/setup/AccountSettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 2493
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$41;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$41;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mPassword:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$4600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onModifyUserAccount(Ljava/lang/String;)V

    .line 2494
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$41;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #calls: Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged()V
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$2000(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    .line 2496
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
