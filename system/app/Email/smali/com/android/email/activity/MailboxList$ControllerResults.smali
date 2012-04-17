.class Lcom/android/email/activity/MailboxList$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "MailboxList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxList;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MailboxList;)V
    .locals 0
    .parameter

    .prologue
    .line 1423
    iput-object p1, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1423
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxList$ControllerResults;-><init>(Lcom/android/email/activity/MailboxList;)V

    return-void
.end method

.method private updateBanner(Lcom/android/emailcommon/mail/MessagingException;I)V
    .locals 4
    .parameter "result"
    .parameter "progress"

    .prologue
    const/4 v3, 0x0

    .line 1493
    if-eqz p1, :cond_3

    .line 1494
    const v0, 0x7f0800b4

    .line 1495
    .local v0, id:I
    instance-of v1, p1, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v1, :cond_1

    .line 1496
    const v0, 0x7f080109

    .line 1515
    :goto_0
    const-string v1, "MailboxList"

    const-string v2, " fzhang Hit showErrorBanner()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    iget-object v1, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;
    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$900(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->showErrorBanner(Ljava/lang/String;)V

    .line 1518
    iget-object v1, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$2300(Lcom/android/email/activity/MailboxList;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1519
    iget-object v1, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$2300(Lcom/android/email/activity/MailboxList;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1520
    iget-object v1, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #setter for: Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v3}, Lcom/android/email/activity/MailboxList;->access$2302(Lcom/android/email/activity/MailboxList;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1525
    .end local v0           #id:I
    :cond_0
    :goto_1
    return-void

    .line 1497
    .restart local v0       #id:I
    :cond_1
    instance-of v1, p1, Lcom/android/emailcommon/mail/CertificateValidationException;

    if-eqz v1, :cond_2

    .line 1498
    const v0, 0x7f08010b

    goto :goto_0

    .line 1500
    :cond_2
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1502
    :pswitch_0
    const v0, 0x7f080113

    .line 1503
    goto :goto_0

    .line 1505
    :pswitch_1
    const v0, 0x7f080110

    .line 1506
    goto :goto_0

    .line 1508
    :pswitch_2
    const v0, 0x7f080111

    .line 1509
    goto :goto_0

    .line 1511
    :pswitch_3
    const v0, 0x7f080112

    goto :goto_0

    .line 1522
    .end local v0           #id:I
    :cond_3
    if-lez p2, :cond_0

    .line 1523
    iget-object v1, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;
    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$900(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->showErrorBanner(Ljava/lang/String;)V

    goto :goto_1

    .line 1500
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateProgress(Lcom/android/emailcommon/mail/MessagingException;I)V
    .locals 2
    .parameter "result"
    .parameter "progress"

    .prologue
    .line 1475
    if-nez p1, :cond_0

    const/16 v0, 0x64

    if-ne p2, v0, :cond_2

    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;
    invoke-static {v0}, Lcom/android/email/activity/MailboxList;->access$900(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->progress(Z)V

    .line 1480
    :cond_1
    :goto_0
    return-void

    .line 1477
    :cond_2
    if-nez p2, :cond_1

    .line 1478
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;
    invoke-static {v0}, Lcom/android/email/activity/MailboxList;->access$900(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->progress(Z)V

    goto :goto_0
.end method


# virtual methods
.method public OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"
    .parameter "oooResults"

    .prologue
    .line 1548
    return-void
.end method

.method public emptyTrashCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 1457
    return-void
.end method

.method public folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V
    .locals 6
    .parameter "command"
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 1560
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2300(Lcom/android/email/activity/MailboxList;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1561
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2300(Lcom/android/email/activity/MailboxList;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1562
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const/4 v3, 0x0

    #setter for: Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$2302(Lcom/android/email/activity/MailboxList;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1564
    :cond_0
    if-eqz p2, :cond_5

    .line 1565
    const/4 v0, 0x0

    .line 1567
    .local v0, message:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1619
    :cond_1
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$900(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->showMessage(Ljava/lang/String;)V

    .line 1651
    :goto_1
    return-void

    .line 1569
    :pswitch_1
    packed-switch p1, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 1574
    :pswitch_3
    :try_start_1
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f080328

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1575
    goto :goto_0

    .line 1571
    :pswitch_4
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f080327

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1572
    goto :goto_0

    .line 1577
    :pswitch_5
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f080329

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1582
    :pswitch_6
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f08036e

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1583
    goto :goto_0

    .line 1587
    :pswitch_7
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f080523

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1588
    goto :goto_0

    .line 1590
    :pswitch_8
    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-ne p1, v4, :cond_1

    .line 1592
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f08036f

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1596
    :pswitch_9
    if-eq p1, v5, :cond_3

    if-ne p1, v4, :cond_1

    .line 1600
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f080523

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1604
    :pswitch_a
    if-eq p1, v5, :cond_4

    if-ne p1, v4, :cond_1

    .line 1606
    :cond_4
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f080370

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1610
    :pswitch_b
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f080109

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1611
    goto :goto_0

    .line 1613
    :pswitch_c
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f080113

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1616
    :catch_0
    move-exception v1

    .line 1617
    .local v1, nfe:Ljava/lang/NumberFormatException;
    invoke-virtual {p2}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1621
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :cond_5
    const/4 v0, 0x0

    .line 1622
    .restart local v0       #message:Ljava/lang/String;
    packed-switch p1, :pswitch_data_2

    .line 1649
    :cond_6
    :goto_2
    :pswitch_d
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$900(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1624
    :pswitch_e
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->isMoveCommand:Z
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2400(Lcom/android/email/activity/MailboxList;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1625
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    iget-object v2, v2, Lcom/android/email/activity/MailboxList;->updateUIHandler:Landroid/os/Handler;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1628
    :goto_3
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const/4 v3, 0x0

    #setter for: Lcom/android/email/activity/MailboxList;->isMoveCommand:Z
    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$2402(Lcom/android/email/activity/MailboxList;Z)Z

    .line 1629
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f080324

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1630
    goto :goto_2

    .line 1627
    :cond_7
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    iget-object v2, v2, Lcom/android/email/activity/MailboxList;->updateUIHandler:Landroid/os/Handler;

    const/16 v3, 0xfa0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 1632
    :pswitch_f
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    iget-object v2, v2, Lcom/android/email/activity/MailboxList;->updateUIHandler:Landroid/os/Handler;

    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1633
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f080325

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1634
    goto :goto_2

    .line 1636
    :pswitch_10
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->createMailboxInRoot:Z
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1500(Lcom/android/email/activity/MailboxList;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1637
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    iget-object v2, v2, Lcom/android/email/activity/MailboxList;->updateUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1b58

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1640
    :goto_4
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f080326

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1641
    goto :goto_2

    .line 1639
    :cond_8
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    iget-object v2, v2, Lcom/android/email/activity/MailboxList;->updateUIHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 1643
    :pswitch_11
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    iget-object v2, v2, Lcom/android/email/activity/MailboxList;->updateUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1644
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->isRefreshCommand:Z
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2500(Lcom/android/email/activity/MailboxList;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1645
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f0804fc

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1567
    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 1569
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 1622
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method public loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 1460
    return-void
.end method

.method public moveConvAlwaysCallback(Lcom/android/emailcommon/mail/MessagingException;[BII)V
    .locals 0
    .parameter "result"
    .parameter "convId"
    .parameter "progress"
    .parameter "ignore"

    .prologue
    .line 1539
    return-void
.end method

.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 2
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mAccountId:J
    invoke-static {v0}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 1469
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateBanner(Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 1470
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateProgress(Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 1472
    :cond_0
    return-void
.end method

.method public serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "tag"

    .prologue
    .line 1464
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 2
    .parameter "result"
    .parameter "accountKey"
    .parameter "mailboxKey"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mAccountId:J
    invoke-static {v0}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 1436
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateBanner(Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 1437
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateProgress(Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 1439
    :cond_0
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 2
    .parameter "result"
    .parameter "accountKey"
    .parameter "progress"

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mAccountId:J
    invoke-static {v0}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 1428
    invoke-direct {p0, p1, p4}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateBanner(Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 1429
    invoke-direct {p0, p1, p4}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateProgress(Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 1431
    :cond_0
    return-void
.end method
