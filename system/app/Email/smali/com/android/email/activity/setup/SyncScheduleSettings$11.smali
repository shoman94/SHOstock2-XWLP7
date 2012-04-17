.class Lcom/android/email/activity/setup/SyncScheduleSettings$11;
.super Landroid/os/Handler;
.source "SyncScheduleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/SyncScheduleSettings;
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
    .line 384
    iput-object p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$11;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 386
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$11;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "refresh_widget"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 389
    :cond_0
    return-void
.end method
