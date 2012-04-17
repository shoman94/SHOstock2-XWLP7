.class Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$7;
.super Ljava/lang/Object;
.source "AccountSettingsSyncScheduleFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setupPeakEndTime(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$7;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$7;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x0

    .line 626
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$7;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$7;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncEndTime:I
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)I

    move-result v2

    #calls: Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHoursAndMinutes(I)Landroid/util/Pair;
    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->access$700(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)Landroid/util/Pair;

    move-result-object v0

    .line 627
    .local v0, hourMinute:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$7;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I
    invoke-static {v2, v1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->access$1302(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I

    .line 628
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$7;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I
    invoke-static {v2, v1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->access$1402(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I

    .line 629
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$7;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$7;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$7;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakEndTime:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->access$1500(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)Landroid/preference/Preference;

    move-result-object v3

    #calls: Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->showTimePickerDialog(Landroid/content/Context;Landroid/preference/Preference;Z)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->access$1100(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;Landroid/content/Context;Landroid/preference/Preference;Z)V

    .line 630
    return v4
.end method
