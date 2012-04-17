.class Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Lcom/android/email/activity/MessageOrderManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageOrderManagerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter

    .prologue
    .line 1397
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1397
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;-><init>(Lcom/android/email/activity/MessageListXL;)V

    return-void
.end method


# virtual methods
.method public onMessageNotFound()V
    .locals 1

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->goBackToMailbox()V

    .line 1407
    return-void
.end method

.method public onMessagesChanged()V
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->updateNavigationArrows()V
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)V

    .line 1401
    return-void
.end method
