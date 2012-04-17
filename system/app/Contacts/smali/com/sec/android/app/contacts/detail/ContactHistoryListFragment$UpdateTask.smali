.class public Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "ContactHistoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private parent:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

.field private parentContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 531
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-direct {p0, v0}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 532
    check-cast p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parent:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .line 533
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 523
    check-cast p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .end local p1
    check-cast p2, [Ljava/lang/Long;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->doInBackground(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;[Ljava/lang/Long;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;[Ljava/lang/Long;)Ljava/lang/Void;
    .locals 28
    .parameter "target"
    .parameter "params"

    .prologue
    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parentContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "_id"

    aput-object v9, v4, v5

    const/4 v5, 0x1

    const-string v9, "data1"

    aput-object v9, v4, v5

    const/4 v5, 0x2

    const-string v9, "mimetype"

    aput-object v9, v4, v5

    const/4 v5, 0x3

    const-string v9, "account_type"

    aput-object v9, v4, v5

    const/4 v5, 0x4

    const-string v9, "display_name"

    aput-object v9, v4, v5

    const-string v5, "contact_id = ? AND mimetype IN (\'vnd.android.cursor.item/email_v2\',\'vnd.android.cursor.item/im\',\'vnd.android.cursor.item/phone_v2\') "

    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parent:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContactId:J
    invoke-static {v12}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$500(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v9

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 574
    .local v17, c:Landroid/database/Cursor;
    if-eqz v17, :cond_3

    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 575
    const/16 v25, 0x0

    .line 576
    .local v25, type:Ljava/lang/String;
    const/16 v23, 0x0

    .line 577
    .local v23, number:Ljava/lang/String;
    const/16 v16, 0x0

    .line 578
    .local v16, accountType:Ljava/lang/String;
    const/16 v18, 0x0

    .line 579
    .local v18, displayName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 580
    .local v7, initWhere:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parent:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContactId:J
    invoke-static {v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$500(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 585
    .local v8, whereArgs:[Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 586
    .local v20, initSelection:Ljava/lang/StringBuffer;
    const-string v2, "contactid"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 587
    const-string v2, "=?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 588
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 591
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 592
    .local v6, initValues:Landroid/content/ContentValues;
    const-string v2, "name"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parent:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v2, "contactid"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 596
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parent:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mQueryHandler:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;
    invoke-static {v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$1000(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

    move-result-object v2

    const/16 v3, 0x14

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/android/app/contacts/detail/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 607
    :cond_0
    :goto_0
    const/4 v2, 0x1

    :try_start_2
    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 608
    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 609
    const/4 v2, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 610
    const/4 v2, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 613
    const/4 v14, 0x0

    .line 614
    .local v14, where:Ljava/lang/String;
    if-eqz v23, :cond_2

    .line 616
    const-string v2, "\'"

    const-string v3, "\'\'"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    .line 617
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 618
    const-string v2, "-"

    const-string v3, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    .line 621
    :cond_1
    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    .line 622
    .local v24, selection:Ljava/lang/StringBuffer;
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 623
    invoke-static/range {v23 .. v23}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 625
    .local v22, minmatchReverse:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 627
    .local v21, minmatch:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PHONE_NUMBERS_EQUAL(number, \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', ?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 636
    .end local v21           #minmatch:Ljava/lang/String;
    .end local v22           #minmatchReverse:Ljava/lang/String;
    :goto_1
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 638
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 639
    .local v13, values:Landroid/content/ContentValues;
    const-string v2, "name"

    move-object/from16 v0, v18

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v2, "contactid"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parent:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContactId:J
    invoke-static {v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$500(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 642
    :try_start_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v10, 0x1e

    .line 643
    .local v10, token:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parent:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mQueryHandler:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;
    invoke-static {v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$1000(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

    move-result-object v9

    const/4 v11, 0x0

    sget-object v12, Lcom/sec/android/app/contacts/detail/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 654
    .end local v10           #token:I
    .end local v13           #values:Landroid/content/ContentValues;
    .end local v24           #selection:Ljava/lang/StringBuffer;
    :cond_2
    :goto_3
    :try_start_4
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v2

    if-nez v2, :cond_0

    .line 660
    .end local v6           #initValues:Landroid/content/ContentValues;
    .end local v7           #initWhere:Ljava/lang/String;
    .end local v8           #whereArgs:[Ljava/lang/String;
    .end local v14           #where:Ljava/lang/String;
    .end local v16           #accountType:Ljava/lang/String;
    .end local v18           #displayName:Ljava/lang/String;
    .end local v20           #initSelection:Ljava/lang/StringBuffer;
    .end local v23           #number:Ljava/lang/String;
    .end local v25           #type:Ljava/lang/String;
    :cond_3
    if-eqz v17, :cond_4

    .line 661
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 664
    :cond_4
    :goto_4
    const/4 v2, 0x0

    return-object v2

    .line 598
    .restart local v6       #initValues:Landroid/content/ContentValues;
    .restart local v7       #initWhere:Ljava/lang/String;
    .restart local v8       #whereArgs:[Ljava/lang/String;
    .restart local v16       #accountType:Ljava/lang/String;
    .restart local v18       #displayName:Ljava/lang/String;
    .restart local v20       #initSelection:Ljava/lang/StringBuffer;
    .restart local v23       #number:Ljava/lang/String;
    .restart local v25       #type:Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 599
    .local v19, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 657
    .end local v6           #initValues:Landroid/content/ContentValues;
    .end local v7           #initWhere:Ljava/lang/String;
    .end local v8           #whereArgs:[Ljava/lang/String;
    .end local v16           #accountType:Ljava/lang/String;
    .end local v18           #displayName:Ljava/lang/String;
    .end local v19           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .end local v20           #initSelection:Ljava/lang/StringBuffer;
    .end local v23           #number:Ljava/lang/String;
    .end local v25           #type:Ljava/lang/String;
    :catch_1
    move-exception v19

    .line 658
    .local v19, e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 660
    if-eqz v17, :cond_4

    .line 661
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 600
    .end local v19           #e:Ljava/lang/Exception;
    .restart local v6       #initValues:Landroid/content/ContentValues;
    .restart local v7       #initWhere:Ljava/lang/String;
    .restart local v8       #whereArgs:[Ljava/lang/String;
    .restart local v16       #accountType:Ljava/lang/String;
    .restart local v18       #displayName:Ljava/lang/String;
    .restart local v20       #initSelection:Ljava/lang/StringBuffer;
    .restart local v23       #number:Ljava/lang/String;
    .restart local v25       #type:Ljava/lang/String;
    :catch_2
    move-exception v19

    .line 601
    .local v19, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 660
    .end local v6           #initValues:Landroid/content/ContentValues;
    .end local v7           #initWhere:Ljava/lang/String;
    .end local v8           #whereArgs:[Ljava/lang/String;
    .end local v16           #accountType:Ljava/lang/String;
    .end local v18           #displayName:Ljava/lang/String;
    .end local v19           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v20           #initSelection:Ljava/lang/StringBuffer;
    .end local v23           #number:Ljava/lang/String;
    .end local v25           #type:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v17, :cond_5

    .line 661
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    .line 602
    .restart local v6       #initValues:Landroid/content/ContentValues;
    .restart local v7       #initWhere:Ljava/lang/String;
    .restart local v8       #whereArgs:[Ljava/lang/String;
    .restart local v16       #accountType:Ljava/lang/String;
    .restart local v18       #displayName:Ljava/lang/String;
    .restart local v20       #initSelection:Ljava/lang/StringBuffer;
    .restart local v23       #number:Ljava/lang/String;
    .restart local v25       #type:Ljava/lang/String;
    :catch_3
    move-exception v19

    .line 603
    .local v19, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->printStackTrace()V

    goto/16 :goto_0

    .line 633
    .end local v19           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .restart local v14       #where:Ljava/lang/String;
    .restart local v24       #selection:Ljava/lang/StringBuffer;
    :cond_6
    const-string v2, "number"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 642
    .restart local v13       #values:Landroid/content/ContentValues;
    :cond_7
    const/16 v10, 0x14

    goto :goto_2

    .line 645
    :catch_4
    move-exception v19

    .line 646
    .local v19, e:Landroid/database/sqlite/SQLiteDiskIOException;
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto :goto_3

    .line 647
    .end local v19           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_5
    move-exception v19

    .line 648
    .local v19, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_3

    .line 649
    .end local v19           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_6
    move-exception v19

    .line 650
    .local v19, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3
.end method

.method protected onPostExecute(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Ljava/lang/Void;)V
    .locals 2
    .parameter "target"
    .parameter "result"

    .prologue
    .line 553
    invoke-super {p0, p1, p2}, Lcom/android/contacts/util/WeakAsyncTask;->onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 554
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parent:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLoadingProgress:Z

    .line 555
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parent:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #calls: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->startQuery()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$900(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    .line 556
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 523
    check-cast p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .end local p1
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->onPostExecute(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 537
    invoke-virtual {p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parentContext:Landroid/content/Context;

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parentContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parentContext:Landroid/content/Context;

    const-class v3, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 539
    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$300()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 540
    invoke-virtual {p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$302(Landroid/content/Context;)Landroid/content/Context;

    .line 542
    :cond_0
    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$300()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static {p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$200(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 543
    iget-boolean v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLoadingProgress:Z

    if-nez v0, :cond_1

    .line 544
    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;
    invoke-static {p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$700(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 545
    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLoadingLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$800(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 547
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLoadingProgress:Z

    .line 548
    #setter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mShouldQuery:Z
    invoke-static {p1, v4}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$102(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Z)Z

    .line 549
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 523
    check-cast p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->onPreExecute(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    return-void
.end method
