.class Lcom/android/mms/data/WorkingMessage$4;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$contents:Ljava/lang/String;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2136
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$4;->val$conv:Lcom/android/mms/data/Conversation;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$4;->val$contents:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2138
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$4;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v0

    .line 2139
    .local v0, threadId:J
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$4;->val$conv:Lcom/android/mms/data/Conversation;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 2140
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$4;->val$contents:Ljava/lang/String;

    #calls: Lcom/android/mms/data/WorkingMessage;->updateDraftSmsMessage(JLjava/lang/String;)V
    invoke-static {v2, v0, v1, v3}, Lcom/android/mms/data/WorkingMessage;->access$700(Lcom/android/mms/data/WorkingMessage;JLjava/lang/String;)V

    .line 2141
    return-void
.end method
