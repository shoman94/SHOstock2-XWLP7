.class final Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 6826
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 6827
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 6828
    return-void
.end method

.method private getNewPosition(Landroid/content/Intent;Landroid/database/Cursor;I)I
    .locals 10
    .parameter "intent"
    .parameter "cursor"
    .parameter "defaultValue"

    .prologue
    const-wide/16 v8, -0x1

    .line 6961
    move v2, p3

    .line 6963
    .local v2, newPosition:I
    const-string v7, "select_id"

    invoke-virtual {p1, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 6964
    .local v3, targetMsgId:J
    const-string v7, "message_type"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6969
    .local v5, targetMsgType:Ljava/lang/String;
    cmp-long v7, v3, v8

    if-eqz v7, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 6970
    const/4 v7, -0x1

    invoke-interface {p2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 6971
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6972
    const/4 v7, 0x1

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 6973
    .local v0, msgId:J
    const/4 v7, 0x0

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 6974
    .local v6, type:Ljava/lang/String;
    cmp-long v7, v0, v3

    if-nez v7, :cond_0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 6975
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 6980
    .end local v0           #msgId:J
    .end local v6           #type:Ljava/lang/String;
    :cond_1
    return v2
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 6985
    sparse-switch p1, :sswitch_data_0

    .line 7017
    :cond_0
    :goto_0
    const/16 v0, 0x70a

    if-ne p1, v0, :cond_3

    sget-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7019
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 7023
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;)V

    .line 7025
    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    .line 7029
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mFlagDeletedAll:Z
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10702(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 7030
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2300(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 7042
    :cond_1
    :goto_1
    return-void

    .line 6988
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9902(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 6989
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9702(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 6997
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->clearCheckedList()V

    .line 6998
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 7001
    if-nez p3, :cond_0

    .line 7002
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9600(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7003
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9700(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7004
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    .line 7005
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9702(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto :goto_0

    .line 7007
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->refreshCheckedList()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9800(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_0

    .line 7032
    :cond_3
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleteComplete / token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7033
    if-ge p3, v3, :cond_1

    .line 7034
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->resetChildView()V

    .line 7035
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 7036
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7037
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "DeleteAnimation Progress Dismissed with onDeleteComplete()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7038
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_1

    .line 6985
    nop

    :sswitch_data_0
    .sparse-switch
        0x70a -> :sswitch_0
        0x25e4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 6832
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteWithAnimation:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2000(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6958
    .end local p2
    :goto_0
    return-void

    .line 6835
    .restart local p2
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 6940
    :sswitch_0
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v3, "onQueryComplete(),HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static {v0, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 6941
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 6943
    .local v1, threadId:J
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 6944
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10600(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;-><init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteDraftMessage(Z)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-result-object v4

    const-wide/16 v10, -0x1

    cmp-long v0, v1, v10

    if-nez v0, :cond_10

    const/4 v0, 0x1

    move v3, v0

    :goto_1
    if-eqz p3, :cond_11

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v5

    const v10, 0x7f0901bb

    invoke-static {v4, v3, v0, v5, v10}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v7

    .line 6950
    .local v7, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 6951
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 6953
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v3, "onQueryComplete(),HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static {v0, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6837
    .end local v1           #threadId:J
    .end local v7           #dlg:Landroid/app/AlertDialog;
    .restart local p2
    :sswitch_1
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v3, "onQueryComplete(),MESSAGE_LIST_QUERY_TOKEN"

    invoke-static {v0, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6839
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getIntent()Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/content/Intent;

    move-result-object v0

    const/4 v3, -0x1

    invoke-direct {p0, v0, p3, v3}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->getNewPosition(Landroid/content/Intent;Landroid/database/Cursor;I)I

    move-result v9

    .line 6841
    .local v9, newSelectionPos:I
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 6842
    .local v6, cursorCount:I
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 6844
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9600(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6845
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9700(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6846
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    .line 6847
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9702(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 6852
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->resetChildView()V

    .line 6853
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 6854
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6855
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v3, "DeleteAnimation Progress Dismissed with onQueryComplete()"

    invoke-static {v0, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6856
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 6864
    :cond_2
    if-nez v6, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9900(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6867
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 6871
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2300(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto/16 :goto_0

    .line 6849
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->refreshCheckedList()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9800(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_3

    .line 6873
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10000(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsOnScreen:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10100(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6875
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v8

    .line 6876
    .local v8, hasDraft:Z
    if-nez v6, :cond_5

    if-nez v8, :cond_5

    .line 6877
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 6878
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 6879
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 6880
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2300(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 6881
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10002(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto/16 :goto_0

    .line 6883
    :cond_5
    if-eqz v6, :cond_6

    if-nez v8, :cond_6

    .line 6884
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 6885
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->resetMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2100(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 6886
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10002(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 6897
    .end local v8           #hasDraft:Z
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->hideMessageList(Z)V
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10300(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    .line 6902
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10400(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-gtz v0, :cond_e

    .line 6903
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 6904
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10500(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_9

    .line 6906
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 6923
    :cond_9
    :goto_5
    const/4 v0, -0x1

    if-eq v9, v0, :cond_a

    .line 6924
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MessageListView;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    .line 6926
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 6930
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsAnimationEnable:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1500(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_b

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_b

    .line 6932
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    .line 6936
    :cond_b
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete(),MESSAGE_LIST_QUERY_TOKEN, mMsgListAdapter.getCount()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", animationIdx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget v4, v4, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6889
    :cond_c
    if-nez v6, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9900(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 6891
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->initRecipientsEditor()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10200(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 6893
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_6

    .line 6894
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->requestFocus()Z

    goto/16 :goto_4

    .line 6910
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 6911
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->requestFocus()Z

    goto/16 :goto_5

    .line 6916
    :cond_e
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    .line 6919
    :cond_f
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10500(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6920
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_5

    .line 6944
    .end local v6           #cursorCount:I
    .end local v9           #newSelectionPos:I
    .end local p2
    .restart local v1       #threadId:J
    :cond_10
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_1

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 6835
    :sswitch_data_0
    .sparse-switch
        0x70b -> :sswitch_0
        0x2537 -> :sswitch_1
    .end sparse-switch
.end method
