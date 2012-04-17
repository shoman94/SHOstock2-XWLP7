.class Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SMIMEUtilsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 11839
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11839
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;-><init>(Lcom/android/email/activity/MessageCompose;)V

    return-void
.end method


# virtual methods
.method public attachmentProgress(ZJI)V
    .locals 1
    .parameter "progress"
    .parameter "attachmentId"
    .parameter "dialogType"

    .prologue
    .line 11872
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageCompose;->attachmentProgress(Z)V

    .line 11873
    return-void
.end method

.method public displayToast(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 11848
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageCompose;->displayToast(I)V

    .line 11849
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 11856
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 11857
    return-void
.end method

.method public markAsRead(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 11864
    return-void
.end method

.method public messageChanged()V
    .locals 1

    .prologue
    .line 11860
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->messageChanged()V

    .line 11861
    return-void
.end method

.method public setDownloadSmimeAttachment(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 11867
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mDownloadSmimeAttachment:Z
    invoke-static {v0, p1}, Lcom/android/email/activity/MessageCompose;->access$8802(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 11868
    return-void
.end method

.method public updateAttachmentCallback(JZLjava/lang/String;)V
    .locals 1
    .parameter "attachmentId"
    .parameter "b"
    .parameter "attachmentName"

    .prologue
    .line 11842
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mLoadAttachmentId:J
    invoke-static {v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->access$12402(Lcom/android/email/activity/MessageCompose;J)J

    .line 11843
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mLoadAttachmentSave:Z
    invoke-static {v0, p3}, Lcom/android/email/activity/MessageCompose;->access$12502(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 11844
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mLoadAttachmentName:Ljava/lang/String;
    invoke-static {v0, p4}, Lcom/android/email/activity/MessageCompose;->access$12602(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    .line 11845
    return-void
.end method
