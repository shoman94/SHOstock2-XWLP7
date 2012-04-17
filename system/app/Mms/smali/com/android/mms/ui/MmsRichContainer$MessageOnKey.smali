.class Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;
.super Ljava/lang/Object;
.source "MmsRichContainer.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsRichContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageOnKey"
.end annotation


# instance fields
.field private mSlideIndex:I

.field private mType:I

.field final synthetic this$0:Lcom/android/mms/ui/MmsRichContainer;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MmsRichContainer;II)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "index"

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput p2, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    .line 372
    iput p3, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    .line 373
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 378
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-eq v6, v7, :cond_1

    .line 379
    const/16 v6, 0x42

    if-ne p2, v6, :cond_0

    move v4, v5

    .line 527
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 386
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v7, :cond_3

    .line 387
    :cond_2
    const/4 v2, 0x0

    .line 388
    .local v2, msg:Landroid/os/Message;
    packed-switch p2, :pswitch_data_0

    .line 444
    .end local v2           #msg:Landroid/os/Message;
    :cond_3
    const/16 v6, 0x43

    if-ne p2, v6, :cond_9

    .line 445
    iget v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    packed-switch v6, :pswitch_data_1

    :cond_4
    :goto_1
    move v4, v5

    .line 501
    goto :goto_0

    .line 390
    .restart local v2       #msg:Landroid/os/Message;
    :pswitch_1
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 391
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x28

    iget v8, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    iget v9, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    invoke-static {v6, v7, v8, v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 394
    :cond_5
    if-eqz v2, :cond_6

    .line 395
    iget v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    packed-switch v6, :pswitch_data_2

    :cond_6
    move v4, v5

    .line 411
    goto :goto_0

    .line 398
    :pswitch_2
    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v5, v5, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    if-nez v5, :cond_0

    .line 399
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 404
    :pswitch_3
    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v5, v5, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    if-nez v5, :cond_0

    .line 405
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 413
    :pswitch_4
    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 414
    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x29

    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    iget v8, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    invoke-static {v5, v6, v7, v8, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_0

    .line 418
    :pswitch_5
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v6

    if-nez v6, :cond_3

    .line 419
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v4

    const/16 v6, 0x2b

    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    iget v8, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    invoke-static {v4, v6, v7, v8, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 420
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    move v4, v5

    .line 421
    goto/16 :goto_0

    .line 448
    .end local v2           #msg:Landroid/os/Message;
    :pswitch_6
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 449
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    #calls: Lcom/android/mms/ui/MmsRichContainer;->setDeleteAnimation(II)V
    invoke-static {v4, v6, v7}, Lcom/android/mms/ui/MmsRichContainer;->access$200(Lcom/android/mms/ui/MmsRichContainer;II)V

    goto/16 :goto_1

    .line 451
    :cond_7
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 452
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v4

    iget v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    invoke-static {v4, v8, v6, v7, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 454
    .restart local v2       #msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 460
    .end local v2           #msg:Landroid/os/Message;
    :pswitch_7
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 461
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v4

    iget v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    invoke-static {v4, v8, v6, v7, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 463
    .restart local v2       #msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 465
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static {v4, v6}, Lcom/android/mms/ui/MmsRichContainer;->access$300(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 466
    .local v1, mediaView:Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v4, v4, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 467
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestFocus()Z

    goto/16 :goto_1

    .line 475
    .end local v1           #mediaView:Landroid/widget/RelativeLayout;
    .end local v2           #msg:Landroid/os/Message;
    :pswitch_8
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 478
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v4, v4, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static {v4, v6}, Lcom/android/mms/ui/MmsRichContainer;->access$300(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_8

    .line 480
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static {v4, v6}, Lcom/android/mms/ui/MmsRichContainer;->access$300(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->requestFocus()Z

    goto/16 :goto_1

    .line 482
    :cond_8
    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;
    invoke-static {v4, v6}, Lcom/android/mms/ui/MmsRichContainer;->access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_4

    .line 486
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 487
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v7}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Lcom/android/mms/ui/MmsRichContainer;->setLastElementFocus(Landroid/view/ViewGroup;)V

    .line 488
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/MmsRichContainer;->removeView(Landroid/view/View;)V

    .line 489
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v4

    const/4 v6, 0x4

    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    iget v8, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    invoke-static {v4, v6, v7, v8, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 491
    .restart local v2       #msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 502
    .end local v2           #msg:Landroid/os/Message;
    :cond_9
    iget v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 509
    const/4 v6, 0x4

    if-eq p2, v6, :cond_0

    const/16 v6, 0x52

    if-eq p2, v6, :cond_0

    .line 510
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/MmsRichContainer;->access$500(Lcom/android/mms/ui/MmsRichContainer;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewRootImpl;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v3

    .line 514
    .local v3, sWindowSession:Landroid/view/IWindowSession;
    if-eqz v3, :cond_a

    .line 515
    const/4 v4, 0x1

    :try_start_0
    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :cond_a
    :goto_2
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v4, v6, v5}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 520
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move v4, v5

    .line 524
    goto/16 :goto_0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 388
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 445
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 395
    :pswitch_data_2
    .packed-switch 0x5
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
