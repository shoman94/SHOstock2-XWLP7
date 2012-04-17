.class Lcom/android/email/activity/MailboxList$11;
.super Landroid/os/Handler;
.source "MailboxList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxList;)V
    .locals 0
    .parameter

    .prologue
    .line 1911
    iput-object p1, p0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .parameter "msg"

    .prologue
    .line 1915
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 2054
    :cond_0
    :goto_0
    return-void

    .line 1917
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mSelectedPosition:I
    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getServerId()Ljava/lang/String;

    move-result-object v6

    .line 1918
    .local v6, parentId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mSelectedPosition:I
    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->isOpened()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    const/4 v3, 0x0

    #setter for: Lcom/android/email/activity/MailboxList;->openCreated:Z
    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$1802(Lcom/android/email/activity/MailboxList;Z)Z

    .line 1923
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    new-instance v3, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mAccountId:J
    invoke-static {v5}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v7

    invoke-direct {v3, v4, v7, v8}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;-><init>(Lcom/android/email/activity/MailboxList;J)V

    #setter for: Lcom/android/email/activity/MailboxList;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxList$LoadAllMailboxes;
    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$2602(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$LoadAllMailboxes;)Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    .line 1924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxList$LoadAllMailboxes;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2600(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1925
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    new-instance v2, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mAccountId:J
    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mSelectedPosition:I
    invoke-static {v7}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;-><init>(Lcom/android/email/activity/MailboxList;JLjava/lang/String;I)V

    #setter for: Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;
    invoke-static {v8, v2}, Lcom/android/email/activity/MailboxList;->access$2702(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$LoadMailboxesTask;)Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    .line 1927
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2700(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 1921
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    const/4 v3, 0x1

    #setter for: Lcom/android/email/activity/MailboxList;->openCreated:Z
    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$1802(Lcom/android/email/activity/MailboxList;Z)Z

    goto :goto_1

    .line 1930
    .end local v6           #parentId:Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mSelectedPosition:I
    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getServerId()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/email/activity/MailboxList;->closeFolderHierarchy(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/android/email/activity/MailboxList;->access$2000(Lcom/android/email/activity/MailboxList;Ljava/lang/String;)V

    .line 1931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mSelectedPosition:I
    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1932
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    new-instance v3, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mAccountId:J
    invoke-static {v5}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v7

    invoke-direct {v3, v4, v7, v8}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;-><init>(Lcom/android/email/activity/MailboxList;J)V

    #setter for: Lcom/android/email/activity/MailboxList;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxList$LoadAllMailboxes;
    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$2602(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$LoadAllMailboxes;)Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    .line 1933
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxList$LoadAllMailboxes;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2600(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1934
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$300(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1937
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mSelectedPosition:I
    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/email/activity/MailboxList$MailboxListItem;

    .line 1938
    .local v21, tempMailboxListItem:Lcom/android/email/activity/MailboxList$MailboxListItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mDisplayName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$400(Lcom/android/email/activity/MailboxList;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->setDisplayName(Ljava/lang/String;)V

    .line 1940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mSelectedPosition:I
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v2

    add-int/lit8 v19, v2, 0x1

    .line 1941
    .local v19, subPosition:I
    move/from16 v14, v19

    .local v14, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_2

    .line 1942
    invoke-virtual/range {v21 .. v21}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getLevel()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getLevel()I

    move-result v2

    if-lt v3, v2, :cond_3

    .line 1943
    move/from16 v19, v14

    .line 1948
    :cond_2
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mSelectedPosition:I
    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v3

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1950
    .local v20, tempMailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MailboxList$MailboxListItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mSelectedPosition:I
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v14

    :goto_3
    move/from16 v0, v19

    if-ge v14, v0, :cond_4

    .line 1951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mSelectedPosition:I
    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1950
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1941
    .end local v20           #tempMailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MailboxList$MailboxListItem;>;"
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1954
    .restart local v20       #tempMailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MailboxList$MailboxListItem;>;"
    :cond_4
    const/16 v18, -0x1

    .line 1955
    .local v18, sortPosition:I
    const/16 v16, -0x1

    .line 1956
    .local v16, lastPosition:I
    const/4 v14, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_7

    .line 1957
    invoke-virtual/range {v21 .. v21}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v22

    .line 1959
    .local v22, tempMailboxListItemParentServerId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/email/activity/MailboxList$MailboxListItem;

    .line 1960
    .local v13, compareMailboxListItem:Lcom/android/email/activity/MailboxList$MailboxListItem;
    if-nez v22, :cond_5

    invoke-virtual {v13}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    :cond_5
    if-eqz v22, :cond_c

    invoke-virtual {v13}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1964
    :cond_6
    const/16 v2, 0xc

    invoke-virtual {v13}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxType()I

    move-result v3

    if-ne v2, v3, :cond_8

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_8

    .line 1968
    move/from16 v18, v14

    .line 1988
    .end local v13           #compareMailboxListItem:Lcom/android/email/activity/MailboxList$MailboxListItem;
    .end local v22           #tempMailboxListItemParentServerId:Ljava/lang/String;
    :cond_7
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_d

    .line 1989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1996
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$300(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1972
    .restart local v13       #compareMailboxListItem:Lcom/android/email/activity/MailboxList$MailboxListItem;
    .restart local v22       #tempMailboxListItemParentServerId:Ljava/lang/String;
    :cond_8
    move v15, v14

    .local v15, j:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v15, v2, :cond_9

    .line 1973
    invoke-virtual/range {v21 .. v21}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getLevel()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getLevel()I

    move-result v2

    if-lt v3, v2, :cond_b

    .line 1980
    :cond_9
    move/from16 v16, v14

    .line 1956
    .end local v15           #j:I
    :cond_a
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 1977
    .restart local v15       #j:I
    :cond_b
    add-int/lit8 v14, v14, 0x1

    .line 1972
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 1981
    .end local v15           #j:I
    :cond_c
    if-eqz v22, :cond_a

    invoke-virtual {v13}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getServerId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1984
    move/from16 v16, v14

    goto :goto_7

    .line 1990
    .end local v13           #compareMailboxListItem:Lcom/android/email/activity/MailboxList$MailboxListItem;
    .end local v22           #tempMailboxListItemParentServerId:Ljava/lang/String;
    :cond_d
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_e

    .line 1991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v3, v16, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_5

    .line 1993
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 2000
    .end local v14           #i:I
    .end local v16           #lastPosition:I
    .end local v18           #sortPosition:I
    .end local v19           #subPosition:I
    .end local v20           #tempMailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MailboxList$MailboxListItem;>;"
    .end local v21           #tempMailboxListItem:Lcom/android/email/activity/MailboxList$MailboxListItem;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mSelectedPosition:I
    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getServerId()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/email/activity/MailboxList;->closeFolderHierarchy(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/android/email/activity/MailboxList;->access$2000(Lcom/android/email/activity/MailboxList;Ljava/lang/String;)V

    .line 2001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mSelectedPosition:I
    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2004
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_f

    .line 2005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mDestMailboxId:J
    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$2800(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    .line 2006
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #setter for: Lcom/android/email/activity/MailboxList;->mSelectedPosition:I
    invoke-static {v2, v14}, Lcom/android/email/activity/MailboxList;->access$202(Lcom/android/email/activity/MailboxList;I)I

    .line 2012
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mSelectedPosition:I
    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getServerId()Ljava/lang/String;

    move-result-object v11

    .line 2013
    .local v11, parentId1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mSelectedPosition:I
    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->isOpened()Z

    move-result v2

    if-nez v2, :cond_11

    .line 2014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    const/4 v3, 0x0

    #setter for: Lcom/android/email/activity/MailboxList;->openCreated:Z
    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$1802(Lcom/android/email/activity/MailboxList;Z)Z

    .line 2018
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    new-instance v3, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mAccountId:J
    invoke-static {v5}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v7

    invoke-direct {v3, v4, v7, v8}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;-><init>(Lcom/android/email/activity/MailboxList;J)V

    #setter for: Lcom/android/email/activity/MailboxList;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxList$LoadAllMailboxes;
    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$2602(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$LoadAllMailboxes;)Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    .line 2019
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxList$LoadAllMailboxes;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2600(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2020
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    new-instance v7, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mAccountId:J
    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mSelectedPosition:I
    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v12

    invoke-direct/range {v7 .. v12}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;-><init>(Lcom/android/email/activity/MailboxList;JLjava/lang/String;I)V

    #setter for: Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;
    invoke-static {v2, v7}, Lcom/android/email/activity/MailboxList;->access$2702(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$LoadMailboxesTask;)Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    .line 2022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2700(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 2004
    .end local v11           #parentId1:Ljava/lang/String;
    :cond_10
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_8

    .line 2016
    .restart local v11       #parentId1:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    const/4 v3, 0x1

    #setter for: Lcom/android/email/activity/MailboxList;->openCreated:Z
    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$1802(Lcom/android/email/activity/MailboxList;Z)Z

    goto :goto_9

    .line 2025
    .end local v11           #parentId1:Ljava/lang/String;
    .end local v14           #i:I
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$300(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 2028
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f0804fe

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2032
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    new-instance v3, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mAccountId:J
    invoke-static {v5}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v7

    invoke-direct {v3, v4, v7, v8}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;-><init>(Lcom/android/email/activity/MailboxList;J)V

    #setter for: Lcom/android/email/activity/MailboxList;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxList$LoadAllMailboxes;
    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$2602(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$LoadAllMailboxes;)Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    .line 2033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxList$LoadAllMailboxes;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2600(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2034
    new-instance v17, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mAccountId:J
    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v3

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3, v4}, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;-><init>(Lcom/android/email/activity/MailboxList;J)V

    .line 2035
    .local v17, mLoadRootMailboxes:Lcom/android/email/activity/MailboxList$LoadRootMailboxes;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    iget-object v2, v2, Lcom/android/email/activity/MailboxList;->updateUIHandler:Landroid/os/Handler;

    const/16 v3, 0x2af8

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    const/4 v3, 0x0

    #setter for: Lcom/android/email/activity/MailboxList;->isCreateFolder:Z
    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$602(Lcom/android/email/activity/MailboxList;Z)Z

    .line 2039
    const-string v2, "k1001.kim"

    const-string v3, "isCreateFolder = false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2042
    .end local v17           #mLoadRootMailboxes:Lcom/android/email/activity/MailboxList$LoadRootMailboxes;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2300(Lcom/android/email/activity/MailboxList;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2300(Lcom/android/email/activity/MailboxList;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2043
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2300(Lcom/android/email/activity/MailboxList;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 2049
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mErrorBanner:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2200(Lcom/android/email/activity/MailboxList;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1915
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_2
        0xbb8 -> :sswitch_1
        0xfa0 -> :sswitch_3
        0x1388 -> :sswitch_4
        0x1770 -> :sswitch_5
        0x1b58 -> :sswitch_6
        0x2af8 -> :sswitch_7
        0x32c8 -> :sswitch_8
    .end sparse-switch
.end method
