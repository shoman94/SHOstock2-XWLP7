.class Lcom/android/email/ControllerResultUiThreadWrapper$3;
.super Ljava/lang/Object;
.source "ControllerResultUiThreadWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/ControllerResultUiThreadWrapper;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

.field final synthetic val$accountId:J

.field final synthetic val$messageId:J

.field final synthetic val$progress:I

.field final synthetic val$result:Lcom/android/emailcommon/mail/MessagingException;


# direct methods
.method constructor <init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper$3;,"Lcom/android/email/ControllerResultUiThreadWrapper.3;"
    iput-object p1, p0, Lcom/android/email/ControllerResultUiThreadWrapper$3;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    iput-object p2, p0, Lcom/android/email/ControllerResultUiThreadWrapper$3;->val$result:Lcom/android/emailcommon/mail/MessagingException;

    iput-wide p3, p0, Lcom/android/email/ControllerResultUiThreadWrapper$3;->val$accountId:J

    iput-wide p5, p0, Lcom/android/email/ControllerResultUiThreadWrapper$3;->val$messageId:J

    iput p7, p0, Lcom/android/email/ControllerResultUiThreadWrapper$3;->val$progress:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 98
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper$3;,"Lcom/android/email/ControllerResultUiThreadWrapper.3;"
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper$3;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper$3;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    #getter for: Lcom/android/email/ControllerResultUiThreadWrapper;->mWrappee:Lcom/android/email/Controller$Result;
    invoke-static {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->access$000(Lcom/android/email/ControllerResultUiThreadWrapper;)Lcom/android/email/Controller$Result;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/ControllerResultUiThreadWrapper$3;->val$result:Lcom/android/emailcommon/mail/MessagingException;

    iget-wide v2, p0, Lcom/android/email/ControllerResultUiThreadWrapper$3;->val$accountId:J

    iget-wide v4, p0, Lcom/android/email/ControllerResultUiThreadWrapper$3;->val$messageId:J

    iget v6, p0, Lcom/android/email/ControllerResultUiThreadWrapper$3;->val$progress:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_0
.end method
