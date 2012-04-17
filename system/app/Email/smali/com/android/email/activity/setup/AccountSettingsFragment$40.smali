.class Lcom/android/email/activity/setup/AccountSettingsFragment$40;
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
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 2464
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$40;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onModifyUserAccount(Ljava/lang/String;)V

    .line 2465
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$40;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #calls: Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$2000(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    .line 2466
    const/4 v0, 0x1

    return v0
.end method
