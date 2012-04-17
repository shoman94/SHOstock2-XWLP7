.class Lcom/android/email/adapter/LegacyAdapter$4;
.super Ljava/lang/Thread;
.source "LegacyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/adapter/LegacyAdapter;->loadAttachment(JJJJZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/adapter/LegacyAdapter;

.field final synthetic val$accountId:J

.field final synthetic val$attachmentId:J

.field final synthetic val$background:Z

.field final synthetic val$mailboxId:J

.field final synthetic val$messageId:J

.field final synthetic val$prune:Z

.field final synthetic val$reconnect:Z


# direct methods
.method constructor <init>(Lcom/android/email/adapter/LegacyAdapter;JJJJZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/email/adapter/LegacyAdapter$4;->this$0:Lcom/android/email/adapter/LegacyAdapter;

    iput-wide p2, p0, Lcom/android/email/adapter/LegacyAdapter$4;->val$accountId:J

    iput-wide p4, p0, Lcom/android/email/adapter/LegacyAdapter$4;->val$messageId:J

    iput-wide p6, p0, Lcom/android/email/adapter/LegacyAdapter$4;->val$mailboxId:J

    iput-wide p8, p0, Lcom/android/email/adapter/LegacyAdapter$4;->val$attachmentId:J

    iput-boolean p10, p0, Lcom/android/email/adapter/LegacyAdapter$4;->val$prune:Z

    iput-boolean p11, p0, Lcom/android/email/adapter/LegacyAdapter$4;->val$reconnect:Z

    iput-boolean p12, p0, Lcom/android/email/adapter/LegacyAdapter$4;->val$background:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 202
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    iget-wide v1, p0, Lcom/android/email/adapter/LegacyAdapter$4;->val$accountId:J

    iget-wide v3, p0, Lcom/android/email/adapter/LegacyAdapter$4;->val$messageId:J

    iget-wide v5, p0, Lcom/android/email/adapter/LegacyAdapter$4;->val$mailboxId:J

    iget-wide v7, p0, Lcom/android/email/adapter/LegacyAdapter$4;->val$attachmentId:J

    sget-object v9, Lcom/android/email/adapter/ProtocolAdapter;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    iget-boolean v10, p0, Lcom/android/email/adapter/LegacyAdapter$4;->val$prune:Z

    iget-boolean v11, p0, Lcom/android/email/adapter/LegacyAdapter$4;->val$reconnect:Z

    iget-boolean v12, p0, Lcom/android/email/adapter/LegacyAdapter$4;->val$background:Z

    invoke-virtual/range {v0 .. v12}, Lcom/android/email/MessagingController;->loadAttachment(JJJJLcom/android/email/MessagingListener;ZZZ)V

    .line 206
    return-void
.end method
