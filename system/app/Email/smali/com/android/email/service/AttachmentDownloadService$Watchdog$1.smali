.class Lcom/android/email/service/AttachmentDownloadService$Watchdog$1;
.super Ljava/lang/Object;
.source "AttachmentDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/AttachmentDownloadService$Watchdog;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/AttachmentDownloadService$Watchdog;


# direct methods
.method constructor <init>(Lcom/android/email/service/AttachmentDownloadService$Watchdog;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/email/service/AttachmentDownloadService$Watchdog$1;->this$0:Lcom/android/email/service/AttachmentDownloadService$Watchdog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 184
    invoke-static {}, Lcom/android/email/service/AttachmentDownloadService;->watchdogAlarm()V

    .line 185
    return-void
.end method
