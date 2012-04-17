.class Lcom/android/mms/data/WorkingMessage$7;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->saveSmsToPending()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$msgText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2707
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$7;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$7;->val$conv:Lcom/android/mms/data/Conversation;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$7;->val$msgText:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2709
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$7;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->access$1000(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    .line 2713
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$7;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v1

    .line 2714
    .local v1, threadId:J
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$7;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v0

    .line 2716
    .local v0, semiSepRecipients:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$7;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$7;->val$msgText:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->createPendingSmsMessage(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2719
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$7;->this$0:Lcom/android/mms/data/WorkingMessage;

    #calls: Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V
    invoke-static {v3, v1, v2}, Lcom/android/mms/data/WorkingMessage;->access$1100(Lcom/android/mms/data/WorkingMessage;J)V

    .line 2720
    return-void
.end method
