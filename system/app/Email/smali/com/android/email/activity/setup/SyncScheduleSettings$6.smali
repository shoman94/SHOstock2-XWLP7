.class Lcom/android/email/activity/setup/SyncScheduleSettings$6;
.super Ljava/lang/Object;
.source "SyncScheduleSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/SyncScheduleSettings;->setupRoaming()V
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
    .line 235
    iput-object p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$6;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

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

    .line 238
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 239
    .local v0, value:I
    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$6;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    #getter for: Lcom/android/email/activity/setup/SyncScheduleSettings;->whileRoaming:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$1500(Lcom/android/email/activity/setup/SyncScheduleSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$6;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    #getter for: Lcom/android/email/activity/setup/SyncScheduleSettings;->whileRoaming:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$1500(Lcom/android/email/activity/setup/SyncScheduleSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$6;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    #getter for: Lcom/android/email/activity/setup/SyncScheduleSettings;->whileRoaming:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$1500(Lcom/android/email/activity/setup/SyncScheduleSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 242
    packed-switch v0, :pswitch_data_0

    .line 250
    :goto_0
    return v3

    .line 244
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$6;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    #setter for: Lcom/android/email/activity/setup/SyncScheduleSettings;->mRoamingSchedule:I
    invoke-static {v1, v3}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$1602(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$6;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    const/4 v2, 0x1

    #setter for: Lcom/android/email/activity/setup/SyncScheduleSettings;->mRoamingSchedule:I
    invoke-static {v1, v2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$1602(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
