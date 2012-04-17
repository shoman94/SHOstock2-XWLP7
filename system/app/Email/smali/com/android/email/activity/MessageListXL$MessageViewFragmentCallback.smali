.class Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Lcom/android/email/activity/MessageViewFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageViewFragmentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter

    .prologue
    .line 1650
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1650
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;-><init>(Lcom/android/email/activity/MessageListXL;)V

    return-void
.end method


# virtual methods
.method public moveToNewerView()V
    .locals 1

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->moveToNewer()Z
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$3500(Lcom/android/email/activity/MessageListXL;)Z

    .line 1824
    return-void
.end method

.method public moveToOlderView()V
    .locals 1

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->moveToOlder()Z
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$3400(Lcom/android/email/activity/MessageListXL;)Z

    .line 1819
    return-void
.end method

.method public onBeforeMessageDelete()V
    .locals 2

    .prologue
    .line 1719
    sget-boolean v0, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v0, :cond_0

    .line 1720
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    const/4 v1, 0x0

    #calls: Lcom/android/email/activity/MessageListXL;->onBackPressed(Z)Z
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListXL;->access$2900(Lcom/android/email/activity/MessageListXL;Z)Z

    .line 1724
    :goto_0
    return-void

    .line 1723
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->onCurrentMessageGone()V
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2800(Lcom/android/email/activity/MessageListXL;)V

    goto :goto_0
.end method

.method public onCalendarLinkClicked(J)V
    .locals 1
    .parameter "epochEventStartTime"

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, p1, p2}, Lcom/android/email/activity/ActivityHelper;->openCalendar(Landroid/app/Activity;J)V

    .line 1715
    return-void
.end method

.method public onCompose()V
    .locals 7

    .prologue
    const-wide/16 v4, -0x1

    .line 1781
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->IsEAS()Z
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$3100(Lcom/android/email/activity/MessageListXL;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1782
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v3}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    .line 1813
    :cond_0
    :goto_0
    return-void

    .line 1786
    :cond_1
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$3000()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mMessageId:J
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$3200(Lcom/android/email/activity/MessageListXL;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mMailboxId:J
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$3300(Lcom/android/email/activity/MessageListXL;)J

    move-result-wide v2

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1787
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .line 1788
    .local v0, accountId:J
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$2700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/Controller;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mMessageId:J
    invoke-static {v3}, Lcom/android/email/activity/MessageListXL;->access$3200(Lcom/android/email/activity/MessageListXL;)J

    move-result-wide v3

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1789
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->isAccountSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1792
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v3}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    goto :goto_0

    .line 1795
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v2}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto :goto_0

    .line 1799
    .end local v0           #accountId:J
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$2700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/Controller;

    move-result-object v2

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$3000()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mMessageId:J
    invoke-static {v5}, Lcom/android/email/activity/MessageListXL;->access$3200(Lcom/android/email/activity/MessageListXL;)J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1800
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->isAccountSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1803
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v3}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 1806
    :cond_4
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v2}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method public onForward()V
    .locals 5

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$3000()J

    move-result-wide v1

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 1745
    :goto_0
    return-void

    .line 1742
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onLoadMessageError(Ljava/lang/String;)V
    .locals 0
    .parameter "errorMessage"

    .prologue
    .line 1697
    return-void
.end method

.method public onLoadMessageFinished()V
    .locals 0

    .prologue
    .line 1693
    return-void
.end method

.method public onLoadMessageStarted()V
    .locals 0

    .prologue
    .line 1688
    return-void
.end method

.method public onMessageNotExists()V
    .locals 1

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->goBackToMailbox()V

    .line 1683
    return-void
.end method

.method public onMessageSetUnread()V
    .locals 1

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->goBackToMailbox()V

    .line 1678
    return-void
.end method

.method public onMessageViewGone()V
    .locals 1

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->stopMessageOrderManager()V
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2500(Lcom/android/email/activity/MessageListXL;)V

    .line 1661
    return-void
.end method

.method public onMessageViewShown(I)V
    .locals 1
    .parameter "mailboxType"

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->invalidateOptionsMenu()V

    .line 1654
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->updateMessageOrderManager()V
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2400(Lcom/android/email/activity/MessageListXL;)V

    .line 1655
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->updateNavigationArrows()V
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)V

    .line 1656
    return-void
.end method

.method public onMoveMessage()V
    .locals 4

    .prologue
    .line 1728
    const/4 v1, 0x1

    new-array v0, v1, [J

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1731
    .local v0, messageIds:[J
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->onMoveMessages([J)V
    invoke-static {v1, v0}, Lcom/android/email/activity/MessageListXL;->access$1600(Lcom/android/email/activity/MessageListXL;[J)V

    .line 1732
    return-void
.end method

.method public onReply()V
    .locals 5

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$3000()J

    move-result-wide v1

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1757
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 1763
    :goto_0
    return-void

    .line 1760
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onReplyAll()V
    .locals 5

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$3000()J

    move-result-wide v1

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1770
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 1776
    :goto_0
    return-void

    .line 1773
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onRespondedToInvite(I)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1702
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_0

    .line 1703
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$2600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageOrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Lcom/android/email/activity/MessageCompose;->actionMeetingResponse(Landroid/content/Context;JI)V

    .line 1709
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->onCurrentMessageGone()V
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2800(Lcom/android/email/activity/MessageListXL;)V

    .line 1710
    return-void

    .line 1706
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$2600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageOrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/email/Controller;->sendMeetingResponse(JI)V

    goto :goto_0
.end method

.method public onUrlInMessageClicked(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/android/email/activity/ActivityHelper;->openUrlInMessage(Landroid/app/Activity;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public removeIrmProtection(J)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/Controller;->loadMore(J)V

    .line 1830
    return-void
.end method
