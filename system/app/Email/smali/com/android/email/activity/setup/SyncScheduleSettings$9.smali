.class Lcom/android/email/activity/setup/SyncScheduleSettings$9;
.super Ljava/lang/Object;
.source "SyncScheduleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/SyncScheduleSettings;->showPeakDaysDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

.field final synthetic val$peakDaysOld:[Z


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/SyncScheduleSettings;[Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$9;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    iput-object p2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$9;->val$peakDaysOld:[Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 280
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakDaysArray:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 281
    sget-object v1, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakDaysArray:[Z

    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$9;->val$peakDaysOld:[Z

    aget-boolean v2, v2, v0

    aput-boolean v2, v1, v0

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_0
    return-void
.end method
