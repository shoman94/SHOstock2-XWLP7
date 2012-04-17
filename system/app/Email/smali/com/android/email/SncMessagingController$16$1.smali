.class Lcom/android/email/SncMessagingController$16$1;
.super Ljava/lang/Object;
.source "SncMessagingController.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/SncMessagingController$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/SncMessagingController$16;


# direct methods
.method constructor <init>(Lcom/android/email/SncMessagingController$16;)V
    .locals 0
    .parameter

    .prologue
    .line 3535
    iput-object p1, p0, Lcom/android/email/SncMessagingController$16$1;->this$1:Lcom/android/email/SncMessagingController$16;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAttachmentProgress(ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;)V
    .locals 7
    .parameter "progress"
    .parameter "status"

    .prologue
    .line 3537
    iget-object v0, p0, Lcom/android/email/SncMessagingController$16$1;->this$1:Lcom/android/email/SncMessagingController$16;

    iget-object v0, v0, Lcom/android/email/SncMessagingController$16;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v0}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/SncMessagingController$16$1;->this$1:Lcom/android/email/SncMessagingController$16;

    iget-wide v1, v1, Lcom/android/email/SncMessagingController$16;->val$mId:J

    iget-object v3, p0, Lcom/android/email/SncMessagingController$16$1;->this$1:Lcom/android/email/SncMessagingController$16;

    iget-wide v3, v3, Lcom/android/email/SncMessagingController$16;->val$attachmentId:J

    const/4 v5, 0x1

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$ServiceCallback;->loadAttachmentStatus(JJII)V

    .line 3539
    return-void
.end method

.method public messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 3543
    return-void
.end method
