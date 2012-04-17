.class public Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;
.super Landroid/os/AsyncTask;
.source "LogsDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PerformScan"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private isWhichOp:I

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 378
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->isWhichOp:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 18
    .parameter "params"

    .prologue
    .line 382
    const/4 v14, 0x0

    aget-object v14, p1, v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->isWhichOp:I

    .line 383
    const-string v14, "LogsDeleteActivity"

    const-string v15, "[PerformScan] Call Log delete start ....."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->isWhichOp:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 385
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/widget/ListView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/ListView;->getCount()I

    move-result v12

    .line 387
    .local v12, totalCnt:I
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    div-int/lit8 v16, v12, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    .line 388
    const-wide/16 v14, 0x12c

    invoke-static {v14, v15}, Landroid/os/SystemClock;->sleep(J)V

    .line 390
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$AllCallDelete;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 394
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    .line 477
    .end local v12           #totalCnt:I
    :goto_0
    const-string v14, "LogsDeleteActivity"

    const-string v15, "[PerformScan] Call Log delete end ....."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/4 v14, 0x0

    return-object v14

    .line 396
    :cond_0
    const/4 v3, 0x0

    .line 397
    .local v3, colIdx:I
    const/4 v7, 0x0

    .line 398
    .local v7, dataId:I
    const/4 v6, 0x0

    .line 399
    .local v6, dataCnt:I
    const/4 v9, 0x0

    .line 400
    .local v9, endComma:Z
    const/4 v8, 0x0

    .line 401
    .local v8, deletedCnt:I
    const/4 v2, 0x0

    .line 403
    .local v2, checkedPos:I
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 404
    .local v13, whereLogsDB:Ljava/lang/StringBuffer;
    const-string v14, "_id in ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$500(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_5

    .line 407
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$500(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 408
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 409
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v14

    invoke-virtual {v14, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/database/Cursor;

    #setter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v15, v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$602(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 410
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v14

    const-string v15, "_id"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 412
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v14

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-direct {v4, v14}, Lcom/sec/android/app/dialertab/calllog/GroupCount;-><init>(I)V

    .line 413
    .local v4, compareObject:Lcom/sec/android/app/dialertab/calllog/GroupCount;
    sget-object v14, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 415
    sget-object v14, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 416
    .local v11, index:I
    sget-object v14, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    invoke-virtual {v14}, Lcom/sec/android/app/dialertab/calllog/GroupCount;->getGroupCount()I

    move-result v5

    .line 417
    .local v5, count:I
    sget-object v14, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    invoke-virtual {v14}, Lcom/sec/android/app/dialertab/calllog/GroupCount;->getGroupIDs()[I

    move-result-object v1

    .line 419
    .local v1, array:[I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    if-ge v10, v5, :cond_3

    .line 421
    aget v7, v1, v10

    .line 422
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    const-string v14, "LogsDeleteActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "dataId= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    rem-int/lit8 v14, v6, 0x64

    if-nez v14, :cond_1

    .line 426
    const/16 v14, 0x29

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 427
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 432
    const/4 v14, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 433
    const-string v14, "_id in ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    const/4 v9, 0x0

    .line 435
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    .line 419
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 437
    :cond_1
    const/16 v14, 0x2c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 438
    const/4 v9, 0x1

    goto :goto_3

    .line 444
    .end local v1           #array:[I
    .end local v5           #count:I
    .end local v10           #i:I
    .end local v11           #index:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v14

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 445
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    rem-int/lit8 v14, v6, 0x64

    if-nez v14, :cond_4

    .line 448
    const/16 v14, 0x29

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 449
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 454
    const/4 v14, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 455
    const-string v14, "_id in ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    const/4 v9, 0x0

    .line 457
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    .line 406
    .end local v4           #compareObject:Lcom/sec/android/app/dialertab/calllog/GroupCount;
    :cond_3
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 459
    .restart local v4       #compareObject:Lcom/sec/android/app/dialertab/calllog/GroupCount;
    :cond_4
    const/16 v14, 0x2c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 460
    const/4 v9, 0x1

    goto :goto_4

    .line 465
    .end local v4           #compareObject:Lcom/sec/android/app/dialertab/calllog/GroupCount;
    :cond_5
    if-eqz v9, :cond_6

    .line 466
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 467
    const/16 v14, 0x29

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 468
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 470
    const-string v14, "LogsDeleteActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Logs DB remained data deleted Count = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    .line 474
    :cond_6
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 377
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter "result"

    .prologue
    const v3, 0x7f0a02bb

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 490
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 491
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 492
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->setResult(I)V

    .line 493
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->isWhichOp:I

    if-ne v0, v2, :cond_0

    .line 494
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 496
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->finish()V

    .line 503
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 504
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 501
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->finish()V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 484
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 485
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 377
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
