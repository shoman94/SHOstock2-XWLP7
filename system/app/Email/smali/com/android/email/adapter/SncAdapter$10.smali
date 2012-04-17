.class Lcom/android/email/adapter/SncAdapter$10;
.super Ljava/lang/Thread;
.source "SncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/adapter/SncAdapter;->loadAttachment(JJJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/adapter/SncAdapter;

.field final synthetic val$accountId:J

.field final synthetic val$addFlag:I

.field final synthetic val$attachmentId:J

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/adapter/SncAdapter;Ljava/lang/String;JIJJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1278
    iput-object p1, p0, Lcom/android/email/adapter/SncAdapter$10;->this$0:Lcom/android/email/adapter/SncAdapter;

    iput-wide p3, p0, Lcom/android/email/adapter/SncAdapter$10;->val$attachmentId:J

    iput p5, p0, Lcom/android/email/adapter/SncAdapter$10;->val$addFlag:I

    iput-wide p6, p0, Lcom/android/email/adapter/SncAdapter$10;->val$messageId:J

    iput-wide p8, p0, Lcom/android/email/adapter/SncAdapter$10;->val$accountId:J

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 1285
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/adapter/SncAdapter$10;->val$attachmentId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v10

    .line 1287
    .local v10, attachInfo:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1288
    .local v11, cv:Landroid/content/ContentValues;
    const-string v0, "flags"

    iget v1, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/email/adapter/SncAdapter$10;->val$addFlag:I

    or-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1290
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v0, v11}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1292
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/adapter/SncAdapter$10;->val$messageId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v12

    .line 1294
    .local v12, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter$10;->this$0:Lcom/android/email/adapter/SncAdapter;

    #getter for: Lcom/android/email/adapter/SncAdapter;->mMessagingController:Lcom/android/email/SncMessagingController;
    invoke-static {v0}, Lcom/android/email/adapter/SncAdapter;->access$200(Lcom/android/email/adapter/SncAdapter;)Lcom/android/email/SncMessagingController;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/adapter/SncAdapter$10;->val$accountId:J

    iget-wide v3, p0, Lcom/android/email/adapter/SncAdapter$10;->val$messageId:J

    iget-wide v5, v12, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v7, p0, Lcom/android/email/adapter/SncAdapter$10;->val$attachmentId:J

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/email/SncMessagingController;->loadAttachment(JJJJZ)V

    .line 1296
    return-void
.end method
