.class Lcom/android/email/activity/setup/AccountSettingsFragment$13;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    .line 1643
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$13;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 1645
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1646
    .local v1, summary:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$13;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$2500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 1647
    .local v0, index:I
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$13;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$2500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$13;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$2500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1648
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$13;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$2500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1649
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$13;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #calls: Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged()V
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$2000(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    .line 1650
    const/4 v2, 0x0

    return v2
.end method
