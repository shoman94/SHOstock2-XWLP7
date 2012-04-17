.class Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$8;
.super Ljava/lang/Object;
.source "AccountSettingsSyncScheduleFragment.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->showTimePickerDialog(Landroid/content/Context;Landroid/preference/Preference;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

.field final synthetic val$isStartTime:Z

.field final synthetic val$preference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;Landroid/preference/Preference;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$8;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$8;->val$preference:Landroid/preference/Preference;

    iput-boolean p3, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$8;->val$isStartTime:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 8
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v1, 0x0

    .line 687
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$8;->val$preference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$8;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    new-instance v0, Ljava/util/Date;

    move v2, v1

    move v3, v1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 689
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$8;->val$isStartTime:Z

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$8;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$8;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    #calls: Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getMinuteOfDay(II)I
    invoke-static {v1, p2, p3}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->access$1600(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;II)I

    move-result v1

    #setter for: Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncStartTime:I
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->access$602(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I

    .line 694
    :goto_0
    return-void

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$8;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$8;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    #calls: Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getMinuteOfDay(II)I
    invoke-static {v1, p2, p3}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->access$1600(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;II)I

    move-result v1

    #setter for: Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncEndTime:I
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->access$1202(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I

    goto :goto_0
.end method
