.class final Lcom/android/email/service/AttachmentDownloadService$1;
.super Ljava/lang/Object;
.source "AttachmentDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/AttachmentDownloadService;->attachmentChanged(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$flags:I

.field final synthetic val$id:J

.field final synthetic val$service:Lcom/android/email/service/AttachmentDownloadService;


# direct methods
.method constructor <init>(Lcom/android/email/service/AttachmentDownloadService;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 976
    iput-object p1, p0, Lcom/android/email/service/AttachmentDownloadService$1;->val$service:Lcom/android/email/service/AttachmentDownloadService;

    iput-wide p2, p0, Lcom/android/email/service/AttachmentDownloadService$1;->val$id:J

    iput p4, p0, Lcom/android/email/service/AttachmentDownloadService$1;->val$flags:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 978
    iget-object v1, p0, Lcom/android/email/service/AttachmentDownloadService$1;->val$service:Lcom/android/email/service/AttachmentDownloadService;

    iget-wide v2, p0, Lcom/android/email/service/AttachmentDownloadService$1;->val$id:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 979
    .local v0, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v0, :cond_0

    .line 985
    iget v1, p0, Lcom/android/email/service/AttachmentDownloadService$1;->val$flags:I

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 986
    iget-object v1, p0, Lcom/android/email/service/AttachmentDownloadService$1;->val$service:Lcom/android/email/service/AttachmentDownloadService;

    invoke-virtual {v1, v0}, Lcom/android/email/service/AttachmentDownloadService;->onChange(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 988
    :cond_0
    return-void
.end method
