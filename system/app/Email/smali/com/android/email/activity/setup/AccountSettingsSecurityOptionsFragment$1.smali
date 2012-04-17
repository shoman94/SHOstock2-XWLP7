.class Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$1;
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
    .line 135
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 137
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 139
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/EmailUtility;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 147
    :try_start_1
    const-string v3, "AccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    :goto_0
    const-string v3, "KEYSTORE_PASSWORD"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "CERTIFICATE_ALIAS"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->access$000(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v1, "EMAIL_ADDRESS"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->access$100(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-class v1, Lcom/android/email/activity/smime/InstalledCertificatesList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0804bc

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;

    const/4 v6, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 159
    const/4 v0, 0x0

    return v0

    .line 148
    :catch_0
    move-exception v1

    move-object v1, v4

    .line 149
    :goto_1
    const-string v3, "AccountSettings"

    const-string v5, "Error while getting device id"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :catch_1
    move-exception v3

    goto :goto_1
.end method
