.class Lcom/android/email/adapter/SncAdapter$11;
.super Ljava/lang/Thread;
.source "SncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/adapter/SncAdapter;->loadAttachment(JJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/adapter/SncAdapter;

.field final synthetic val$accountId:J

.field final synthetic val$attachmentId:J

.field final synthetic val$mailboxId:J

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/adapter/SncAdapter;Ljava/lang/String;JJJJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/android/email/adapter/SncAdapter$11;->this$0:Lcom/android/email/adapter/SncAdapter;

    iput-wide p3, p0, Lcom/android/email/adapter/SncAdapter$11;->val$accountId:J

    iput-wide p5, p0, Lcom/android/email/adapter/SncAdapter$11;->val$messageId:J

    iput-wide p7, p0, Lcom/android/email/adapter/SncAdapter$11;->val$mailboxId:J

    iput-wide p9, p0, Lcom/android/email/adapter/SncAdapter$11;->val$attachmentId:J

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter$11;->this$0:Lcom/android/email/adapter/SncAdapter;

    #getter for: Lcom/android/email/adapter/SncAdapter;->mMessagingController:Lcom/android/email/SncMessagingController;
    invoke-static {v0}, Lcom/android/email/adapter/SncAdapter;->access$200(Lcom/android/email/adapter/SncAdapter;)Lcom/android/email/SncMessagingController;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/adapter/SncAdapter$11;->val$accountId:J

    iget-wide v3, p0, Lcom/android/email/adapter/SncAdapter$11;->val$messageId:J

    iget-wide v5, p0, Lcom/android/email/adapter/SncAdapter$11;->val$mailboxId:J

    iget-wide v7, p0, Lcom/android/email/adapter/SncAdapter$11;->val$attachmentId:J

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/email/SncMessagingController;->loadAttachment(JJJJZ)V

    .line 1327
    return-void
.end method
