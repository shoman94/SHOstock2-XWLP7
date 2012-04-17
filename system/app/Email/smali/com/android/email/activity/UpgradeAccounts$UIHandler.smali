.class Lcom/android/email/activity/UpgradeAccounts$UIHandler;
.super Landroid/os/Handler;
.source "UpgradeAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UpgradeAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/UpgradeAccounts;


# direct methods
.method constructor <init>(Lcom/android/email/activity/UpgradeAccounts;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public error(ILjava/lang/String;)V
    .locals 2
    .parameter "accountNum"
    .parameter "error"

    .prologue
    .line 586
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 587
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 588
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 589
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 590
    invoke-virtual {p0, v0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 591
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, -0x1

    .line 524
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 550
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 552
    :goto_0
    return-void

    .line 526
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v0, v1

    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->maxProgress:I

    .line 527
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$600(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 530
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v0, v1

    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->progress:I

    .line 531
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$600(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 534
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eq v0, v1, :cond_1

    .line 535
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v0, v1

    iget v1, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->progress:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->progress:I

    .line 539
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$600(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 536
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v0, v1

    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->progress:I

    goto :goto_1

    .line 542
    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    aget-object v1, v0, v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->errorMessage:Ljava/lang/String;

    .line 543
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$600(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;->notifyDataSetChanged()V

    .line 544
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mProceedButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$700(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 547
    :pswitch_4
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/email/activity/UpgradeAccounts;->fetchCredentialsDialog(I)V
    invoke-static {v0, v1}, Lcom/android/email/activity/UpgradeAccounts;->access$800(Lcom/android/email/activity/UpgradeAccounts;I)V

    goto/16 :goto_0

    .line 524
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public incProgress(I)V
    .locals 1
    .parameter "accountNum"

    .prologue
    .line 571
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->incProgress(II)V

    .line 572
    return-void
.end method

.method public incProgress(II)V
    .locals 2
    .parameter "accountNum"
    .parameter "incrementBy"

    .prologue
    .line 575
    if-nez p2, :cond_0

    .line 582
    :goto_0
    return-void

    .line 577
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 578
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 579
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 580
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 581
    invoke-virtual {p0, v0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setMaxProgress(II)V
    .locals 2
    .parameter "accountNum"
    .parameter "max"

    .prologue
    .line 555
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 556
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 557
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 558
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 559
    invoke-virtual {p0, v0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 560
    return-void
.end method

.method public setProgress(II)V
    .locals 2
    .parameter "accountNum"
    .parameter "progress"

    .prologue
    .line 563
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 564
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 565
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 566
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 567
    invoke-virtual {p0, v0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 568
    return-void
.end method

.method public showCredentialsDialog(I)V
    .locals 2
    .parameter "accountNum"

    .prologue
    .line 594
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 595
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 596
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 597
    invoke-virtual {p0, v0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 598
    return-void
.end method
