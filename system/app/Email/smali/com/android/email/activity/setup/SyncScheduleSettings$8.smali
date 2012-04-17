.class Lcom/android/email/activity/setup/SyncScheduleSettings$8;
.super Ljava/lang/Object;
.source "SyncScheduleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/SyncScheduleSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$8;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$8;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    #getter for: Lcom/android/email/activity/setup/SyncScheduleSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$1700(Lcom/android/email/activity/setup/SyncScheduleSettings;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 275
    return-void
.end method
