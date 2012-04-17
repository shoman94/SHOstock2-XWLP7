.class Lcom/android/email/activity/setup/SyncScheduleSettings$5;
.super Ljava/lang/Object;
.source "SyncScheduleSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/SyncScheduleSettings;->setupPeakEndTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/SyncScheduleSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$5;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 215
    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$5;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$5;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    #getter for: Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncEndTime:I
    invoke-static {v2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$1100(Lcom/android/email/activity/setup/SyncScheduleSettings;)I

    move-result v2

    #calls: Lcom/android/email/activity/setup/SyncScheduleSettings;->setHoursAndMinutes(I)Landroid/util/Pair;
    invoke-static {v1, v2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$600(Lcom/android/email/activity/setup/SyncScheduleSettings;I)Landroid/util/Pair;

    move-result-object v0

    .line 216
    .local v0, hourMinute:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$5;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/android/email/activity/setup/SyncScheduleSettings;->mEndHour:I
    invoke-static {v2, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$1202(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I

    .line 217
    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$5;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/android/email/activity/setup/SyncScheduleSettings;->mEndMinute:I
    invoke-static {v2, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$1302(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I

    .line 219
    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$5;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$5;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    #getter for: Lcom/android/email/activity/setup/SyncScheduleSettings;->peakEndTime:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$1400(Lcom/android/email/activity/setup/SyncScheduleSettings;)Landroid/preference/Preference;

    move-result-object v2

    #calls: Lcom/android/email/activity/setup/SyncScheduleSettings;->showTimePickerDialog(Landroid/preference/Preference;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$1000(Lcom/android/email/activity/setup/SyncScheduleSettings;Landroid/preference/Preference;Z)V

    .line 220
    return v3
.end method
