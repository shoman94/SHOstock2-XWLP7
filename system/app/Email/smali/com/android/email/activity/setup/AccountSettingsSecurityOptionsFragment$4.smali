.class Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$4;
.super Ljava/lang/Object;
.source "AccountSettingsSecurityOptionsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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
    .line 285
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 287
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 288
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 289
    const-string v1, "account_id"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccountId:J
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->access$400(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)J

    move-result-wide v7

    invoke-virtual {v2, v1, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 290
    const-class v1, Lcom/android/email/activity/PoliciesList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0804f6

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 293
    return v6
.end method
