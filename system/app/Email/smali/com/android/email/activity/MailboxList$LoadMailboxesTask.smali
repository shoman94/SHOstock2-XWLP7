.class Lcom/android/email/activity/MailboxList$LoadMailboxesTask;
.super Landroid/os/AsyncTask;
.source "MailboxList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxList;
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

.field final synthetic this$0:Lcom/android/email/activity/MailboxList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxList;JLjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "accountId"
    .parameter "parentId"
    .parameter "position"

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1148
    iput-wide p2, p0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->mAccountKey:J

    .line 1149
    iput-object p4, p0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->mParentId:Ljava/lang/String;

    .line 1150
    iput p5, p0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->mLMTPosition:I

    .line 1151
    iput p5, p0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->mLMTPositionOpen:I

    .line 1152
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 9
    .parameter "params"

    .prologue
    .line 1156
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1157
    .local v6, selection:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->mParentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accountKey=? AND type<64 AND type!=8 AND type!=4 AND type!=3 AND flagVisible=1 AND parentServerId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->mParentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$300(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v7, p0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->mAccountKey:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v5, "type,displayname ASC"

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MailboxList;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 1165
    :cond_0
    const-string v0, "accountKey=? AND type<64 AND type!=8 AND type!=4 AND type!=3 AND flagVisible=1 AND parentServerId is NULL OR parentServerId = \'NULL\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1135
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 19
    .parameter "cursor"

    .prologue
    .line 1181
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1295
    :cond_0
    :goto_0
    return-void

    .line 1185
    :cond_1
    if-eqz p1, :cond_4

    .line 1195
    const/4 v2, -0x1

    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1196
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->mLMTPositionOpen:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 1197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mAccountId:J
    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v12

    .line 1199
    .local v12, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v12, :cond_2

    .line 1200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v17

    new-instance v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    iget-object v4, v12, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    const-string v5, "0"

    const/16 v6, 0xc

    const-string v7, "0"

    const-string v8, "-1"

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/android/email/activity/MailboxList$MailboxListItem;-><init>(Lcom/android/email/activity/MailboxList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1204
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1205
    .local v4, name:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1206
    .local v6, type:I
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1207
    .local v5, count:Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1208
    .local v7, id:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1209
    .local v8, parentId:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1210
    .local v10, columnId:J
    const/4 v9, 0x0

    .line 1211
    .local v9, level:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->isMoveScreen:Z
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1600(Lcom/android/email/activity/MailboxList;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mSelectedMoveMailboxId:J
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1700(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v2

    cmp-long v2, v10, v2

    if-eqz v2, :cond_2

    .line 1212
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v17

    new-instance v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct/range {v2 .. v11}, Lcom/android/email/activity/MailboxList$MailboxListItem;-><init>(Lcom/android/email/activity/MailboxList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1290
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

    .line 1291
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 1294
    .end local v13           #e:Ljava/lang/Exception;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$300(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1216
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->mLMTPositionOpen:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->isOpened()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1217
    :cond_6
    :goto_3
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1218
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1219
    .restart local v4       #name:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1220
    .restart local v6       #type:I
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1221
    .restart local v5       #count:Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1222
    .restart local v7       #id:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1224
    .restart local v8       #parentId:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1225
    .restart local v10       #columnId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->mLMTPositionOpen:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getLevel()I

    move-result v2

    add-int/lit8 v9, v2, 0x1

    .line 1226
    .restart local v9       #level:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->isMoveScreen:Z
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1600(Lcom/android/email/activity/MailboxList;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mSelectedMoveMailboxId:J
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1700(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v2

    cmp-long v2, v10, v2

    if-eqz v2, :cond_6

    .line 1227
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->mLMTPosition:I

    add-int/lit8 v18, v2, 0x1

    new-instance v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct/range {v2 .. v11}, Lcom/android/email/activity/MailboxList$MailboxListItem;-><init>(Lcom/android/email/activity/MailboxList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1229
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->mLMTPosition:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->mLMTPosition:I

    goto/16 :goto_3

    .line 1233
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #count:Ljava/lang/String;
    .end local v6           #type:I
    .end local v7           #id:Ljava/lang/String;
    .end local v8           #parentId:Ljava/lang/String;
    .end local v9           #level:I
    .end local v10           #columnId:J
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->openCreated:Z
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1800(Lcom/android/email/activity/MailboxList;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1235
    :cond_9
    :goto_4
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1236
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1237
    .restart local v10       #columnId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #calls: Lcom/android/email/activity/MailboxList;->hasColumnId(J)Z
    invoke-static {v2, v10, v11}, Lcom/android/email/activity/MailboxList;->access$1900(Lcom/android/email/activity/MailboxList;J)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1238
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1240
    .restart local v4       #name:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1241
    .restart local v6       #type:I
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1243
    .restart local v5       #count:Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1244
    .restart local v7       #id:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1246
    .restart local v8       #parentId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->mLMTPositionOpen:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getLevel()I

    move-result v2

    add-int/lit8 v9, v2, 0x1

    .line 1248
    .restart local v9       #level:I
    const/16 v16, -0x1

    .line 1249
    .local v16, sortPosition:I
    const/4 v15, -0x1

    .line 1250
    .local v15, lastPosition:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_a

    .line 1251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_b

    .line 1255
    move/from16 v16, v14

    .line 1262
    :cond_a
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_d

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v17

    new-instance v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct/range {v2 .. v11}, Lcom/android/email/activity/MailboxList$MailboxListItem;-><init>(Lcom/android/email/activity/MailboxList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 1258
    :cond_b
    move v15, v14

    .line 1250
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 1266
    :cond_d
    const/4 v2, -0x1

    if-eq v15, v2, :cond_e

    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v17

    add-int/lit8 v18, v15, 0x1

    new-instance v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct/range {v2 .. v11}, Lcom/android/email/activity/MailboxList$MailboxListItem;-><init>(Lcom/android/email/activity/MailboxList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 1271
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v17

    new-instance v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct/range {v2 .. v11}, Lcom/android/email/activity/MailboxList$MailboxListItem;-><init>(Lcom/android/email/activity/MailboxList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1277
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
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->mLMTPositionOpen:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getServerId()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/email/activity/MailboxList;->closeFolderHierarchy(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/android/email/activity/MailboxList;->access$2000(Lcom/android/email/activity/MailboxList;Ljava/lang/String;)V

    .line 1280
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->openCreated:Z
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1800(Lcom/android/email/activity/MailboxList;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    const/4 v3, 0x0

    #setter for: Lcom/android/email/activity/MailboxList;->openCreated:Z
    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$1802(Lcom/android/email/activity/MailboxList;Z)Z

    .line 1287
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$300(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 1283
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->mLMTPositionOpen:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->mLMTPositionOpen:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v3}, Lcom/android/email/activity/MailboxList$MailboxListItem;->isOpened()Z

    move-result v3

    if-nez v3, :cond_12

    const/4 v3, 0x1

    :goto_7
    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList$MailboxListItem;->setIsOpened(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :cond_12
    const/4 v3, 0x0

    goto :goto_7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1135
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
