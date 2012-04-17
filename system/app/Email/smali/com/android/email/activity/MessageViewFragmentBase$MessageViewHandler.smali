.class Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
.super Landroid/os/Handler;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageViewHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter

    .prologue
    .line 10395
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public DeviceAccessError(I)V
    .locals 1
    .parameter "AccessErrorType"

    .prologue
    .line 11436
    const v0, 0x40001

    if-ne p1, v0, :cond_1

    .line 11437
    const/high16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 11440
    :cond_0
    :goto_0
    return-void

    .line 11438
    :cond_1
    const v0, 0x40002

    if-ne p1, v0, :cond_0

    .line 11439
    const v0, 0x80001

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public attachmentProgress(ZJI)V
    .locals 0
    .parameter "progress"
    .parameter "attachmentId"
    .parameter "dialogType"

    .prologue
    .line 11525
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->showSmimeProgressDialog(ZJI)V

    .line 11526
    return-void
.end method

.method public displayToast(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 11357
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 11358
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    .line 11361
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 11362
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 11363
    return-void
.end method

.method public errorIrmRemoval()V
    .locals 1

    .prologue
    .line 11513
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 11514
    return-void
.end method

.method public errorLoadMore(I)V
    .locals 2
    .parameter "errorType"

    .prologue
    .line 11470
    sparse-switch p1, :sswitch_data_0

    .line 11493
    const/high16 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 11497
    :goto_0
    return-void

    .line 11472
    :sswitch_0
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 11476
    :sswitch_1
    const/high16 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 11481
    :sswitch_2
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 11487
    :sswitch_3
    const-string v0, "Email"

    const-string v1, "errorLoadMore : LOADMORE_CANCEL "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11488
    const/high16 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 11470
    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_0
        0x70000 -> :sswitch_1
        0x100000 -> :sswitch_3
    .end sparse-switch
.end method

.method public fetching_attachmentProgress_cancel()V
    .locals 2

    .prologue
    .line 11389
    const/16 v1, 0x10

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 11391
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 11392
    return-void
.end method

.method public finishIrmRemoval()V
    .locals 1

    .prologue
    .line 11509
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 11510
    return-void
.end method

.method public finishLoadMore()V
    .locals 1

    .prologue
    .line 11500
    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 11501
    return-void
.end method

.method public goBackToMessageList()V
    .locals 2

    .prologue
    .line 11366
    const/16 v1, 0xfa0

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 11367
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 11368
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 35
    .parameter "msg"

    .prologue
    .line 10486
    sget-object v30, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v30, :cond_0

    sget-object v30, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    .line 10491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Lcom/android/email/adapter/ProtocolAdapter;->isSevenAccount(J)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 10492
    sget-object v30, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewForSeven;->mZ7Handler:Lcom/android/email/activity/MessageViewForSeven$Z7Handler;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->handleMessage(Landroid/os/Message;)V

    .line 10498
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    sparse-switch v30, :sswitch_data_0

    .line 11352
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 11354
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    .line 10519
    :sswitch_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->showLoadMoreDialog()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 10520
    :catch_0
    move-exception v23

    .line 10521
    .local v23, e:Landroid/view/WindowManager$BadTokenException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "BadTokenException - MSG_LOADMORE_START"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10522
    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    .line 10523
    .end local v23           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v23

    .line 10524
    .local v23, e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException - MSG_LOADMORE_START"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10525
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 10526
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_0

    .line 10527
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v23

    .line 10528
    .local v23, e:Ljava/lang/IllegalArgumentException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalArgumentException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10529
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 10531
    .end local v23           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v23

    .line 10532
    .local v23, e:Ljava/lang/NullPointerException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "NullPointerException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10533
    invoke-virtual/range {v23 .. v23}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 10540
    .end local v23           #e:Ljava/lang/NullPointerException;
    :sswitch_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_2

    .line 10541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5

    .line 10550
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f08032b

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 10542
    :catch_4
    move-exception v23

    .line 10543
    .local v23, e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException - MSG_LOADMORE_FINISH - dismiss()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10544
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 10545
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_1

    .line 10546
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :catch_5
    move-exception v23

    .line 10547
    .local v23, e:Ljava/lang/IllegalArgumentException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalArgumentException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10548
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 10558
    .end local v23           #e:Ljava/lang/IllegalArgumentException;
    :sswitch_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_3

    .line 10559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_6

    .line 10565
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f08032c

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 10560
    :catch_6
    move-exception v23

    .line 10561
    .local v23, e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException - MSG_LOADMORE_ERROR - dismiss()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10562
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 10563
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_2

    .line 10575
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :sswitch_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_4

    .line 10576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_7

    .line 10582
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f08032d

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 10577
    :catch_7
    move-exception v23

    .line 10578
    .restart local v23       #e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException - MSG_LOADMORE_OUTOFMEMORY - dismiss()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10579
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 10580
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_3

    .line 10592
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :sswitch_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_5

    .line 10593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_8

    .line 10599
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f08032f

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 10594
    :catch_8
    move-exception v23

    .line 10595
    .restart local v23       #e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException - MSG_LOADMORE_NULLMSG - dismiss()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10596
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 10597
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_4

    .line 10609
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :sswitch_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_6

    .line 10610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_9

    .line 10616
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f080330

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 10611
    :catch_9
    move-exception v23

    .line 10612
    .restart local v23       #e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException - MSG_LOADMORE_FETCH_FAILURE - dismiss()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10613
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 10614
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_5

    .line 10626
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :sswitch_7
    const-string v30, "Email"

    const-string v31, "MSG_LOADMORE_CANCEL"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10628
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_1

    .line 10629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->hide()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_a

    goto/16 :goto_0

    .line 10630
    :catch_a
    move-exception v23

    .line 10631
    .restart local v23       #e:Ljava/lang/IllegalStateException;
    const-string v30, "Email"

    const-string v31, "IllegalStateException - MSG_LOADMORE_CANCEL - hide()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10632
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 10633
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto/16 :goto_0

    .line 10642
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f08059c

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 10649
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f08059b

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 10656
    :sswitch_a
    sget v30, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    .line 10657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f08059d

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    .line 10662
    const/16 v30, 0x0

    sput v30, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    .line 10663
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 10664
    .local v20, cv:Landroid/content/ContentValues;
    const-string v30, "IRMRemovalFlag"

    sget v31, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    sget-object v31, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "_id="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v33, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static/range {v33 .. v33}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v33

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v20

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10683
    .end local v20           #cv:Landroid/content/ContentValues;
    :cond_7
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    if-eqz v30, :cond_d

    const/16 v28, 0x1

    .line 10686
    .local v28, progress:Z
    :goto_6
    if-eqz v28, :cond_11

    .line 10689
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_e

    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialogShowing:Z

    if-nez v30, :cond_e

    .line 10690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V

    .line 10695
    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-nez v30, :cond_1

    .line 10715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 10716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 10721
    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    if-eqz v30, :cond_f

    .line 10722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v32, 0x7f08026a

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 10732
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadSmimeAttachment:Z
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7700(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v30

    if-eqz v30, :cond_10

    .line 10733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v30

    if-eqz v30, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v30

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    move/from16 v30, v0

    if-eqz v30, :cond_9

    .line 10734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f0804df

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9402(Ljava/lang/String;)Ljava/lang/String;

    .line 10736
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v30

    if-eqz v30, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v30

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    move/from16 v30, v0

    if-eqz v30, :cond_a

    .line 10737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f0804e0

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9402(Ljava/lang/String;)Ljava/lang/String;

    .line 10744
    :cond_a
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9400()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 10750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 10752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_b

    .line 10753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 10755
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    new-instance v31, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;)V

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 10808
    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialogShowing:Z

    if-nez v30, :cond_c

    .line 10809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->show()V

    .line 10810
    :cond_c
    const/16 v30, 0x1

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialogShowing:Z
    :try_end_7
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_d

    goto/16 :goto_0

    .line 10847
    :catch_b
    move-exception v23

    .line 10848
    .local v23, e:Landroid/view/WindowManager$BadTokenException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "BadTokenException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 10849
    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_0

    .line 10683
    .end local v23           #e:Landroid/view/WindowManager$BadTokenException;
    .end local v28           #progress:Z
    :cond_d
    const/16 v28, 0x0

    goto/16 :goto_6

    .line 10691
    .restart local v28       #progress:Z
    :cond_e
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-nez v30, :cond_8

    .line 10692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    new-instance v31, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-direct/range {v31 .. v32}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;
    :try_end_8
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_d

    goto/16 :goto_7

    .line 10850
    :catch_c
    move-exception v23

    .line 10851
    .local v23, e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 10852
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 10730
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :cond_f
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentName:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9200(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
    :try_end_9
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_d

    goto/16 :goto_8

    .line 10853
    :catch_d
    move-exception v23

    .line 10854
    .local v23, e:Ljava/lang/IllegalArgumentException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalArgumentException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10855
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 10740
    .end local v23           #e:Ljava/lang/IllegalArgumentException;
    :cond_10
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f08026c

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v34, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentName:Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9200(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-virtual/range {v30 .. v32}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9402(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_9

    .line 10837
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_12

    .line 10838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V

    .line 10840
    :cond_12
    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialogShowing:Z

    .line 10841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_1

    .line 10842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_a
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_d

    goto/16 :goto_0

    .line 10867
    .end local v28           #progress:Z
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v31, v0

    invoke-static/range {v30 .. v32}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v10

    .line 10868
    .local v10, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsLaunchAttach:Z

    if-eqz v30, :cond_1

    .line 10873
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "MSG_FETCHING_ATTACHMENT_PROGRESS_INIT "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    iget-object v0, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " Total "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 10876
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    .line 10878
    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    if-eqz v30, :cond_13

    .line 10879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v32

    add-int/lit8 v32, v32, 0x1

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " / "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "  "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    iget-object v0, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 10886
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 10887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 10888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 10889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->show()V
    :try_end_b
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_f

    goto/16 :goto_0

    .line 10891
    :catch_e
    move-exception v23

    .line 10892
    .local v23, e:Landroid/view/WindowManager$BadTokenException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "BadTokenException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 10893
    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_0

    .line 10884
    .end local v23           #e:Landroid/view/WindowManager$BadTokenException;
    :cond_13
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    iget-object v0, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
    :try_end_c
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_f

    goto :goto_a

    .line 10894
    :catch_f
    move-exception v23

    .line 10895
    .local v23, e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 10896
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 10904
    .end local v10           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :sswitch_d
    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsLaunchAttach:Z

    if-eqz v30, :cond_1

    .line 10909
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "MSG_FETCHING_ATTACHMENT_PROGRESS_DOWNLOADING TotalCurrent "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 10912
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    .line 10915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-nez v30, :cond_14

    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->progress_rotated:Z

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_14

    .line 10916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->show()V

    .line 10917
    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->progress_rotated:Z

    .line 10918
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "mProgressDialog2 no show "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 10920
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_d
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_d .. :try_end_d} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_11

    goto/16 :goto_0

    .line 10922
    :catch_10
    move-exception v23

    .line 10923
    .local v23, e:Landroid/view/WindowManager$BadTokenException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "BadTokenException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 10924
    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_0

    .line 10925
    .end local v23           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_11
    move-exception v23

    .line 10926
    .local v23, e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 10927
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 10934
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :sswitch_e
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9602(I)I

    .line 10935
    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    .line 10936
    const/16 v30, -0x1

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9802(I)I

    .line 10938
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_15

    .line 10939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_e
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_e .. :try_end_e} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_14

    .line 10951
    :cond_15
    :goto_b
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "MSG_FETCHING_ATTACHMENT_PROGRESS_CANCEL "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10941
    :catch_12
    move-exception v23

    .line 10942
    .local v23, e:Landroid/view/WindowManager$BadTokenException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "BadTokenException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 10943
    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_b

    .line 10944
    .end local v23           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_13
    move-exception v23

    .line 10945
    .local v23, e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 10946
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_b

    .line 10947
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :catch_14
    move-exception v23

    .line 10948
    .local v23, e:Ljava/lang/IllegalArgumentException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalArgumentException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10949
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_b

    .line 10956
    .end local v23           #e:Ljava/lang/IllegalArgumentException;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    .line 10957
    .local v29, uriString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    .line 10958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10962
    .end local v29           #uriString:Ljava/lang/String;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    .line 10963
    .local v21, data:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    .line 10964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v30, v0

    const-string v31, "text/html"

    const-string v32, "utf-8"

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MessageWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10968
    .end local v21           #data:Ljava/lang/String;
    :sswitch_11
    const/16 v24, 0x0

    .local v24, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v19

    .local v19, count:I
    :goto_c
    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 10969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/AttachmentInfo;

    .line 10971
    .local v10, attachment:Lcom/android/email/AttachmentInfo;
    iget-object v0, v10, Lcom/android/email/AttachmentInfo;->mAttachmentViewLin:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    const/16 v30, 0x1

    :goto_d
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 10972
    iget-object v0, v10, Lcom/android/email/AttachmentInfo;->downloadButton:Landroid/widget/ImageButton;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_18

    const/16 v30, 0x1

    :goto_e
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 10973
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_16

    .line 10980
    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialogShowing:Z

    .line 10968
    :cond_16
    add-int/lit8 v24, v24, 0x1

    goto :goto_c

    .line 10971
    :cond_17
    const/16 v30, 0x0

    goto :goto_d

    .line 10972
    :cond_18
    const/16 v30, 0x0

    goto :goto_e

    .line 10985
    .end local v10           #attachment:Lcom/android/email/AttachmentInfo;
    .end local v19           #count:I
    .end local v24           #i:I
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    const v31, 0x7f080085

    const/16 v32, 0x1

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showToast(II)V
    invoke-static/range {v30 .. v32}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8600(Lcom/android/email/activity/MessageViewFragmentBase;II)V

    goto/16 :goto_0

    .line 10989
    :sswitch_13
    sget v30, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_19

    .line 10990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f080113

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    .line 10992
    const/16 v30, 0x0

    sput v30, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    .line 10993
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 10994
    .restart local v20       #cv:Landroid/content/ContentValues;
    const-string v30, "IRMRemovalFlag"

    sget v31, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    sget-object v31, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "_id="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v33, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static/range {v33 .. v33}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v33

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v20

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 11007
    .end local v20           #cv:Landroid/content/ContentValues;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_1a

    .line 11008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V

    .line 11009
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_1b

    .line 11012
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_15
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_f .. :try_end_f} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_17

    .line 11027
    :cond_1b
    :goto_f
    const/16 v24, 0x0

    .restart local v24       #i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v19

    .restart local v19       #count:I
    :goto_10
    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_1c

    .line 11028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/AttachmentInfo;

    .line 11030
    .restart local v10       #attachment:Lcom/android/email/AttachmentInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    check-cast v10, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .end local v10           #attachment:Lcom/android/email/AttachmentInfo;
    move-object/from16 v0, v30

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->onCancelAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z
    invoke-static {v0, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9900(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z

    .line 11027
    add-int/lit8 v24, v24, 0x1

    goto :goto_10

    .line 11013
    .end local v19           #count:I
    .end local v24           #i:I
    :catch_15
    move-exception v23

    .line 11014
    .restart local v23       #e:Ljava/lang/IllegalArgumentException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalArgumentException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11015
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_f

    .line 11016
    .end local v23           #e:Ljava/lang/IllegalArgumentException;
    :catch_16
    move-exception v23

    .line 11017
    .local v23, e:Landroid/view/WindowManager$BadTokenException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "BadTokenException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 11018
    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_f

    .line 11019
    .end local v23           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_17
    move-exception v23

    .line 11020
    .local v23, e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 11021
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_f

    .line 11035
    .end local v23           #e:Ljava/lang/IllegalStateException;
    .restart local v19       #count:I
    .restart local v24       #i:I
    :cond_1c
    const/16 v30, -0x1

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9802(I)I

    .line 11036
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "MSG_NETWORK_ERROR "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/Controller;->IsAttachdownstop()Z

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 11037
    invoke-static {}, Lcom/android/email/Controller;->IsAttachdownstop()Z

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1

    .line 11045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    const v31, 0x7f0800b4

    const/16 v32, 0x1

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showToast(II)V
    invoke-static/range {v30 .. v32}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8600(Lcom/android/email/activity/MessageViewFragmentBase;II)V

    goto/16 :goto_0

    .line 11049
    .end local v19           #count:I
    .end local v24           #i:I
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    const v31, 0x7f08026a

    const/16 v32, 0x0

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showToast(II)V
    invoke-static/range {v30 .. v32}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8600(Lcom/android/email/activity/MessageViewFragmentBase;II)V

    goto/16 :goto_0

    .line 11052
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    const v31, 0x7f0800bc

    const/16 v32, 0x0

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showToast(II)V
    invoke-static/range {v30 .. v32}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8600(Lcom/android/email/activity/MessageViewFragmentBase;II)V

    goto/16 :goto_0

    .line 11056
    :sswitch_16
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/email/AttachmentInfo;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/AttachmentInfo;->iconView:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/graphics/Bitmap;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_18

    goto/16 :goto_0

    .line 11058
    :catch_18
    move-exception v30

    goto/16 :goto_0

    .line 11067
    :sswitch_17
    :try_start_11
    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    if-eqz v30, :cond_1e

    .line 11068
    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9604()I

    move-result v30

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_1d

    .line 11069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1d

    .line 11070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_11
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_11 .. :try_end_11} :catch_19
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_1b

    .line 11092
    :cond_1d
    :goto_11
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "MSG_FINISH_LOAD_ATTACHMENT  "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget-boolean v32, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 11103
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/Long;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 11105
    .local v11, attachmentId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadSmimeAttachment:Z
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7700(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v30

    if-eqz v30, :cond_20

    .line 11107
    new-instance v30, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 11114
    :goto_12
    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    if-eqz v30, :cond_1

    .line 11115
    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v30

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_1

    .line 11116
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9602(I)I

    .line 11117
    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    goto/16 :goto_0

    .line 11077
    .end local v11           #attachmentId:J
    :cond_1e
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_1f

    .line 11078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V

    .line 11079
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1d

    .line 11080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_12
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_12 .. :try_end_12} :catch_19
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_1b

    goto/16 :goto_11

    .line 11082
    :catch_19
    move-exception v23

    .line 11083
    .local v23, e:Landroid/view/WindowManager$BadTokenException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "BadTokenException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 11084
    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_11

    .line 11085
    .end local v23           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1a
    move-exception v23

    .line 11086
    .local v23, e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 11087
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_11

    .line 11088
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :catch_1b
    move-exception v23

    .line 11089
    .local v23, e:Ljava/lang/IllegalArgumentException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalArgumentException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11090
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_11

    .line 11109
    .end local v23           #e:Ljava/lang/IllegalArgumentException;
    .restart local v11       #attachmentId:J
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(J)V
    invoke-static {v0, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7800(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    goto/16 :goto_12

    .line 11129
    .end local v11           #attachmentId:J
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f0803ce

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 11135
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 11138
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->messageChanged()V

    goto/16 :goto_0

    .line 11148
    :sswitch_1b
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_21

    .line 11149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V

    .line 11151
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_22

    .line 11152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V

    .line 11153
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_23

    .line 11154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_1d

    .line 11165
    :cond_23
    :goto_13
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    const/high16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_24

    .line 11166
    const v22, 0x7f08050d

    .line 11171
    .local v22, displayMsg:I
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v22

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 11155
    .end local v22           #displayMsg:I
    :catch_1c
    move-exception v23

    .line 11156
    .local v23, e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException - MSG_LOADMORE_NULLMSG - dismiss()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11157
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 11158
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_13

    .line 11159
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :catch_1d
    move-exception v23

    .line 11160
    .local v23, e:Ljava/lang/IllegalArgumentException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalArgumentException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11161
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_13

    .line 11168
    .end local v23           #e:Ljava/lang/IllegalArgumentException;
    :cond_24
    const v22, 0x7f08050f

    .restart local v22       #displayMsg:I
    goto :goto_14

    .line 11178
    .end local v22           #displayMsg:I
    :sswitch_1c
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "btl : ATTACHMENT_Z7_DOWNLOAD_INIT"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 11180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    if-nez v30, :cond_25

    .line 11181
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "btl : ATTACHMENT_Z7_DOWNLOAD_INIT mAttachmentList == null"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11191
    :cond_25
    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v24

    .restart local v24       #i:I
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttatchmentCount:I
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10100(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v30

    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_26

    .line 11192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    if-eqz v30, :cond_28

    .line 11193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    move-object/from16 v0, v30

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 11194
    .local v5, _attachmentId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    move-object/from16 v0, v30

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 11195
    .local v7, _messageId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v30, v0

    if-nez v30, :cond_27

    .line 11196
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "btl : ATTACHMENT_Z7_DOWNLOAD_INIT _attachmentId == "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " _messageId "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 11200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/android/email/activity/MessageViewFragmentBase;->startAttachmentDownloadForZ7(JJ)V

    .line 11219
    .end local v5           #_attachmentId:J
    .end local v7           #_messageId:J
    :cond_26
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttatchmentCount:I
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10100(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v30

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 11220
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "btl :mAttatchmentCount == mAttachmentCnt_saved"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11203
    .restart local v5       #_attachmentId:J
    .restart local v7       #_messageId:J
    :cond_27
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "btl : ATTACHMENT_Z7_DOWNLOAD_INIT "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " => "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v32, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static/range {v32 .. v32}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v32

    aget-object v32, v32, v24

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 11206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->finishAttachmentDownloadForZ7(J)V

    goto :goto_16

    .line 11191
    .end local v5           #_attachmentId:J
    .end local v7           #_messageId:J
    :cond_28
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_15

    .line 11226
    .end local v24           #i:I
    :sswitch_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/Long;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 11227
    .local v13, attachmentId1:J
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v26, v0

    .line 11229
    .local v26, messageId:J
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "btl : ATTACHMENT_Z7_DOWNLOAD_START"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 11231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v0, v13, v14}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v9

    .line 11233
    .local v9, attachInfo:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v0, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v30, v0

    if-nez v30, :cond_29

    .line 11234
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "btl : ATTACHMENT_Z7_DOWNLOAD_START : mContentUri is null"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 11235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v25

    .line 11236
    .local v25, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v25, :cond_1

    .line 11237
    sget-object v30, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v30, :cond_1

    sget-object v30, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    .line 11238
    sget-object v30, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v9}, Lcom/android/email/activity/MessageViewForSeven;->startDownloadAttachment(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    goto/16 :goto_0

    .line 11243
    .end local v25           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_29
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "btl : ATTACHMENT_Z7_DOWNLOAD_START : mContentUri is not NULL don\'t start download"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11250
    .end local v9           #attachInfo:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v13           #attachmentId1:J
    .end local v26           #messageId:J
    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/Long;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 11251
    .local v15, attachmentId2:J
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "btl : ATTACHMENT_Z7_DOWNLOAD_FINISH"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 11252
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "btl : ATTACHMENT_Z7_DOWNLOAD_FINISHmAttachmentCnt: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " mAttachmentCount : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v32, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttatchmentCount:I
    invoke-static/range {v32 .. v32}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10100(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 11254
    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2a

    .line 11255
    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9708()I

    .line 11257
    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v30

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_2c

    .line 11258
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9602(I)I

    .line 11259
    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    .line 11264
    :goto_17
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "btl : ATTACHMENT_Z7_DOWNLOAD_FINISH  "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget-boolean v32, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 11278
    :cond_2a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/Long;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 11280
    .restart local v11       #attachmentId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadSmimeAttachment:Z
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7700(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v30

    if-eqz v30, :cond_2d

    .line 11282
    new-instance v30, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 11310
    :goto_18
    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 11311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v19

    .line 11312
    .restart local v19       #count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v17

    .line 11315
    .local v17, attfromDB:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_19
    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_2b

    .line 11316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v32, v0

    cmp-long v30, v30, v32

    if-nez v30, :cond_31

    .line 11317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v30, v0

    if-nez v30, :cond_30

    .line 11318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 11319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 11320
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "btl : ATTACHMENT_Z7_DOWNLOAD_FINISH "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " -> "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 11331
    :cond_2b
    :goto_1a
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "btl : ATTACHMENT_Z7_DOWNLOAD_FINISHmAttachmentCnt: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " mAttachmentCount : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v32, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttatchmentCount:I
    invoke-static/range {v32 .. v32}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10100(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " mAttachmentCnt_saved : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 11334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttatchmentCount:I
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10100(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v30

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_32

    .line 11335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->initAttachmentDownloadForZ7()V

    goto/16 :goto_0

    .line 11261
    .end local v11           #attachmentId:J
    .end local v17           #attfromDB:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v19           #count:I
    .end local v24           #i:I
    :cond_2c
    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9608()I

    goto/16 :goto_17

    .line 11284
    .restart local v11       #attachmentId:J
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    invoke-static {v0, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v10

    .line 11285
    .local v10, attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v10, :cond_2e

    .line 11286
    iget-object v0, v10, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    .line 11287
    .local v18, bar:Landroid/widget/ProgressBar;
    if-eqz v18, :cond_2e

    .line 11291
    const/16 v30, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 11292
    const/16 v30, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 11293
    const/16 v30, 0x64

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 11296
    iget-object v0, v10, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    move-object/from16 v30, v0

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11299
    .end local v18           #bar:Landroid/widget/ProgressBar;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentThumbnail(J)V
    invoke-static {v0, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7600(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    .line 11300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadZ7AttForSave:Z
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10200(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2f

    .line 11301
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "Seven attachment download for save"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 11302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(JZ)V
    invoke-static {v0, v11, v12, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8000(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    goto/16 :goto_18

    .line 11304
    :cond_2f
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "Seven attachment download for view"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 11305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(JZ)V
    invoke-static {v0, v11, v12, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8000(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    goto/16 :goto_18

    .line 11324
    .end local v10           #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .restart local v17       #attfromDB:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v19       #count:I
    .restart local v24       #i:I
    :cond_30
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "btl : ATTACHMENT_Z7_DOWNLOAD_FINISH mContentUri is not null"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 11315
    :cond_31
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_19

    .line 11338
    :cond_32
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9602(I)I

    .line 11339
    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    goto/16 :goto_0

    .line 11345
    .end local v11           #attachmentId:J
    .end local v15           #attachmentId2:J
    .end local v17           #attfromDB:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v19           #count:I
    .end local v24           #i:I
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->setMessageWebViewHeight()V
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10300(Lcom/android/email/activity/MessageViewFragmentBase;)V

    goto/16 :goto_0

    .line 10498
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_b
        0x3 -> :sswitch_f
        0x4 -> :sswitch_11
        0x5 -> :sswitch_12
        0x6 -> :sswitch_13
        0xa -> :sswitch_14
        0xc -> :sswitch_15
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0x10 -> :sswitch_e
        0x12 -> :sswitch_16
        0x13 -> :sswitch_17
        0x14 -> :sswitch_18
        0x15 -> :sswitch_19
        0x16 -> :sswitch_1a
        0x17 -> :sswitch_10
        0x18 -> :sswitch_1f
        0x3e8 -> :sswitch_8
        0x3e9 -> :sswitch_9
        0x3ea -> :sswitch_a
        0xfa0 -> :sswitch_0
        0x10000 -> :sswitch_1
        0x186a0 -> :sswitch_1c
        0x186a1 -> :sswitch_1d
        0x186a2 -> :sswitch_1e
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_5
        0x60000 -> :sswitch_6
        0x70000 -> :sswitch_7
        0x80000 -> :sswitch_1b
        0x80001 -> :sswitch_1b
    .end sparse-switch
.end method

.method public loadData(Ljava/lang/String;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 11409
    const/16 v1, 0x17

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 11410
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11411
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 11412
    return-void
.end method

.method public messageChanged()V
    .locals 2

    .prologue
    .line 11518
    const/16 v1, 0x16

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 11519
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 11520
    return-void
.end method

.method public networkError()V
    .locals 1

    .prologue
    .line 11425
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 11426
    return-void
.end method

.method public progress(Z)V
    .locals 2
    .parameter "progress"

    .prologue
    const/4 v1, 0x1

    .line 11397
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 11398
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 11399
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 11400
    return-void

    .line 11398
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public securityRequiredError()V
    .locals 1

    .prologue
    .line 11430
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 11431
    return-void
.end method

.method public setAttachmentsEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 11415
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 11416
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 11417
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 11418
    return-void

    .line 11416
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMessageWebView()V
    .locals 3

    .prologue
    const/16 v2, 0x18

    .line 11608
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->removeMessages(I)V

    .line 11609
    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 11610
    .local v0, msg:Landroid/os/Message;
    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 11611
    return-void
.end method

.method public showLoadMoreDialog()V
    .locals 6

    .prologue
    .line 11579
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 11580
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 11581
    .local v1, ft:Landroid/app/FragmentTransaction;
    const-string v4, "LoadMoreDialog"

    invoke-virtual {v0, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 11583
    .local v3, prev:Landroid/app/Fragment;
    if-eqz v3, :cond_0

    .line 11585
    const-string v4, "Email"

    const-string v5, "Inside if (prev != null)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11587
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 11589
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 11591
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    .line 11592
    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    .line 11596
    :cond_2
    const v4, 0x7f08023a

    const/16 v5, 0xe

    invoke-static {v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->newInstance(II)Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;

    move-result-object v2

    .line 11599
    .local v2, newFragment:Landroid/app/DialogFragment;
    sget-object v4, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 11600
    const-string v4, "LoadMoreDialog"

    invoke-virtual {v2, v0, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 11603
    .end local v2           #newFragment:Landroid/app/DialogFragment;
    :cond_3
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 11605
    return-void
.end method

.method public showSmimeProgressDialog(ZJI)V
    .locals 4
    .parameter "progress"
    .parameter "attachmentId"
    .parameter "DialogType"

    .prologue
    .line 11537
    if-eqz p1, :cond_3

    .line 11538
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 11542
    :cond_0
    const/4 v2, 0x2

    if-ne p4, v2, :cond_2

    const/16 v0, 0xb

    .line 11544
    .local v0, dType:I
    :goto_0
    const v2, 0x7f080239

    invoke-static {v2, v0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->newInstance(II)Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;

    move-result-object v1

    .line 11546
    .local v1, newFragment:Landroid/app/DialogFragment;
    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 11547
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "MessageViewFragmentBase >>"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 11555
    .end local v0           #dType:I
    .end local v1           #newFragment:Landroid/app/DialogFragment;
    :cond_1
    :goto_1
    return-void

    .line 11542
    :cond_2
    const/16 v0, 0xc

    goto :goto_0

    .line 11551
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11552
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_1
.end method

.method public showSmimeUserChoiceDialog()V
    .locals 6

    .prologue
    .line 11558
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 11559
    .local v1, ft:Landroid/app/FragmentTransaction;
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "SmimeUserChoice"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 11560
    .local v3, prev:Landroid/app/Fragment;
    if-eqz v3, :cond_0

    .line 11561
    const-string v4, "SMIME"

    const-string v5, "REMOVING FRAGMENT Dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11563
    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 11565
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 11566
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    .line 11567
    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    .line 11569
    :cond_2
    const v4, 0x7f08023a

    const/16 v5, 0xf

    invoke-static {v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->newInstance(II)Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;

    move-result-object v2

    .line 11571
    .local v2, newFragment:Landroid/app/DialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11572
    .local v0, arg:Landroid/os/Bundle;
    sget-object v4, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 11573
    const-string v4, "SmimeUserChoice"

    invoke-virtual {v2, v1, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 11576
    .end local v0           #arg:Landroid/os/Bundle;
    .end local v2           #newFragment:Landroid/app/DialogFragment;
    :cond_3
    return-void
.end method

.method public startIrmRemoval()V
    .locals 1

    .prologue
    .line 11505
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 11506
    return-void
.end method

.method public startLoadMore()V
    .locals 1

    .prologue
    .line 11465
    const/high16 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 11466
    return-void
.end method
