.class Lcom/android/email/service/MailService$5;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/MailService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/MailService;

.field final synthetic val$alarmManager:Landroid/app/AlarmManager;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/android/email/service/MailService;Landroid/app/AlarmManager;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/email/service/MailService$5;->this$0:Lcom/android/email/service/MailService;

    iput-object p2, p0, Lcom/android/email/service/MailService$5;->val$alarmManager:Landroid/app/AlarmManager;

    iput p3, p0, Lcom/android/email/service/MailService$5;->val$startId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/email/service/MailService$5;->this$0:Lcom/android/email/service/MailService;

    invoke-virtual {v0}, Lcom/android/email/service/MailService;->refreshSyncReports()V

    .line 398
    iget-object v0, p0, Lcom/android/email/service/MailService$5;->this$0:Lcom/android/email/service/MailService;

    iget-object v1, p0, Lcom/android/email/service/MailService$5;->val$alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->reschedule(Landroid/app/AlarmManager;)V

    .line 399
    iget-object v0, p0, Lcom/android/email/service/MailService$5;->this$0:Lcom/android/email/service/MailService;

    iget v1, p0, Lcom/android/email/service/MailService$5;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    .line 400
    return-void
.end method
