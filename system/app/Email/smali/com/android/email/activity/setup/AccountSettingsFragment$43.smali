.class Lcom/android/email/activity/setup/AccountSettingsFragment$43;
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


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2571
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$43;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2575
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2578
    .local v0, isChecked:Z
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$43;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2579
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$43;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #calls: Lcom/android/email/activity/setup/AccountSettingsFragment;->IsEAS()Z
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$4700(Lcom/android/email/activity/setup/AccountSettingsFragment;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    .line 2580
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$43;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0803cf

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2599
    .end local p1
    :goto_0
    return v2

    .line 2586
    .restart local p1
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$43;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$4800(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2588
    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$43;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const-string v5, "account_default"

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    if-ne v4, p1, :cond_1

    .line 2590
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$43;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$43;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const v5, 0x7f080521

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 2593
    .local v1, message:Landroid/widget/Toast;
    const/16 v3, 0x50

    invoke-virtual {v1, v3, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 2594
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2598
    .end local v1           #message:Landroid/widget/Toast;
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$43;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #calls: Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged()V
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$2000(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    move v2, v3

    .line 2599
    goto :goto_0
.end method
