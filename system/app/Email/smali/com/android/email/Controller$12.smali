.class Lcom/android/email/Controller$12;
.super Ljava/lang/Thread;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->moveMessageToOtherAccount([JLcom/android/emailcommon/provider/EmailContent$Account;JJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method constructor <init>(Lcom/android/email/Controller;)V
    .locals 0
    .parameter

    .prologue
    .line 2674
    iput-object p1, p0, Lcom/android/email/Controller$12;->this$0:Lcom/android/email/Controller;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2677
    iget-object v0, p0, Lcom/android/email/Controller$12;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;
    invoke-static {v0}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Lcom/android/email/Controller$PendingDownloadController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Controller$PendingDownloadController;->run()V

    .line 2678
    iget-object v0, p0, Lcom/android/email/Controller$12;->this$0:Lcom/android/email/Controller;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;
    invoke-static {v0, v1}, Lcom/android/email/Controller;->access$602(Lcom/android/email/Controller;Lcom/android/email/Controller$PendingDownloadController;)Lcom/android/email/Controller$PendingDownloadController;

    .line 2679
    return-void
.end method
