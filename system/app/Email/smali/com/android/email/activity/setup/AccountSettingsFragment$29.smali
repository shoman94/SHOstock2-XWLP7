.class Lcom/android/email/activity/setup/AccountSettingsFragment$29;
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
    .line 2097
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$29;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2099
    move-object v0, p1

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$29;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    if-eq v3, v0, :cond_0

    .line 2101
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Here in Preference Change"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2102
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2103
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$29;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #calls: Lcom/android/email/activity/setup/AccountSettingsFragment;->changeSmsSettings(Z)V
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$3800(Lcom/android/email/activity/setup/AccountSettingsFragment;Z)V

    .line 2108
    :cond_0
    :goto_1
    return v1

    .restart local p1
    :cond_1
    move v0, v2

    .line 2099
    goto :goto_0

    .line 2105
    .end local p1
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$29;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #calls: Lcom/android/email/activity/setup/AccountSettingsFragment;->changeSmsSettings(Z)V
    invoke-static {v0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$3800(Lcom/android/email/activity/setup/AccountSettingsFragment;Z)V

    goto :goto_1
.end method
