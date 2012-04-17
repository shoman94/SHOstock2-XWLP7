.class Lcom/android/email/activity/MessageList$SetTitleTask;
.super Landroid/os/AsyncTask;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetTitleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mMailboxKey:J

.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageList;J)V
    .locals 0
    .parameter
    .parameter "mailboxKey"

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/email/activity/MessageList$SetTitleTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 555
    iput-wide p2, p0, Lcom/android/email/activity/MessageList$SetTitleTask;->mMailboxKey:J

    .line 556
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 550
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$SetTitleTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/Object;
    .locals 14
    .parameter "params"

    .prologue
    .line 561
    const/4 v11, 0x0

    .line 562
    .local v11, resIdSpecialMailbox:I
    iget-wide v0, p0, Lcom/android/email/activity/MessageList$SetTitleTask;->mMailboxKey:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 563
    const v11, 0x7f080099

    .line 571
    :cond_0
    :goto_0
    if-eqz v11, :cond_4

    .line 572
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/email/activity/MessageList$SetTitleTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v2, v11}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 614
    :goto_1
    return-object v0

    .line 564
    :cond_1
    iget-wide v0, p0, Lcom/android/email/activity/MessageList$SetTitleTask;->mMailboxKey:J

    const-wide/16 v2, -0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 565
    const v11, 0x7f080096

    goto :goto_0

    .line 566
    :cond_2
    iget-wide v0, p0, Lcom/android/email/activity/MessageList$SetTitleTask;->mMailboxKey:J

    const-wide/16 v2, -0x5

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 567
    const v11, 0x7f080097

    goto :goto_0

    .line 568
    :cond_3
    iget-wide v0, p0, Lcom/android/email/activity/MessageList$SetTitleTask;->mMailboxKey:J

    const-wide/16 v2, -0x6

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 569
    const v11, 0x7f080098

    goto :goto_0

    .line 577
    :cond_4
    const/4 v7, 0x0

    .line 578
    .local v7, accountName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 579
    .local v9, mailboxName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 580
    .local v6, accountKey:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/MessageList$SetTitleTask;->this$0:Lcom/android/email/activity/MessageList;

    #getter for: Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$300(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/activity/MessageList;->access$200()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v12, p0, Lcom/android/email/activity/MessageList$SetTitleTask;->mMailboxKey:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 585
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 586
    iget-object v0, p0, Lcom/android/email/activity/MessageList$SetTitleTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v9

    .line 588
    if-nez v9, :cond_5

    .line 589
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 591
    :cond_5
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 594
    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 596
    if-eqz v6, :cond_8

    .line 597
    iget-object v0, p0, Lcom/android/email/activity/MessageList$SetTitleTask;->this$0:Lcom/android/email/activity/MessageList;

    #getter for: Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$300(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/activity/MessageList;->access$400()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 602
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 603
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 606
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 611
    :cond_8
    iget-object v0, p0, Lcom/android/email/activity/MessageList$SetTitleTask;->this$0:Lcom/android/email/activity/MessageList;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "displayName is not \'##snc##\'"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 614
    .local v10, nAccounts:I
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    const/4 v1, 0x1

    aput-object v9, v0, v1

    const/4 v1, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    goto/16 :goto_1

    .line 594
    .end local v10           #nAccounts:I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 606
    :catchall_1
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 550
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$SetTitleTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 621
    if-nez p1, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    const/4 v1, 0x2

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 626
    .local v0, nAccounts:I
    aget-object v1, p1, v2

    if-eqz v1, :cond_3

    .line 627
    iget-object v4, p0, Lcom/android/email/activity/MessageList$SetTitleTask;->this$0:Lcom/android/email/activity/MessageList;

    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/String;

    if-le v0, v3, :cond_2

    move v2, v3

    :cond_2
    #calls: Lcom/android/email/activity/MessageList;->setTitleAccountName(Ljava/lang/String;Z)V
    invoke-static {v4, v1, v2}, Lcom/android/email/activity/MessageList;->access$500(Lcom/android/email/activity/MessageList;Ljava/lang/String;Z)V

    .line 630
    :cond_3
    aget-object v1, p1, v3

    if-eqz v1, :cond_0

    .line 631
    iget-object v1, p0, Lcom/android/email/activity/MessageList$SetTitleTask;->this$0:Lcom/android/email/activity/MessageList;

    #getter for: Lcom/android/email/activity/MessageList;->mLeftTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$600(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v2

    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
