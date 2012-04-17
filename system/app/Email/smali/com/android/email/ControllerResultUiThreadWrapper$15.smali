.class Lcom/android/email/ControllerResultUiThreadWrapper$15;
.super Ljava/lang/Object;
.source "ControllerResultUiThreadWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/ControllerResultUiThreadWrapper;->sendMeetingEditedResponseCallback(ZJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

.field final synthetic val$draftId:J

.field final synthetic val$messageId:J

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/email/ControllerResultUiThreadWrapper;ZJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper$15;,"Lcom/android/email/ControllerResultUiThreadWrapper.15;"
    iput-object p1, p0, Lcom/android/email/ControllerResultUiThreadWrapper$15;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    iput-boolean p2, p0, Lcom/android/email/ControllerResultUiThreadWrapper$15;->val$success:Z

    iput-wide p3, p0, Lcom/android/email/ControllerResultUiThreadWrapper$15;->val$messageId:J

    iput-wide p5, p0, Lcom/android/email/ControllerResultUiThreadWrapper$15;->val$draftId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 257
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper$15;,"Lcom/android/email/ControllerResultUiThreadWrapper.15;"
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper$15;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper$15;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    #getter for: Lcom/android/email/ControllerResultUiThreadWrapper;->mWrappee:Lcom/android/email/Controller$Result;
    invoke-static {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->access$000(Lcom/android/email/ControllerResultUiThreadWrapper;)Lcom/android/email/Controller$Result;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/ControllerResultUiThreadWrapper$15;->val$success:Z

    iget-wide v2, p0, Lcom/android/email/ControllerResultUiThreadWrapper$15;->val$messageId:J

    iget-wide v4, p0, Lcom/android/email/ControllerResultUiThreadWrapper$15;->val$draftId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller$Result;->sendMeetingEditedResponseCallback(ZJJ)V

    goto :goto_0
.end method
