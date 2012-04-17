.class final Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field private mDeleteEventHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 1454
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    .line 1455
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1456
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/16 v7, 0xc9

    const/4 v6, 0x0

    .line 1614
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->clearCheckedList()V

    .line 1615
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$3002(Z)Z

    .line 1618
    packed-switch p1, :pswitch_data_0

    .line 1680
    :cond_0
    :goto_0
    return-void

    .line 1620
    :pswitch_0
    const-string v3, "Mms/ConversationListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeleteComplete(),DELETE_ALL_CONVERSATION_TOKEN,mIsDeleteMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$1100(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;)V

    .line 1627
    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    .line 1628
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 1629
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 1631
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$1100(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1632
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3, v6, v6}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZ)V

    .line 1636
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 1637
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1642
    :pswitch_1
    const-string v3, "Mms/ConversationListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeleteComplete(),DELETE_CONVERSATION_TOKEN,mIsDeleteMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$1100(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    if-eqz p2, :cond_4

    move-object v0, p2

    .line 1647
    check-cast v0, Lcom/android/mms/ui/DeleteInfo;

    .line 1649
    .local v0, deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v3, :cond_2

    .line 1650
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1653
    :cond_2
    iget-wide v1, v0, Lcom/android/mms/ui/DeleteInfo;->mThreadId:J

    .line 1656
    .local v1, threadId:J
    if-lez p3, :cond_3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    .line 1657
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v6}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    .line 1663
    :cond_3
    iget-boolean v3, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v3, :cond_4

    .line 1666
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;)V

    .line 1669
    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    .line 1671
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 1675
    .end local v0           #deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    .end local v1           #threadId:J
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$1100(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1676
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3, v6, v6}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZ)V

    goto/16 :goto_0

    .line 1618
    :pswitch_data_0
    .packed-switch 0x709
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 15
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1466
    sparse-switch p1, :sswitch_data_0

    .line 1605
    const-string v1, "Mms/ConversationListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQueryComplete called with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 1468
    .restart local p2
    :sswitch_0
    const-string v1, "Mms/ConversationListFragment"

    const-string v4, "onQueryComplete(),THREAD_LIST_FAKE_VIEW_QUERY_TOKEN"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarEnabled(Z)V

    .line 1472
    const/4 v12, 0x0

    .line 1473
    .local v12, fakeCursorCount:I
    if-eqz p3, :cond_1

    .line 1474
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 1481
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1484
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v4, 0x0

    #calls: Lcom/android/mms/ui/ConversationListFragment;->updateEmptyScreen(IZ)V
    invoke-static {v1, v12, v4}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;IZ)V

    .line 1487
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const-wide/16 v4, 0xc8

    #calls: Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryDelayed(J)V
    invoke-static {v1, v4, v5}, Lcom/android/mms/ui/ConversationListFragment;->access$2800(Lcom/android/mms/ui/ConversationListFragment;J)V

    goto :goto_0

    .line 1492
    .end local v12           #fakeCursorCount:I
    :sswitch_1
    const-string v1, "Mms/ConversationListFragment"

    const-string v4, "onQueryComplete(),THREAD_LIST_QUERY_TOKEN"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarEnabled(Z)V

    .line 1497
    const/4 v13, 0x0

    .line 1498
    .local v13, fullCursorCount:I
    if-eqz p3, :cond_2

    .line 1499
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 1506
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1509
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1512
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->setTotalQuantityTextView(I)V
    invoke-static {v1, v13}, Lcom/android/mms/ui/ConversationListFragment;->access$2900(Lcom/android/mms/ui/ConversationListFragment;I)V

    .line 1518
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v4, 0x1

    #calls: Lcom/android/mms/ui/ConversationListFragment;->updateEmptyScreen(IZ)V
    invoke-static {v1, v13, v4}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;IZ)V

    .line 1522
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1100(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/mms/ui/ConversationListFragment;->access$3000()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1523
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->reCalulateCheckedThreads()V

    .line 1524
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v10

    .line 1525
    .local v10, checkedCount:I
    if-lez v10, :cond_8

    .line 1526
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    if-ne v1, v10, :cond_7

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/mms/ui/ConversationListFragment;->setSelectAll(Z)V

    .line 1527
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 1533
    :goto_2
    invoke-static {}, Lcom/android/mms/ui/ConversationListFragment;->access$3000()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1535
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3002(Z)Z

    .line 1542
    .end local v10           #checkedCount:I
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->isFirstItemChanged()Z
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3100(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1543
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    .line 1551
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/data/Conversation;->startCaching(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1526
    .restart local v10       #checkedCount:I
    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    .line 1531
    :cond_8
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_2

    .line 1544
    .end local v10           #checkedCount:I
    :cond_9
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3200(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v1

    const/4 v4, -0x1

    if-le v1, v4, :cond_6

    .line 1545
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->restoreListOffset()V
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3300(Lcom/android/mms/ui/ConversationListFragment;)V

    goto :goto_3

    .line 1555
    .end local v13           #fullCursorCount:I
    :sswitch_2
    const-string v1, "Mms/ConversationListFragment"

    const-string v4, "onQueryComplete(),HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1558
    .local v2, threadId:J
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3400(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1560
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->notifyDeleteStart()V
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3500(Lcom/android/mms/ui/ConversationListFragment;)V

    .line 1562
    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$1800(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;-><init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$3600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-result-object v6

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_a

    const/4 v1, 0x1

    move v5, v1

    :goto_4
    if-eqz p3, :cond_b

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_b

    const/4 v1, 0x1

    :goto_5
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v7

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$1700(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_c

    const v4, 0x7f090189

    :goto_6
    invoke-static {v6, v5, v1, v7, v4}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v11

    .line 1568
    .local v11, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    .line 1569
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;
    invoke-static {v1, v11}, Lcom/android/mms/ui/ConversationListFragment;->access$3402(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    .line 1571
    const-string v1, "Mms/ConversationListFragment"

    const-string v4, "onQueryComplete(),HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1562
    .end local v11           #dlg:Landroid/app/AlertDialog;
    :cond_a
    const/4 v1, 0x0

    move v5, v1

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    goto :goto_5

    :cond_c
    const v4, 0x7f0901ba

    goto :goto_6

    .line 1574
    .end local v2           #threadId:J
    .restart local p2
    :sswitch_3
    if-eqz p3, :cond_0

    .line 1577
    const-string v1, "Mms/ConversationListFragment"

    const-string v4, "onQueryComplete(),LOCKED_MESSAGES_IN_SELECTED_TOKEN"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    const/4 v14, 0x0

    .line 1579
    .local v14, hasLockedMessage:Z
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1581
    :cond_d
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/mms/ui/ConversationListAdapter;->isCheckedThreadId(J)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1582
    const/4 v14, 0x1

    .line 1588
    :cond_e
    :goto_7
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedList()[Ljava/lang/Long;

    move-result-object v9

    .line 1589
    .local v9, threadList:[Ljava/lang/Long;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3400(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1591
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->notifyDeleteStart()V
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3500(Lcom/android/mms/ui/ConversationListFragment;)V

    .line 1593
    new-instance v4, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    const-wide/16 v5, -0x1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1800(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    move-result-object v7

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v8

    invoke-direct/range {v4 .. v9}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;-><init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v6

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1700(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_10

    const v1, 0x7f090189

    :goto_8
    invoke-static {v4, v5, v14, v6, v1}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v11

    .line 1598
    .restart local v11       #dlg:Landroid/app/AlertDialog;
    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    .line 1600
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;
    invoke-static {v1, v11}, Lcom/android/mms/ui/ConversationListFragment;->access$3402(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    .line 1602
    const-string v1, "Mms/ConversationListFragment"

    const-string v4, "onQueryComplete(),LOCKED_MESSAGES_IN_SELECTED_TOKEN"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1585
    .end local v9           #threadList:[Ljava/lang/Long;
    .end local v11           #dlg:Landroid/app/AlertDialog;
    :cond_f
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_7

    .line 1593
    .restart local v9       #threadList:[Ljava/lang/Long;
    :cond_10
    const v1, 0x7f0901ba

    goto :goto_8

    .line 1466
    nop

    :sswitch_data_0
    .sparse-switch
        0x6a4 -> :sswitch_0
        0x6a5 -> :sswitch_1
        0x70b -> :sswitch_2
        0x70d -> :sswitch_3
    .end sparse-switch
.end method

.method public setmDeleteEventHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 1460
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    .line 1461
    return-void
.end method
