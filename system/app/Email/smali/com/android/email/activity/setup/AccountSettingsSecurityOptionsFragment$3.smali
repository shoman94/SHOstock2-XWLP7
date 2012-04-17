.class Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$3;
.super Ljava/lang/Object;
.source "AccountSettingsSecurityOptionsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 273
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, summary:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->access$300(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 275
    .local v0, index:I
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->access$300(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)Landroid/preference/ListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->access$300(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->access$300(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 278
    const/4 v2, 0x0

    return v2
.end method
