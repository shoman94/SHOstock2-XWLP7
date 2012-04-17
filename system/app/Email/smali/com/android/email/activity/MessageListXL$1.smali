.class Lcom/android/email/activity/MessageListXL$1;
.super Ljava/lang/Thread;
.source "MessageListXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListXL;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;

.field final synthetic val$accountId_Pending:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListXL;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 931
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$1;->this$0:Lcom/android/email/activity/MessageListXL;

    iput-wide p2, p0, Lcom/android/email/activity/MessageListXL$1;->val$accountId_Pending:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$1;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXL$1;->val$accountId_Pending:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/SecurityPolicy;->policiesRequired(J)V

    .line 936
    return-void
.end method
