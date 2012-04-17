.class Lcom/android/email/activity/MailboxList$LoadRootMailboxes;
.super Landroid/os/AsyncTask;
.source "MailboxList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadRootMailboxes"
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

.field final synthetic this$0:Lcom/android/email/activity/MailboxList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxList;J)V
    .locals 0
    .parameter
    .parameter "accountId"

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1070
    iput-wide p2, p0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->mAccountKey:J

    .line 1071
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 9
    .parameter "params"

    .prologue
    .line 1075
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1076
    .local v6, selection:Ljava/lang/StringBuilder;
    const-string v0, "accountKey=? AND type<64 AND type!=8 AND flagVisible=1 AND displayName=?"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$300(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v7, p0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->mAccountKey:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mDisplayName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/email/activity/MailboxList;->access$400(Lcom/android/email/activity/MailboxList;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MailboxList;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1065
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 17
    .parameter "cursor"

    .prologue
    .line 1089
    if-eqz p1, :cond_1

    .line 1090
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1091
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1092
    .local v3, name:Ljava/lang/String;
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1093
    .local v5, type:I
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1094
    .local v4, count:Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1095
    .local v6, id:Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1096
    .local v7, parentId:Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1097
    .local v9, columnId:J
    const/4 v8, 0x0

    .line 1099
    .local v8, level:I
    const/4 v14, -0x1

    .line 1100
    .local v14, sortPosition:I
    const/4 v13, -0x1

    .line 1101
    .local v13, lastPosition:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_0

    .line 1102
    const/16 v2, 0xc

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxType()I

    move-result v1

    if-ne v2, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    .line 1104
    move v14, v12

    .line 1110
    :cond_0
    const/4 v1, -0x1

    if-eq v14, v1, :cond_3

    .line 1111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v15

    new-instance v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct/range {v1 .. v10}, Lcom/android/email/activity/MailboxList$MailboxListItem;-><init>(Lcom/android/email/activity/MailboxList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    invoke-virtual {v15, v14, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1121
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;
    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$300(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->notifyDataSetChanged()V

    .line 1122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    const/4 v2, 0x0

    #setter for: Lcom/android/email/activity/MailboxList;->createMailboxInRoot:Z
    invoke-static {v1, v2}, Lcom/android/email/activity/MailboxList;->access$1502(Lcom/android/email/activity/MailboxList;Z)Z

    .line 1128
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #count:Ljava/lang/String;
    .end local v5           #type:I
    .end local v6           #id:Ljava/lang/String;
    .end local v7           #parentId:Ljava/lang/String;
    .end local v8           #level:I
    .end local v9           #columnId:J
    .end local v12           #i:I
    .end local v13           #lastPosition:I
    .end local v14           #sortPosition:I
    :cond_1
    :goto_2
    return-void

    .line 1107
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #count:Ljava/lang/String;
    .restart local v5       #type:I
    .restart local v6       #id:Ljava/lang/String;
    .restart local v7       #parentId:Ljava/lang/String;
    .restart local v8       #level:I
    .restart local v9       #columnId:J
    .restart local v12       #i:I
    .restart local v13       #lastPosition:I
    .restart local v14       #sortPosition:I
    :cond_2
    move v13, v12

    .line 1101
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1113
    :cond_3
    const/4 v1, -0x1

    if-eq v13, v1, :cond_4

    .line 1114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v15

    add-int/lit8 v16, v13, 0x1

    new-instance v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct/range {v1 .. v10}, Lcom/android/email/activity/MailboxList$MailboxListItem;-><init>(Lcom/android/email/activity/MailboxList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    move/from16 v0, v16

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1124
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #count:Ljava/lang/String;
    .end local v5           #type:I
    .end local v6           #id:Ljava/lang/String;
    .end local v7           #parentId:Ljava/lang/String;
    .end local v8           #level:I
    .end local v9           #columnId:J
    .end local v12           #i:I
    .end local v13           #lastPosition:I
    .end local v14           #sortPosition:I
    :catch_0
    move-exception v11

    .line 1125
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1117
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #count:Ljava/lang/String;
    .restart local v5       #type:I
    .restart local v6       #id:Ljava/lang/String;
    .restart local v7       #parentId:Ljava/lang/String;
    .restart local v8       #level:I
    .restart local v9       #columnId:J
    .restart local v12       #i:I
    .restart local v13       #lastPosition:I
    .restart local v14       #sortPosition:I
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v15

    new-instance v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct/range {v1 .. v10}, Lcom/android/email/activity/MailboxList$MailboxListItem;-><init>(Lcom/android/email/activity/MailboxList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1065
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
