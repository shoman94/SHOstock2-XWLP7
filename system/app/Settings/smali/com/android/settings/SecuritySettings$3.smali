.class Lcom/android/settings/SecuritySettings$3;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 313
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "GoogleAccountPreferences"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 314
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "pref_google_account"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$100(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 316
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b072c

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 330
    :goto_0
    return v4

    .line 320
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 321
    .local v0, mIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "samsung_signin"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 322
    const-string v2, "com.osp.app.signin"

    const-string v3, "com.osp.app.signin.UserValidateCheck"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    :goto_1
    const-string v2, "MODE"

    const-string v3, "REMOTE_CONTROLS"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v0, v3}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 325
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    #setter for: Lcom/android/settings/SecuritySettings;->mFirstSignin:Z
    invoke-static {v2, v5}, Lcom/android/settings/SecuritySettings;->access$002(Lcom/android/settings/SecuritySettings;Z)Z

    .line 326
    const-string v2, "com.osp.app.signin"

    const-string v3, "com.osp.app.signin.AccountView"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
