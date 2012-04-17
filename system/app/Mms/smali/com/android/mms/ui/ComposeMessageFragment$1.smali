.class Lcom/android/mms/ui/ComposeMessageFragment$1;
.super Landroid/os/Handler;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x1

    .line 530
    iget v4, p1, Landroid/os/Message;->what:I

    .line 531
    .local v4, what:I
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 532
    .local v1, position:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 534
    .local v2, type:I
    sparse-switch v4, :sswitch_data_0

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 537
    :sswitch_0
    if-ne v2, v6, :cond_1

    .line 538
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 540
    :cond_1
    if-ne v2, v8, :cond_2

    .line 541
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 543
    :cond_2
    if-ne v2, v9, :cond_3

    .line 544
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 546
    :cond_3
    const/16 v5, 0x8

    if-ne v2, v5, :cond_4

    .line 547
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->removeText()Z

    .line 549
    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 551
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    if-nez v5, :cond_6

    .line 552
    const/16 v3, 0xf

    .line 563
    .local v3, updateType:I
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 565
    const/16 v5, 0xf

    if-ne v3, v5, :cond_5

    .line 566
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 567
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 554
    .end local v3           #updateType:I
    :cond_6
    if-eq v2, v6, :cond_7

    if-ne v2, v8, :cond_8

    .line 556
    :cond_7
    const/16 v3, 0xe

    .restart local v3       #updateType:I
    goto :goto_1

    .line 557
    .end local v3           #updateType:I
    :cond_8
    if-ne v2, v9, :cond_9

    .line 558
    const/16 v3, 0x10

    .restart local v3       #updateType:I
    goto :goto_1

    .line 560
    .end local v3           #updateType:I
    :cond_9
    const/16 v3, 0xc

    .restart local v3       #updateType:I
    goto :goto_1

    .line 571
    .end local v3           #updateType:I
    :sswitch_1
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 572
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/mms/data/WorkingMessage;->removeSlide(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 573
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    const/16 v7, 0xd

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 575
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 578
    :cond_a
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 581
    :sswitch_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 583
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v6

    invoke-static {v5, v6, v1, v2}, Lcom/android/mms/ui/MessageUtils;->viewMediaContents(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 590
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_3
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->showAddAttachmentDialog(ZI)V
    invoke-static {v5, v7, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;ZI)V

    goto/16 :goto_0

    .line 594
    :sswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 595
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    invoke-virtual {v5, v7, v6}, Landroid/sec/clipboard/ClipboardExManager;->setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 600
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/OnEventListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 601
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/OnEventListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    goto/16 :goto_0

    .line 597
    :cond_b
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    invoke-virtual {v5, v6, v7}, Landroid/sec/clipboard/ClipboardExManager;->setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_2

    .line 606
    :sswitch_5
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_c

    .line 608
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto/16 :goto_0

    .line 609
    :cond_c
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getVisibility()I

    move-result v5

    if-nez v5, :cond_d

    .line 611
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 612
    :cond_d
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 614
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    goto/16 :goto_0

    .line 617
    :sswitch_6
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->requestFocusOnConverationList()V
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$900(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto/16 :goto_0

    .line 534
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x14 -> :sswitch_4
        0x28 -> :sswitch_5
        0x2b -> :sswitch_6
    .end sparse-switch
.end method
