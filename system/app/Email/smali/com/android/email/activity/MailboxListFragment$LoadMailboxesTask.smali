.class Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;
.super Landroid/os/AsyncTask;
.source "MailboxListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMailboxesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountKey:J

.field private mLMTPosition:I

.field private mLMTPositionOpen:I

.field private mParentId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxListFragment;JLjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "accountId"
    .parameter "parentId"
    .parameter "position"

    .prologue
    .line 2943
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2944
    iput-wide p2, p0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->mAccountKey:J

    .line 2945
    iput-object p4, p0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->mParentId:Ljava/lang/String;

    .line 2946
    iput p5, p0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->mLMTPosition:I

    .line 2947
    iput p5, p0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->mLMTPositionOpen:I

    .line 2948
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 9
    .parameter "params"

    .prologue
    .line 2952
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2953
    .local v6, selection:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->mParentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accountKey=? AND type<64 AND type!=8 AND type!=4 AND flagVisible=1 AND parentServerId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->mParentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2967
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxListAdapter:Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$3000(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v7, p0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->mAccountKey:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v5, "type,displayname ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 2960
    :cond_0
    const-string v0, "accountKey=? AND type<64 AND type!=8 AND type!=4 AND flagVisible=1 AND parentServerId is NULL OR parentServerId = \'NULL\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2931
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 19
    .parameter "cursor"

    .prologue
    .line 2976
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3096
    :cond_0
    :goto_0
    return-void

    .line 2980
    :cond_1
    if-eqz p1, :cond_4

    .line 2990
    const/4 v2, -0x1

    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2991
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->mLMTPositionOpen:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 2992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mAccountId:J
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$1400(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v12

    .line 2994
    .local v12, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v12, :cond_2

    .line 2995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v17

    new-instance v2, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v4, v12, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    const-string v5, "0"

    const/16 v6, 0xc

    const-string v7, "0"

    const-string v8, "-1"

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;-><init>(Lcom/android/email/activity/MailboxListFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2998
    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2999
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3000
    .local v4, name:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 3001
    .local v6, type:I
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3002
    .local v5, count:Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3003
    .local v7, id:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3004
    .local v8, parentId:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 3005
    .local v10, columnId:J
    const/4 v9, 0x0

    .line 3006
    .local v9, level:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->isMoveScreen:Z
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$200(Lcom/android/email/activity/MailboxListFragment;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1200(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v2

    cmp-long v2, v10, v2

    if-eqz v2, :cond_2

    .line 3007
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v17

    new-instance v2, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct/range {v2 .. v11}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;-><init>(Lcom/android/email/activity/MailboxListFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3087
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #count:Ljava/lang/String;
    .end local v6           #type:I
    .end local v7           #id:Ljava/lang/String;
    .end local v8           #parentId:Ljava/lang/String;
    .end local v9           #level:I
    .end local v10           #columnId:J
    .end local v12           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :catch_0
    move-exception v13

    .line 3088
    .local v13, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3090
    if-eqz p1, :cond_4

    .line 3091
    .end local v13           #e:Ljava/lang/Exception;
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 3095
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxListAdapter:Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$3000(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 3011
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->mLMTPositionOpen:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->isOpened()Z

    move-result v2

    if-nez v2, :cond_9

    .line 3012
    :cond_6
    :goto_3
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3013
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3014
    .restart local v4       #name:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 3015
    .restart local v6       #type:I
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3016
    .restart local v5       #count:Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3017
    .restart local v7       #id:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3019
    .restart local v8       #parentId:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 3020
    .restart local v10       #columnId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->mLMTPositionOpen:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getLevel()I

    move-result v2

    add-int/lit8 v9, v2, 0x1

    .line 3021
    .restart local v9       #level:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->isMoveScreen:Z
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$200(Lcom/android/email/activity/MailboxListFragment;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1200(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v2

    cmp-long v2, v10, v2

    if-eqz v2, :cond_6

    .line 3022
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->mLMTPosition:I

    add-int/lit8 v18, v2, 0x1

    new-instance v2, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct/range {v2 .. v11}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;-><init>(Lcom/android/email/activity/MailboxListFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3024
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->mLMTPosition:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->mLMTPosition:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 3090
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #count:Ljava/lang/String;
    .end local v6           #type:I
    .end local v7           #id:Ljava/lang/String;
    .end local v8           #parentId:Ljava/lang/String;
    .end local v9           #level:I
    .end local v10           #columnId:J
    :catchall_0
    move-exception v2

    if-eqz p1, :cond_8

    .line 3091
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 3090
    :cond_8
    throw v2

    .line 3028
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->openCreated:Z
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$3100(Lcom/android/email/activity/MailboxListFragment;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3030
    :cond_a
    :goto_4
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3031
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 3032
    .restart local v10       #columnId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #calls: Lcom/android/email/activity/MailboxListFragment;->hasColumnId(J)Z
    invoke-static {v2, v10, v11}, Lcom/android/email/activity/MailboxListFragment;->access$3200(Lcom/android/email/activity/MailboxListFragment;J)Z

    move-result v2

    if-nez v2, :cond_a

    .line 3033
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3035
    .restart local v4       #name:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 3036
    .restart local v6       #type:I
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3038
    .restart local v5       #count:Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3039
    .restart local v7       #id:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3041
    .restart local v8       #parentId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->mLMTPositionOpen:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getLevel()I

    move-result v2

    add-int/lit8 v9, v2, 0x1

    .line 3043
    .restart local v9       #level:I
    const/16 v16, -0x1

    .line 3044
    .local v16, sortPosition:I
    const/4 v15, -0x1

    .line 3045
    .local v15, lastPosition:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_b

    .line 3046
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3048
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getMailboxDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_c

    .line 3050
    move/from16 v16, v14

    .line 3057
    :cond_b
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_e

    .line 3058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v17

    new-instance v2, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct/range {v2 .. v11}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;-><init>(Lcom/android/email/activity/MailboxListFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 3053
    :cond_c
    move v15, v14

    .line 3045
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 3061
    :cond_e
    const/4 v2, -0x1

    if-eq v15, v2, :cond_f

    .line 3062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v17

    add-int/lit8 v18, v15, 0x1

    new-instance v2, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct/range {v2 .. v11}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;-><init>(Lcom/android/email/activity/MailboxListFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 3066
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v17

    new-instance v2, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct/range {v2 .. v11}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;-><init>(Lcom/android/email/activity/MailboxListFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 3072
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #count:Ljava/lang/String;
    .end local v6           #type:I
    .end local v7           #id:Ljava/lang/String;
    .end local v8           #parentId:Ljava/lang/String;
    .end local v9           #level:I
    .end local v10           #columnId:J
    .end local v14           #i:I
    .end local v15           #lastPosition:I
    .end local v16           #sortPosition:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->mLMTPositionOpen:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getServerId()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/email/activity/MailboxListFragment;->closeFolderHierarchy(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/android/email/activity/MailboxListFragment;->access$3300(Lcom/android/email/activity/MailboxListFragment;Ljava/lang/String;)V

    .line 3075
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->openCreated:Z
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$3100(Lcom/android/email/activity/MailboxListFragment;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const/4 v3, 0x0

    #setter for: Lcom/android/email/activity/MailboxListFragment;->openCreated:Z
    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->access$3102(Lcom/android/email/activity/MailboxListFragment;Z)Z

    .line 3077
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->mLMTPositionOpen:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->mLMTPositionOpen:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v3}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->isOpened()Z

    move-result v3

    if-nez v3, :cond_13

    const/4 v3, 0x1

    :goto_6
    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->setIsOpened(Z)V

    .line 3084
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxListAdapter:Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$3000(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->notifyDataSetChanged()V

    .line 3090
    :cond_12
    if-eqz p1, :cond_4

    goto/16 :goto_2

    .line 3077
    :cond_13
    const/4 v3, 0x0

    goto :goto_6

    .line 3080
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->mLMTPositionOpen:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->mLMTPositionOpen:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v3}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->isOpened()Z

    move-result v3

    if-nez v3, :cond_15

    const/4 v3, 0x1

    :goto_8
    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->setIsOpened(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    :cond_15
    const/4 v3, 0x0

    goto :goto_8
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2931
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
