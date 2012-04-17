.class Lcom/android/email/activity/MessageCompose$25;
.super Landroid/os/Handler;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 6952
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 6955
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 7238
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 6957
    :sswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 6958
    .local v7, string:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$8500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_3

    .line 6959
    :cond_1
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->addToAddressFromEditText(Z)Z
    invoke-static {v9, v6}, Lcom/android/email/activity/MessageCompose;->access$3300(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 6960
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mEditFromBubble:Z
    invoke-static {v9, v6}, Lcom/android/email/activity/MessageCompose;->access$3602(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 6961
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6962
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/email/activity/AddressTextView;->setSelection(I)V

    .line 6963
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/email/activity/AddressTextView;->setCursorVisible(Z)V

    .line 6964
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/AddressTextView;->requestFocus()Z

    .line 6965
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mEditFromBubble:Z
    invoke-static {v9, v8}, Lcom/android/email/activity/MessageCompose;->access$3602(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 6993
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V
    invoke-static {v8, v6}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;Z)V

    goto :goto_0

    .line 6968
    :cond_3
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$8600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_5

    .line 6970
    :cond_4
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->addCcAddressFromEditText(Z)Z
    invoke-static {v9, v6}, Lcom/android/email/activity/MessageCompose;->access$3400(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 6971
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mEditFromBubble:Z
    invoke-static {v9, v6}, Lcom/android/email/activity/MessageCompose;->access$3602(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 6972
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6973
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/email/activity/AddressTextView;->setSelection(I)V

    .line 6974
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/email/activity/AddressTextView;->setCursorVisible(Z)V

    .line 6975
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/AddressTextView;->requestFocus()Z

    .line 6976
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mEditFromBubble:Z
    invoke-static {v9, v8}, Lcom/android/email/activity/MessageCompose;->access$3602(Lcom/android/email/activity/MessageCompose;Z)Z

    goto :goto_1

    .line 6979
    :cond_5
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$8700(Lcom/android/email/activity/MessageCompose;)Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_2

    .line 6981
    :cond_6
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->addBccAddressFromEditText(Z)Z
    invoke-static {v9, v6}, Lcom/android/email/activity/MessageCompose;->access$3500(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 6982
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mEditFromBubble:Z
    invoke-static {v9, v6}, Lcom/android/email/activity/MessageCompose;->access$3602(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 6983
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6984
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/email/activity/AddressTextView;->setSelection(I)V

    .line 6989
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/email/activity/AddressTextView;->setCursorVisible(Z)V

    .line 6990
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/AddressTextView;->requestFocus()Z

    .line 6991
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mEditFromBubble:Z
    invoke-static {v9, v8}, Lcom/android/email/activity/MessageCompose;->access$3602(Lcom/android/email/activity/MessageCompose;Z)Z

    goto/16 :goto_1

    .line 6996
    .end local v7           #string:Ljava/lang/String;
    :sswitch_2
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$8500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_8

    .line 6997
    :cond_7
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->rebuildBubbleLayout(I)V

    goto/16 :goto_0

    .line 6998
    :cond_8
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$8600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_a

    .line 7000
    :cond_9
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->rebuildBubbleLayout(I)V

    goto/16 :goto_0

    .line 7001
    :cond_a
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$8700(Lcom/android/email/activity/MessageCompose;)Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    .line 7003
    :cond_b
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->rebuildBubbleLayout(I)V

    goto/16 :goto_0

    .line 7007
    :sswitch_3
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_10

    .line 7008
    .local v6, progress:Z
    :goto_2
    if-eqz v6, :cond_12

    .line 7010
    const/4 v4, 0x0

    .line 7011
    .local v4, message:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDownloadSmimeAttachment:Z
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$8800(Lcom/android/email/activity/MessageCompose;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 7012
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v9, :cond_11

    .line 7013
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    const v10, 0x7f0804df

    invoke-virtual {v9, v10}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 7018
    :cond_c
    :goto_3
    :try_start_0
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$8900(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$8900(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 7020
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$8900(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 7025
    :cond_d
    :goto_4
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$8900(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    if-nez v9, :cond_e

    .line 7026
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v10, Landroid/app/ProgressDialog;

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v10, v11}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageCompose;->access$8902(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 7029
    :cond_e
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$8900(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 7030
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$8900(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    new-instance v10, Lcom/android/email/activity/MessageCompose$25$1;

    invoke-direct {v10, p0}, Lcom/android/email/activity/MessageCompose$25$1;-><init>(Lcom/android/email/activity/MessageCompose$25;)V

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 7044
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$8900(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 7045
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$8900(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 7046
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$8900(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->show()V

    .line 7050
    :cond_f
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v8, v6}, Lcom/android/email/activity/MessageCompose;->setProgressBarIndeterminateVisibility(Z)V

    goto/16 :goto_0

    .end local v4           #message:Ljava/lang/String;
    .end local v6           #progress:Z
    :cond_10
    move v6, v8

    .line 7007
    goto/16 :goto_2

    .line 7014
    .restart local v4       #message:Ljava/lang/String;
    .restart local v6       #progress:Z
    :cond_11
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v9, :cond_c

    .line 7015
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    const v10, 0x7f0804e0

    invoke-virtual {v9, v10}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 7053
    .end local v4           #message:Ljava/lang/String;
    :cond_12
    :try_start_1
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$8900(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v8

    if-eqz v8, :cond_13

    .line 7054
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$8900(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V

    .line 7055
    :cond_13
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v9, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8, v9}, Lcom/android/email/activity/MessageCompose;->access$8902(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 7056
    :catch_0
    move-exception v8

    goto/16 :goto_0

    .line 7061
    .end local v6           #progress:Z
    :sswitch_4
    iget v9, p1, Landroid/os/Message;->arg1:I

    int-to-long v0, v9

    .line 7064
    .local v0, attachmentId:J
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDownloadSmimeAttachment:Z
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$8800(Lcom/android/email/activity/MessageCompose;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 7065
    const-wide/16 v9, -0x1

    cmp-long v9, v0, v9

    if-nez v9, :cond_17

    .line 7067
    :try_start_2
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$8900(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    if-eqz v9, :cond_14

    .line 7068
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$8900(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    .line 7069
    :cond_14
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v10, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageCompose;->access$8902(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 7073
    :goto_5
    const/4 v4, 0x0

    .line 7074
    .restart local v4       #message:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    if-eqz v9, :cond_16

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v9, :cond_16

    .line 7075
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    const v10, 0x7f0804e2

    invoke-virtual {v9, v10}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 7079
    :cond_15
    :goto_6
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v9, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 7076
    :cond_16
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    if-eqz v9, :cond_15

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v9, :cond_15

    .line 7077
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    const v10, 0x7f0804e1

    invoke-virtual {v9, v10}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 7081
    .end local v4           #message:Ljava/lang/String;
    :cond_17
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$4600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-result-object v9

    if-eqz v9, :cond_18

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$4600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$4600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v9

    sget-object v10, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v9, v10, :cond_0

    .line 7083
    :cond_18
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v10, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v10, v11, v0, v1}, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageCompose;J)V

    #setter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageCompose;->access$4602(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    .line 7084
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$4600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v9, v8}, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 7090
    .end local v0           #attachmentId:J
    :sswitch_5
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-static {v9, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 7093
    :sswitch_6
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v10, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v10, v11, v12}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    #setter for: Lcom/android/email/activity/MessageCompose;->mGetCertificatesTask:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageCompose;->access$9002(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;)Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    .line 7094
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mGetCertificatesTask:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v9, v8}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 7099
    :sswitch_7
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mInlineImageDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$5300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mInlineImageDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$5300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$5000(Lcom/android/email/activity/MessageCompose;)I

    move-result v9

    iget-object v10, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I
    invoke-static {v10}, Lcom/android/email/activity/MessageCompose;->access$5100(Lcom/android/email/activity/MessageCompose;)I

    move-result v10

    if-lt v9, v10, :cond_0

    .line 7100
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z
    invoke-static {v9, v8}, Lcom/android/email/activity/MessageCompose;->access$4902(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 7101
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I
    invoke-static {v9, v8}, Lcom/android/email/activity/MessageCompose;->access$5102(Lcom/android/email/activity/MessageCompose;I)I

    .line 7102
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I
    invoke-static {v9, v8}, Lcom/android/email/activity/MessageCompose;->access$5002(Lcom/android/email/activity/MessageCompose;I)I

    .line 7103
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mInlineImageDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$5300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    .line 7105
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9100(Lcom/android/email/activity/MessageCompose;)Landroid/os/AsyncTask;

    move-result-object v9

    if-eqz v9, :cond_19

    .line 7106
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9100(Lcom/android/email/activity/MessageCompose;)Landroid/os/AsyncTask;

    move-result-object v9

    invoke-static {v9}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 7108
    :cond_19
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v10, Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v12, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mMessageId:J
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$9200(Lcom/android/email/activity/MessageCompose;)J

    move-result-wide v12

    invoke-direct {v10, v11, v12, v13}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;J)V

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v10, v8}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v8

    #setter for: Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;
    invoke-static {v9, v8}, Lcom/android/email/activity/MessageCompose;->access$9102(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 7117
    :sswitch_8
    :try_start_3
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$9300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v8

    if-eqz v8, :cond_1a

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$9300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$9300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v8

    if-nez v8, :cond_0

    .line 7119
    :cond_1a
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v9, Landroid/app/ProgressDialog;

    iget-object v10, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v9, v10}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v8, v9}, Lcom/android/email/activity/MessageCompose;->access$9302(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 7120
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$9300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v8

    new-instance v9, Lcom/android/email/activity/MessageCompose$25$2;

    invoke-direct {v9, p0}, Lcom/android/email/activity/MessageCompose$25$2;-><init>(Lcom/android/email/activity/MessageCompose$25;)V

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 7132
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$9300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v9}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800b3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 7134
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$9300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 7135
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$9300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 7137
    :catch_1
    move-exception v3

    .line 7138
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "Compose >>"

    const-string v9, "MSG_LOADMORE_START - Exception"

    invoke-static {v8, v9}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 7139
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 7158
    .end local v3           #e:Ljava/lang/Exception;
    :sswitch_9
    const-string v9, "Compose >>"

    const-string v10, "MSG_MESSAGE_CHANGED"

    invoke-static {v9, v10}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 7159
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9100(Lcom/android/email/activity/MessageCompose;)Landroid/os/AsyncTask;

    move-result-object v9

    if-eqz v9, :cond_1b

    .line 7160
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9100(Lcom/android/email/activity/MessageCompose;)Landroid/os/AsyncTask;

    move-result-object v9

    invoke-static {v9}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 7162
    :cond_1b
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v10, Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v12, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mMessageId:J
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$9200(Lcom/android/email/activity/MessageCompose;)J

    move-result-wide v12

    invoke-direct {v10, v11, v12, v13}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;J)V

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v10, v8}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v8

    #setter for: Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;
    invoke-static {v9, v8}, Lcom/android/email/activity/MessageCompose;->access$9102(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 7166
    :sswitch_a
    const-string v9, "Compose >>"

    const-string v10, "MSG_LOADMORE_FINISH"

    invoke-static {v9, v10}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 7168
    :try_start_4
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    if-eqz v9, :cond_1c

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 7169
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 7179
    :cond_1c
    :goto_7
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    if-eqz v9, :cond_1d

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v9, :cond_1d

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v9, :cond_1d

    .line 7180
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v10, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v12, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    #setter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageCompose;->access$4602(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    .line 7181
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$4600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v9, v8}, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 7174
    :catch_2
    move-exception v3

    .line 7175
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v9, "Compose >>"

    const-string v10, "Exception - MSG_LOADMORE_FINISH"

    invoke-static {v9, v10}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 7176
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 7183
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1d
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9100(Lcom/android/email/activity/MessageCompose;)Landroid/os/AsyncTask;

    move-result-object v9

    if-eqz v9, :cond_1e

    .line 7184
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9100(Lcom/android/email/activity/MessageCompose;)Landroid/os/AsyncTask;

    move-result-object v9

    invoke-static {v9}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 7186
    :cond_1e
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v10, Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v12, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mMessageId:J
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$9200(Lcom/android/email/activity/MessageCompose;)J

    move-result-wide v12

    invoke-direct {v10, v11, v12, v13}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;J)V

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v10, v8}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v8

    #setter for: Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;
    invoke-static {v9, v8}, Lcom/android/email/activity/MessageCompose;->access$9102(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 7194
    :sswitch_b
    const/4 v5, 0x0

    .line 7196
    .local v5, misspelledWordCount:I
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 7198
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mProgressSpellChecking:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9400(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    if-eqz v9, :cond_1f

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mProgressSpellChecking:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9400(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 7199
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mProgressSpellChecking:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9400(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    .line 7202
    :cond_1f
    if-nez v5, :cond_0

    .line 7204
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->getComposerActivityContext()Landroid/content/Context;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9500(Lcom/android/email/activity/MessageCompose;)Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7206
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v9}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0805bd

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 7208
    new-array v9, v6, [Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v10}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0805c0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v8

    new-instance v10, Lcom/android/email/activity/MessageCompose$25$3;

    invoke-direct {v10, p0}, Lcom/android/email/activity/MessageCompose$25$3;-><init>(Lcom/android/email/activity/MessageCompose$25;)V

    invoke-virtual {v2, v9, v10}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7215
    const v9, 0x7f080042

    new-instance v10, Lcom/android/email/activity/MessageCompose$25$4;

    invoke-direct {v10, p0}, Lcom/android/email/activity/MessageCompose$25$4;-><init>(Lcom/android/email/activity/MessageCompose$25;)V

    invoke-virtual {v2, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7221
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 7223
    sput-boolean v8, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    .line 7229
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$2600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v8

    sget-boolean v9, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    invoke-virtual {v8, v9}, Lcom/android/email/activity/ToolBarScrollView;->changeSpellcheckBtnState(Z)V

    .line 7231
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$2700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v8

    sget-boolean v9, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    invoke-virtual {v8, v9}, Lcom/android/email/activity/ToolBarScrollView;->changeSpellcheckBtnState(Z)V

    goto/16 :goto_0

    .line 7070
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    .end local v5           #misspelledWordCount:I
    .restart local v0       #attachmentId:J
    :catch_3
    move-exception v9

    goto/16 :goto_5

    .line 7022
    .end local v0           #attachmentId:J
    .restart local v4       #message:Ljava/lang/String;
    .restart local v6       #progress:Z
    :catch_4
    move-exception v9

    goto/16 :goto_4

    .line 6955
    :sswitch_data_0
    .sparse-switch
        0x8f -> :sswitch_3
        0x90 -> :sswitch_4
        0x91 -> :sswitch_5
        0x92 -> :sswitch_6
        0x93 -> :sswitch_7
        0x94 -> :sswitch_8
        0x95 -> :sswitch_a
        0x96 -> :sswitch_0
        0x97 -> :sswitch_9
        0x98 -> :sswitch_b
        0x7011214 -> :sswitch_1
        0x7011215 -> :sswitch_2
    .end sparse-switch
.end method
