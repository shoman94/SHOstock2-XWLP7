.class Lcom/android/email/activity/setup/SyncScheduleSettings$3;
.super Ljava/lang/Object;
.source "SyncScheduleSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/SyncScheduleSettings;->setupPeakDays()V
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
    .line 174
    iput-object p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$3;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$3;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    #calls: Lcom/android/email/activity/setup/SyncScheduleSettings;->showPeakDaysDialog()V
    invoke-static {v0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$400(Lcom/android/email/activity/setup/SyncScheduleSettings;)V

    .line 178
    const/4 v0, 0x0

    return v0
.end method
