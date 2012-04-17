.class public Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
.super Ljava/lang/Object;
.source "AttachmentDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadRequest"
.end annotation


# instance fields
.field final accountId:J

.field final attachmentId:J

.field inProgress:Z

.field lastCallbackTime:J

.field lastProgress:I

.field lastStatusCode:I

.field final messageId:J

.field final priority:I

.field startTime:J

.field final time:J


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 3
    .parameter "context"
    .parameter "attachment"

    .prologue
    .line 211
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    .line 212
    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    .line 213
    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 214
    .local v0, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v0, :cond_0

    .line 215
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    .line 216
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->messageId:J

    .line 220
    :goto_0
    #calls: Lcom/android/email/service/AttachmentDownloadService;->getPriority(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    invoke-static {p2}, Lcom/android/email/service/AttachmentDownloadService;->access$100(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v1

    iput v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    .line 222
    return-void

    .line 218
    :cond_0
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->messageId:J

    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/android/email/service/AttachmentDownloadService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 234
    instance-of v2, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    if-nez v2, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 236
    check-cast v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    .line 237
    .local v0, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    iget-wide v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    iget-wide v4, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    long-to-int v0, v0

    return v0
.end method
