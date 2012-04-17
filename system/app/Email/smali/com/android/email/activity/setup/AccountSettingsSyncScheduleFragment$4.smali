.class Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$4;
.super Ljava/lang/Object;
.source "AccountSettingsSyncScheduleFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setupRoaming(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x0

    .line 526
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 527
    .local v0, value:I
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->access$400(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)Landroid/preference/ListPreference;

    move-result-object v1

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 528
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->access$400(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->access$400(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 530
    packed-switch v0, :pswitch_data_0

    .line 540
    :goto_0
    return v3

    .line 532
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    #setter for: Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mRoamingSchedule:I
    invoke-static {v1, v3}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->access$502(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I

    goto :goto_0

    .line 535
    :pswitch_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    const/4 v2, 0x1

    #setter for: Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mRoamingSchedule:I
    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->access$502(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I

    goto :goto_0

    .line 530
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
