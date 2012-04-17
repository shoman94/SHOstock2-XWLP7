.class Lcom/android/mms/ui/ConversationListFragment$5;
.super Landroid/os/Handler;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$5;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 467
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 475
    :goto_0
    return-void

    .line 469
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$5;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListFragment;->onDeleteStart()V

    goto :goto_0

    .line 472
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$5;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListFragment;->onDeleteCompleted()V

    goto :goto_0

    .line 467
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
