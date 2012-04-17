.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;
.super Landroid/os/Handler;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 948
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 949
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 950
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v7, 0x111

    .line 953
    const/4 v2, 0x0

    .line 955
    .local v2, mContact:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$600()Landroid/os/ConditionVariable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->block()V

    .line 956
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$600()Landroid/os/ConditionVariable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->close()V

    .line 958
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 959
    .local v0, copyMsg:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 961
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 963
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 965
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 967
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 969
    .local v3, temp:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 970
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v6, "<++++++++++>Sync"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listCreateSimple(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    invoke-static {v4, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v2

    .line 974
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 975
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v4, v6, :cond_1

    .line 976
    const/16 v4, 0x70

    iput v4, v0, Landroid/os/Message;->what:I

    .line 977
    const/16 v4, 0x13

    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 978
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v4

    iput v4, v0, Landroid/os/Message;->arg2:I

    .line 979
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 980
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 981
    .local v1, data:Landroid/os/Bundle;
    const-string v4, "args"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 983
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v6, 0x0

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I
    invoke-static {v4, v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1202(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I

    .line 984
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v6, 0x0

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z
    invoke-static {v4, v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1102(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 1009
    .end local v1           #data:Landroid/os/Bundle;
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1010
    monitor-exit v5

    goto :goto_0

    .line 1014
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 985
    :cond_1
    if-nez v2, :cond_2

    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v4, v6, :cond_2

    .line 986
    const/16 v4, 0x70

    iput v4, v0, Landroid/os/Message;->what:I

    .line 987
    const/16 v4, 0x12

    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 988
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v6, 0x0

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I
    invoke-static {v4, v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1202(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I

    .line 989
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v6, 0x0

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z
    invoke-static {v4, v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1102(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    goto :goto_1

    .line 991
    :cond_2
    const/16 v4, 0x70

    iput v4, v0, Landroid/os/Message;->what:I

    .line 992
    const/16 v4, 0x14

    iput v4, v0, Landroid/os/Message;->arg1:I

    goto :goto_1

    .line 995
    :cond_3
    if-eqz v2, :cond_4

    .line 996
    const/16 v4, 0x70

    iput v4, v0, Landroid/os/Message;->what:I

    .line 997
    const/16 v4, 0x13

    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 998
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v4

    iput v4, v0, Landroid/os/Message;->arg2:I

    .line 999
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1000
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1001
    .restart local v1       #data:Landroid/os/Bundle;
    const-string v4, "args"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_1

    .line 1004
    .end local v1           #data:Landroid/os/Bundle;
    :cond_4
    const/16 v4, 0x70

    iput v4, v0, Landroid/os/Message;->what:I

    .line 1005
    const/16 v4, 0x12

    iput v4, v0, Landroid/os/Message;->arg1:I

    goto :goto_1

    .line 1012
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v4

    const/16 v6, 0x111

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1013
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1014
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 963
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method
