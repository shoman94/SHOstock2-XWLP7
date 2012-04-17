.class Lcom/android/mms/data/WorkingMessage$3;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$persister:Lcom/google/android/mms/pdu/PduPersister;

.field final synthetic val$sendReq:Lcom/google/android/mms/pdu/SendReq;


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2006
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$3;->val$conv:Lcom/android/mms/data/Conversation;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$3;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iput-object p4, p0, Lcom/android/mms/data/WorkingMessage$3;->val$sendReq:Lcom/google/android/mms/pdu/SendReq;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2009
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    .line 2010
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->val$conv:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 2011
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$200(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2012
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$3;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$3;->val$sendReq:Lcom/google/android/mms/pdu/SendReq;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->access$300(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    #calls: Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;
    invoke-static {v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->access$400(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/mms/data/WorkingMessage;->access$202(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2019
    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$3;->val$conv:Lcom/android/mms/data/Conversation;

    #calls: Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V
    invoke-static {v0, v1}, Lcom/android/mms/data/WorkingMessage;->access$600(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)V

    .line 2021
    return-void

    .line 2014
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$200(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$3;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->access$300(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$3;->val$sendReq:Lcom/google/android/mms/pdu/SendReq;

    #calls: Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->access$500(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    goto :goto_0
.end method
