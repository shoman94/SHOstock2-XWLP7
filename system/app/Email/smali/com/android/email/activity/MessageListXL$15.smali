.class Lcom/android/email/activity/MessageListXL$15;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListXL;->onMessageFinished(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;

.field final synthetic val$accountId:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListXL;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4671
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$15;->this$0:Lcom/android/email/activity/MessageListXL;

    iput-wide p2, p0, Lcom/android/email/activity/MessageListXL$15;->val$accountId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4674
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$3000()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/email/activity/MessageListXL$15;->val$accountId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 4677
    :cond_0
    return-void
.end method
