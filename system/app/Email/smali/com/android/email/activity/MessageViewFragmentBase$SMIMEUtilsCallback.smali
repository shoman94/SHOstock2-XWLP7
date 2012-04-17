.class Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SMIMEUtilsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter

    .prologue
    .line 10057
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10057
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    return-void
.end method


# virtual methods
.method public attachmentProgress(ZJI)V
    .locals 3
    .parameter "progress"
    .parameter "attachmentId"
    .parameter "dialogType"

    .prologue
    .line 10070
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->attachmentProgress(ZJI)V

    .line 10071
    const-string v0, "SMIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMIMEUtilsCallback::attachmentProgress(), displayr true/false :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10073
    return-void
.end method

.method public displayToast(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 10066
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->displayToast(I)V

    .line 10067
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 10076
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->goBackToMessageList()V

    .line 10078
    return-void
.end method

.method public markAsRead(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 10086
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->onMarkAsRead(Z)V
    invoke-static {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2400(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    .line 10088
    return-void
.end method

.method public messageChanged()V
    .locals 1

    .prologue
    .line 10081
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->messageChanged()V

    .line 10083
    return-void
.end method

.method public setDownloadSmimeAttachment(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 10091
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadSmimeAttachment:Z
    invoke-static {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7702(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z

    .line 10092
    return-void
.end method

.method public updateAttachmentCallback(JZLjava/lang/String;)V
    .locals 1
    .parameter "attachmentId"
    .parameter "b"
    .parameter "attachmentName"

    .prologue
    .line 10060
    sput-wide p1, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentId:J

    .line 10061
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentSave:Z
    invoke-static {v0, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9102(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z

    .line 10062
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentName:Ljava/lang/String;
    invoke-static {v0, p4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9202(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    .line 10063
    return-void
.end method
