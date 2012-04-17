.class Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Lcom/android/email/activity/MessageListFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageListFragmentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter

    .prologue
    .line 1527
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1527
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;-><init>(Lcom/android/email/activity/MessageListXL;)V

    return-void
.end method


# virtual methods
.method public onComposeFromMessageListFragment()V
    .locals 1

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->onCompose()Z
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1300(Lcom/android/email/activity/MessageListXL;)Z

    .line 1554
    return-void
.end method

.method public onConversationMoveAlways([J[Ljava/lang/String;I)V
    .locals 1
    .parameter "messageIds"
    .parameter "convIds"
    .parameter "bundleConversationType"

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->onConversationMoveAlways([J[Ljava/lang/String;I)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/email/activity/MessageListXL;->access$1700(Lcom/android/email/activity/MessageListXL;[J[Ljava/lang/String;I)V

    .line 1588
    return-void
.end method

.method public onEnterSelectionMode(Z)V
    .locals 2
    .parameter "enter"

    .prologue
    .line 1568
    if-eqz p1, :cond_1

    .line 1569
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 1576
    :cond_0
    :goto_0
    return-void

    .line 1571
    :cond_1
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$1400()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1572
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 1573
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method public onFollowUpViewShown()V
    .locals 1

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->showFollowUpFlag()V

    .line 1595
    return-void
.end method

.method public onForward(J)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 1646
    return-void
.end method

.method public onMailBoxList()V
    .locals 2

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$800(Lcom/android/email/activity/MessageListXL;)Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1548
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onMailBoxList()Z

    .line 1549
    return-void
.end method

.method public onMailboxNotFound()V
    .locals 0

    .prologue
    .line 1543
    return-void
.end method

.method public onMessageOpen(JJJI)V
    .locals 2
    .parameter "messageId"
    .parameter "messageMailboxId"
    .parameter "listMailboxId"
    .parameter "type"

    .prologue
    .line 1531
    const/4 v0, 0x1

    if-ne p7, v0, :cond_0

    .line 1532
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->clearSelection()V

    .line 1533
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->actionEditDraft(Landroid/content/Context;J)V

    .line 1538
    :goto_0
    return-void

    .line 1535
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->clearSelection()V

    .line 1536
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    sget v1, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NORMAL:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMessage(JI)V

    goto :goto_0
.end method

.method public onMoveMessages([J)V
    .locals 1
    .parameter "messageIds"

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->onMoveMessages([J)V
    invoke-static {v0, p1}, Lcom/android/email/activity/MessageListXL;->access$1600(Lcom/android/email/activity/MessageListXL;[J)V

    .line 1581
    return-void
.end method

.method public onRefreshFromMessageListFragment()V
    .locals 1

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onRefreshFromFragment()Z

    .line 1564
    return-void
.end method

.method public onReply(J)V
    .locals 2
    .parameter "messageId"

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 1636
    return-void
.end method

.method public onReplyAll(J)V
    .locals 2
    .parameter "messageId"

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 1641
    return-void
.end method

.method public onSearchFromMessageListFragment()V
    .locals 1

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onOpenSearch()V

    .line 1559
    return-void
.end method

.method public refreshAllAccount()V
    .locals 1

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onRefresh()V

    .line 1630
    return-void
.end method

.method public setItemCheckboxPressed(ZLcom/android/email/activity/MessageListItem;)V
    .locals 1
    .parameter "bool"
    .parameter "item"

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mItemCheckboxPressed:Z
    invoke-static {v0, p1}, Lcom/android/email/activity/MessageListXL;->access$1802(Lcom/android/email/activity/MessageListXL;Z)Z

    .line 1610
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItem;
    invoke-static {v0, p2}, Lcom/android/email/activity/MessageListXL;->access$1902(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListItem;)Lcom/android/email/activity/MessageListItem;

    .line 1611
    return-void
.end method

.method public setSubItemCheckboxPressed(ZLcom/android/email/activity/MessageListSubTitleItem;)V
    .locals 1
    .parameter "bool"
    .parameter "item"

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mSubItemCheckboxPressed:Z
    invoke-static {v0, p1}, Lcom/android/email/activity/MessageListXL;->access$2002(Lcom/android/email/activity/MessageListXL;Z)Z

    .line 1616
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListSubTitleItem;
    invoke-static {v0, p2}, Lcom/android/email/activity/MessageListXL;->access$2102(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListSubTitleItem;)Lcom/android/email/activity/MessageListSubTitleItem;

    .line 1617
    return-void
.end method

.method public setTimeFormat(Ljava/text/DateFormat;Ljava/text/DateFormat;Ljava/text/DateFormat;)V
    .locals 1
    .parameter "dateFormat"
    .parameter "dayFormat"
    .parameter "timeFormat"

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mDateFormat:Ljava/text/DateFormat;
    invoke-static {v0, p1}, Lcom/android/email/activity/MessageListXL;->access$2202(Lcom/android/email/activity/MessageListXL;Ljava/text/DateFormat;)Ljava/text/DateFormat;

    .line 1624
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mTimeFormat:Ljava/text/DateFormat;
    invoke-static {v0, p3}, Lcom/android/email/activity/MessageListXL;->access$2302(Lcom/android/email/activity/MessageListXL;Ljava/text/DateFormat;)Ljava/text/DateFormat;

    .line 1625
    return-void
.end method
