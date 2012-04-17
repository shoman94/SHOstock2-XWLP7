.class Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;
.super Lcom/android/email/data/ThrottlingCursorLoader;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessagesCursorLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    }
.end annotation


# instance fields
.field private final ONEDAY_TIMESTAMP:J

.field private final ONEMONTHS_TIMESTAMP:J

.field private final ONEWEEK_TIMESTAMP:J

.field private final THREEWEEKS_TIMESTAMP:J

.field private final TWOWEEKS_TIMESTAMP:J

.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mListForSubTitle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessagesAdapter$SubTitle;",
            ">;"
        }
    .end annotation
.end field

.field private mListPositionForAdapter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessagesAdapter$Position;",
            ">;"
        }
    .end annotation
.end field

.field private final mMailboxId:J

.field private mSubtitleCount:I

.field private mUnreadCount:I

.field private versionDouble:D


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;I)V
    .locals 12
    .parameter "context"
    .parameter "mailboxId"
    .parameter "sortQuery"
    .parameter "sortType"

    .prologue
    .line 1282
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    .line 1182
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 1184
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 1187
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->ONEDAY_TIMESTAMP:J

    .line 1189
    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->ONEWEEK_TIMESTAMP:J

    .line 1191
    const-wide/32 v0, 0x48190800

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->TWOWEEKS_TIMESTAMP:J

    .line 1193
    const-wide/32 v0, 0x6c258c00

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->THREEWEEKS_TIMESTAMP:J

    .line 1195
    const-wide v0, 0x9a7ec800L

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->ONEMONTHS_TIMESTAMP:J

    .line 1197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    .line 1199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    .line 1203
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->versionDouble:D

    .line 1284
    iput-object p1, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    .line 1285
    iput-wide p2, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    .line 1286
    sput p5, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    .line 1291
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v11

    .line 1292
    .local v11, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v11, :cond_1

    .line 1293
    iget-wide v7, v11, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 1294
    .local v7, accountKey:J
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v10

    .line 1295
    .local v10, mConvAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v0, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1296
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->versionDouble:D

    .line 1305
    .end local v7           #accountKey:J
    .end local v10           #mConvAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v11           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :goto_0
    return-void

    .line 1298
    .restart local v7       #accountKey:J
    .restart local v10       #mConvAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v11       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_0
    iget-object v0, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->versionDouble:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1302
    .end local v7           #accountKey:J
    .end local v10           #mConvAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v11           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :catch_0
    move-exception v9

    .line 1303
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1300
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v11       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_1
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->versionDouble:D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private checkTimeStamp(JJ)I
    .locals 2
    .parameter "stamp"
    .parameter "todayMilli"

    .prologue
    .line 2399
    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    .line 2400
    const/4 v0, 0x0

    .line 2433
    :goto_0
    return v0

    .line 2401
    :cond_0
    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    const-wide/32 v0, 0x5265c00

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 2402
    const/4 v0, 0x1

    goto :goto_0

    .line 2403
    :cond_1
    const-wide/32 v0, 0x5265c00

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    const-wide/32 v0, 0xa4cb800

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    .line 2405
    const/4 v0, 0x2

    goto :goto_0

    .line 2406
    :cond_2
    const-wide/32 v0, 0xa4cb800

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    const-wide/32 v0, 0xf731400

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    .line 2408
    const/4 v0, 0x3

    goto :goto_0

    .line 2409
    :cond_3
    const-wide/32 v0, 0xf731400

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_4

    const-wide/32 v0, 0x14997000

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4

    .line 2411
    const/4 v0, 0x4

    goto :goto_0

    .line 2412
    :cond_4
    const-wide/32 v0, 0x14997000

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_5

    const-wide/32 v0, 0x19bfcc00

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_5

    .line 2414
    const/4 v0, 0x5

    goto :goto_0

    .line 2415
    :cond_5
    const-wide/32 v0, 0x19bfcc00

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_6

    const-wide/32 v0, 0x1ee62800

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_6

    .line 2417
    const/4 v0, 0x6

    goto :goto_0

    .line 2418
    :cond_6
    const-wide/32 v0, 0x1ee62800

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_7

    const-wide/32 v0, 0x240c8400

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_7

    .line 2420
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 2421
    :cond_7
    const-wide/32 v0, 0x240c8400

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    const-wide/32 v0, 0x48190800

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_8

    .line 2423
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 2424
    :cond_8
    const-wide/32 v0, 0x48190800

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_9

    const-wide/32 v0, 0x6c258c00

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 2426
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 2427
    :cond_9
    const-wide/32 v0, 0x6c258c00

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_a

    const-wide v0, 0x9a7ec800L

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_a

    .line 2429
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 2430
    :cond_a
    const-wide v0, 0x9a7ec800L

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_b

    .line 2431
    const/16 v0, 0xb

    goto/16 :goto_0

    .line 2433
    :cond_b
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method private getSeparateStr2(JJ)Ljava/lang/String;
    .locals 5
    .parameter "stamp"
    .parameter "todayMilli"

    .prologue
    .line 2385
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 2386
    .local v2, tempDate:Ljava/util/Date;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2387
    .local v1, tempBuf:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2391
    .local v0, dateString:Ljava/lang/String;
    const-wide/32 v3, 0x1ee62800

    sub-long v3, p3, v3

    cmp-long v3, p1, v3

    if-ltz v3, :cond_0

    .line 2392
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2394
    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method private initListVariable()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1336
    iput v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    .line 1337
    iput v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 1338
    iput v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 1339
    invoke-static {v0}, Lcom/android/email/activity/MessagesAdapter;->access$102(I)I

    .line 1340
    invoke-static {v0}, Lcom/android/email/activity/MessagesAdapter;->access$202(I)I

    .line 1341
    invoke-static {v0}, Lcom/android/email/activity/MessagesAdapter;->access$302(I)I

    .line 1342
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$400()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1343
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$400()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1344
    :cond_0
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$500()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1345
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$500()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1346
    :cond_1
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1347
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1348
    :cond_2
    return-void
.end method

.method private isInt(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 2311
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2312
    const/4 v1, 0x1

    .line 2314
    :goto_0
    return v1

    .line 2313
    :catch_0
    move-exception v0

    .line 2314
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeSubTitleList(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 74
    .parameter "c"

    .prologue
    .line 1352
    const/16 v60, 0x0

    .line 1355
    .local v60, subItemCount:I
    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 1356
    .local v61, subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    .line 1357
    move-object/from16 v52, p1

    .line 1359
    .local v52, result:Landroid/database/Cursor;
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    if-eqz v6, :cond_0

    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 1361
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1362
    .local v5, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1366
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long v71, v6, v8

    .line 1367
    .local v71, todayMilli:J
    const/16 v17, -0x1

    .line 1368
    .local v17, date:I
    const/16 v33, -0x1

    .line 1369
    .local v33, nextDate:I
    const/16 v44, -0x1

    .line 1370
    .local v44, prevDate:I
    const-wide/16 v69, 0x0

    .line 1371
    .local v69, timeStamp:J
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_52

    .line 1372
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1373
    move-object/from16 v0, v61

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 1375
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 1376
    :cond_1
    const/4 v6, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v69

    .line 1377
    move-object/from16 v0, p0

    move-wide/from16 v1, v69

    move-wide/from16 v3, v71

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->checkTimeStamp(JJ)I

    move-result v17

    .line 1378
    add-int/lit8 v60, v60, 0x1

    .line 1379
    const/4 v6, -0x1

    move/from16 v0, v44

    if-eq v0, v6, :cond_2

    move/from16 v0, v44

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    .line 1380
    :cond_2
    move/from16 v44, v17

    .line 1381
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 1382
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1383
    .local v42, p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1385
    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    :cond_3
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1386
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1387
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1388
    move-object/from16 v0, p0

    move-wide/from16 v1, v69

    move-wide/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->getSeparateStr(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1389
    move-object/from16 v0, p0

    move-wide/from16 v1, v69

    move-wide/from16 v3, v71

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->getSeparateStr2(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListDate:Ljava/lang/String;

    .line 1390
    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    .line 1391
    .local v58, strBuffer2:Ljava/lang/StringBuffer;
    move-object/from16 v0, v58

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1392
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    .line 1393
    .local v56, strBuffer:Ljava/lang/StringBuffer;
    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1395
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1396
    const/16 v60, 0x0

    .line 1371
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    .end local v58           #strBuffer2:Ljava/lang/StringBuffer;
    :cond_4
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 1398
    :cond_5
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1399
    const/4 v6, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    .line 1400
    .local v37, nextTimeStamp:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v37

    move-wide/from16 v3, v71

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->checkTimeStamp(JJ)I

    move-result v33

    .line 1401
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1402
    move/from16 v0, v17

    move/from16 v1, v33

    if-eq v0, v1, :cond_4

    .line 1403
    move-object/from16 v0, p0

    move-wide/from16 v1, v69

    move-wide/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->getSeparateStr(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1404
    move-object/from16 v0, p0

    move-wide/from16 v1, v69

    move-wide/from16 v3, v71

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->getSeparateStr2(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListDate:Ljava/lang/String;

    .line 1405
    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    .line 1406
    .restart local v58       #strBuffer2:Ljava/lang/StringBuffer;
    move-object/from16 v0, v58

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1407
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    .line 1408
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1410
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1411
    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    .end local v61           #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 1412
    .restart local v61       #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/16 v60, 0x0

    goto/16 :goto_1

    .line 1416
    .end local v5           #cal:Ljava/util/Calendar;
    .end local v17           #date:I
    .end local v21           #i:I
    .end local v33           #nextDate:I
    .end local v37           #nextTimeStamp:J
    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .end local v44           #prevDate:I
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    .end local v58           #strBuffer2:Ljava/lang/StringBuffer;
    .end local v69           #timeStamp:J
    .end local v71           #todayMilli:J
    :cond_6
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_f

    .line 1418
    :cond_7
    const/16 v54, 0x0

    .line 1419
    .local v54, sender:Ljava/lang/String;
    const/16 v36, 0x0

    .line 1420
    .local v36, nextSender:Ljava/lang/String;
    const/16 v47, 0x0

    .line 1421
    .local v47, prevSender:Ljava/lang/String;
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_52

    .line 1422
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1423
    move-object/from16 v0, v61

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_8

    .line 1425
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 1426
    :cond_8
    const/4 v6, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 1427
    if-nez v54, :cond_9

    .line 1428
    const-string v54, ""

    .line 1430
    :cond_9
    add-int/lit8 v60, v60, 0x1

    .line 1431
    if-eqz v47, :cond_a

    move-object/from16 v0, v47

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 1432
    :cond_a
    move-object/from16 v47, v54

    .line 1433
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 1434
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1435
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1437
    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    :cond_b
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1438
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1439
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1440
    move-object/from16 v0, v54

    move-object/from16 v1, v61

    iput-object v0, v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1441
    move-object/from16 v0, v54

    move-object/from16 v1, v61

    iput-object v0, v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1442
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    .line 1443
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1445
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1446
    const/16 v60, 0x0

    .line 1421
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    :cond_c
    :goto_3
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 1448
    :cond_d
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1449
    const/4 v6, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 1450
    if-eqz v36, :cond_e

    .line 1451
    const-string v6, "\u0002"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1455
    :goto_4
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1456
    move-object/from16 v0, v54

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 1457
    move-object/from16 v0, v54

    move-object/from16 v1, v61

    iput-object v0, v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1458
    move-object/from16 v0, v54

    move-object/from16 v1, v61

    iput-object v0, v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1459
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    .line 1460
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1462
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1463
    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    .end local v61           #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 1464
    .restart local v61       #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/16 v60, 0x0

    goto :goto_3

    .line 1453
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    :cond_e
    const-string v36, ""

    goto :goto_4

    .line 1468
    .end local v21           #i:I
    .end local v36           #nextSender:Ljava/lang/String;
    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .end local v47           #prevSender:Ljava/lang/String;
    .end local v54           #sender:Ljava/lang/String;
    :cond_f
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_17

    .line 1469
    const/16 v51, -0x1

    .line 1470
    .local v51, read:I
    const/16 v35, -0x1

    .line 1471
    .local v35, nextRead:I
    const/16 v46, -0x1

    .line 1472
    .local v46, prevRead:I
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_5
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_52

    .line 1473
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1474
    move-object/from16 v0, v61

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_10

    .line 1476
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 1477
    :cond_10
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v51

    .line 1478
    add-int/lit8 v60, v60, 0x1

    .line 1479
    const/4 v6, -0x1

    move/from16 v0, v46

    if-eq v0, v6, :cond_11

    move/from16 v0, v46

    move/from16 v1, v51

    if-eq v0, v1, :cond_12

    .line 1480
    :cond_11
    move/from16 v46, v51

    .line 1481
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 1482
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1483
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1485
    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    :cond_12
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1486
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1487
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1488
    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    .line 1489
    .restart local v58       #strBuffer2:Ljava/lang/StringBuffer;
    const/4 v6, 0x1

    move/from16 v0, v51

    if-eq v0, v6, :cond_14

    .line 1490
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1492
    const v6, 0x7f0801b3

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1499
    :goto_6
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    .line 1500
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1502
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1503
    const/16 v60, 0x0

    .line 1472
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    .end local v58           #strBuffer2:Ljava/lang/StringBuffer;
    :cond_13
    :goto_7
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_5

    .line 1495
    .restart local v58       #strBuffer2:Ljava/lang/StringBuffer;
    :cond_14
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1496
    const v6, 0x7f0801b4

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_6

    .line 1505
    .end local v58           #strBuffer2:Ljava/lang/StringBuffer;
    :cond_15
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1506
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 1507
    move/from16 v0, v51

    move/from16 v1, v35

    if-eq v0, v1, :cond_13

    .line 1508
    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    .line 1509
    .restart local v58       #strBuffer2:Ljava/lang/StringBuffer;
    const/4 v6, 0x1

    move/from16 v0, v51

    if-eq v0, v6, :cond_16

    .line 1510
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1512
    const v6, 0x7f0801b3

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1520
    :goto_8
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    .line 1521
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1523
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    .end local v61           #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 1525
    .restart local v61       #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/16 v60, 0x0

    goto/16 :goto_7

    .line 1515
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    :cond_16
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1517
    const v6, 0x7f0801b4

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_8

    .line 1529
    .end local v21           #i:I
    .end local v35           #nextRead:I
    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .end local v46           #prevRead:I
    .end local v51           #read:I
    .end local v58           #strBuffer2:Ljava/lang/StringBuffer;
    :cond_17
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1f

    .line 1530
    const/16 v19, -0x1

    .line 1531
    .local v19, favorite:I
    const/16 v39, -0x1

    .line 1532
    .local v39, nextfavorite:I
    const/16 v48, -0x1

    .line 1533
    .local v48, prevfavorite:I
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_9
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_52

    .line 1534
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1535
    move-object/from16 v0, v61

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1536
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_18

    .line 1537
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 1538
    :cond_18
    const/4 v6, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 1539
    add-int/lit8 v60, v60, 0x1

    .line 1540
    const/4 v6, -0x1

    move/from16 v0, v48

    if-eq v0, v6, :cond_19

    move/from16 v0, v48

    move/from16 v1, v19

    if-eq v0, v1, :cond_1a

    .line 1541
    :cond_19
    move/from16 v48, v19

    .line 1542
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 1543
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1544
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1546
    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    :cond_1a
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1547
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1548
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1549
    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    .line 1550
    .restart local v58       #strBuffer2:Ljava/lang/StringBuffer;
    const/4 v6, 0x1

    move/from16 v0, v19

    if-ne v0, v6, :cond_1c

    .line 1551
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1553
    const v6, 0x7f0801b6

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1561
    :goto_a
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    .line 1562
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1564
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1565
    const/16 v60, 0x0

    .line 1533
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    .end local v58           #strBuffer2:Ljava/lang/StringBuffer;
    :cond_1b
    :goto_b
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_9

    .line 1556
    .restart local v58       #strBuffer2:Ljava/lang/StringBuffer;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1558
    const v6, 0x7f0801b5

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_a

    .line 1567
    .end local v58           #strBuffer2:Ljava/lang/StringBuffer;
    :cond_1d
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1568
    const/4 v6, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    .line 1569
    move/from16 v0, v19

    move/from16 v1, v39

    if-eq v0, v1, :cond_1b

    .line 1570
    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    .line 1571
    .restart local v58       #strBuffer2:Ljava/lang/StringBuffer;
    const/4 v6, 0x1

    move/from16 v0, v19

    if-ne v0, v6, :cond_1e

    .line 1572
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1574
    const v6, 0x7f0801b6

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1582
    :goto_c
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    .line 1583
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1585
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1586
    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    .end local v61           #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 1587
    .restart local v61       #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/16 v60, 0x0

    goto/16 :goto_b

    .line 1577
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1579
    const v6, 0x7f0801b5

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_c

    .line 1591
    .end local v19           #favorite:I
    .end local v21           #i:I
    .end local v39           #nextfavorite:I
    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .end local v48           #prevfavorite:I
    .end local v58           #strBuffer2:Ljava/lang/StringBuffer;
    :cond_1f
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_27

    .line 1592
    const/4 v12, -0x1

    .line 1593
    .local v12, attachment:I
    const/16 v32, -0x1

    .line 1594
    .local v32, nextAttachment:I
    const/16 v43, -0x1

    .line 1596
    .local v43, prevAttachment:I
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_d
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_52

    .line 1597
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1598
    move-object/from16 v0, v61

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1599
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_20

    .line 1600
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 1601
    :cond_20
    const/16 v6, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1602
    add-int/lit8 v60, v60, 0x1

    .line 1603
    const/4 v6, -0x1

    move/from16 v0, v43

    if-eq v0, v6, :cond_21

    move/from16 v0, v43

    if-eq v0, v12, :cond_22

    .line 1604
    :cond_21
    move/from16 v43, v12

    .line 1605
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 1606
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1607
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1609
    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    :cond_22
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1610
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1611
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 1612
    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    .line 1613
    .restart local v58       #strBuffer2:Ljava/lang/StringBuffer;
    const/4 v6, 0x1

    if-ne v12, v6, :cond_24

    .line 1614
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1616
    const v6, 0x7f0801b7

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1624
    :goto_e
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    .line 1625
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1627
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1628
    const/16 v60, 0x0

    .line 1596
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    .end local v58           #strBuffer2:Ljava/lang/StringBuffer;
    :cond_23
    :goto_f
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_d

    .line 1619
    .restart local v58       #strBuffer2:Ljava/lang/StringBuffer;
    :cond_24
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1621
    const v6, 0x7f0801b5

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_e

    .line 1630
    .end local v58           #strBuffer2:Ljava/lang/StringBuffer;
    :cond_25
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1631
    const/16 v6, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 1632
    move/from16 v0, v32

    if-eq v12, v0, :cond_23

    .line 1633
    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    .line 1634
    .restart local v58       #strBuffer2:Ljava/lang/StringBuffer;
    const/4 v6, 0x1

    if-ne v12, v6, :cond_26

    .line 1635
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1637
    const v6, 0x7f0801b7

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1645
    :goto_10
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    .line 1646
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1648
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1649
    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    .end local v61           #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 1650
    .restart local v61       #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/16 v60, 0x0

    goto/16 :goto_f

    .line 1640
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    :cond_26
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1642
    const v6, 0x7f0801b5

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_10

    .line 1654
    .end local v12           #attachment:I
    .end local v21           #i:I
    .end local v32           #nextAttachment:I
    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .end local v43           #prevAttachment:I
    .end local v58           #strBuffer2:Ljava/lang/StringBuffer;
    :cond_27
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_31

    .line 1655
    const/16 v24, -0x1

    .line 1656
    .local v24, importance:I
    const/16 v34, -0x1

    .line 1657
    .local v34, nextImportance:I
    const/16 v45, -0x1

    .line 1658
    .local v45, prevImportance:I
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_11
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_52

    .line 1659
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1660
    move-object/from16 v0, v61

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1661
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_28

    .line 1662
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 1663
    :cond_28
    const/16 v6, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 1664
    add-int/lit8 v60, v60, 0x1

    .line 1665
    const/4 v6, -0x1

    move/from16 v0, v45

    if-eq v0, v6, :cond_29

    move/from16 v0, v45

    move/from16 v1, v24

    if-eq v0, v1, :cond_2a

    .line 1666
    :cond_29
    move/from16 v45, v24

    .line 1667
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 1668
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1669
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1671
    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    :cond_2a
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1672
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1673
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 1674
    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    .line 1675
    .restart local v58       #strBuffer2:Ljava/lang/StringBuffer;
    const/4 v6, 0x2

    move/from16 v0, v24

    if-ne v0, v6, :cond_2c

    .line 1676
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f08031d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1677
    const v6, 0x7f08031d

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1687
    :goto_12
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    .line 1688
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1690
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1691
    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    .end local v61           #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 1692
    .restart local v61       #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/16 v60, 0x0

    .line 1658
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    .end local v58           #strBuffer2:Ljava/lang/StringBuffer;
    :cond_2b
    :goto_13
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_11

    .line 1679
    .restart local v58       #strBuffer2:Ljava/lang/StringBuffer;
    :cond_2c
    const/4 v6, 0x1

    move/from16 v0, v24

    if-ne v0, v6, :cond_2d

    .line 1680
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f08031e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1681
    const v6, 0x7f08031e

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_12

    .line 1684
    :cond_2d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f08031c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1685
    const v6, 0x7f08031c

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_12

    .line 1694
    .end local v58           #strBuffer2:Ljava/lang/StringBuffer;
    :cond_2e
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1695
    const/16 v6, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 1696
    move/from16 v0, v24

    move/from16 v1, v34

    if-eq v0, v1, :cond_2b

    .line 1697
    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    .line 1698
    .restart local v58       #strBuffer2:Ljava/lang/StringBuffer;
    const/4 v6, 0x2

    move/from16 v0, v24

    if-ne v0, v6, :cond_2f

    .line 1699
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f08031d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1701
    const v6, 0x7f08031d

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1713
    :goto_14
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    .line 1714
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1716
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1717
    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    .end local v61           #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 1718
    .restart local v61       #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/16 v60, 0x0

    goto/16 :goto_13

    .line 1703
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    :cond_2f
    const/4 v6, 0x1

    move/from16 v0, v24

    if-ne v0, v6, :cond_30

    .line 1704
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f08031e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1706
    const v6, 0x7f08031e

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_14

    .line 1709
    :cond_30
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f08031c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1710
    const v6, 0x7f08031c

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_14

    .line 1722
    .end local v21           #i:I
    .end local v24           #importance:I
    .end local v34           #nextImportance:I
    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .end local v45           #prevImportance:I
    .end local v58           #strBuffer2:Ljava/lang/StringBuffer;
    :cond_31
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_3b

    .line 1723
    const/16 v20, -0x1

    .line 1724
    .local v20, flagStatus:I
    const/16 v40, -0x1

    .line 1725
    .local v40, nextflagStatus:I
    const/16 v49, -0x1

    .line 1726
    .local v49, prevflagStatus:I
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_15
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_52

    .line 1727
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1728
    move-object/from16 v0, v61

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1729
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_32

    .line 1730
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 1731
    :cond_32
    const/16 v6, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 1732
    add-int/lit8 v60, v60, 0x1

    .line 1733
    const/4 v6, -0x1

    move/from16 v0, v49

    if-eq v0, v6, :cond_33

    move/from16 v0, v49

    move/from16 v1, v20

    if-eq v0, v1, :cond_34

    .line 1734
    :cond_33
    move/from16 v49, v20

    .line 1735
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 1736
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1737
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1739
    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    :cond_34
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1740
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1741
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 1742
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    .line 1743
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    .line 1744
    .restart local v58       #strBuffer2:Ljava/lang/StringBuffer;
    const/4 v6, 0x2

    move/from16 v0, v20

    if-ne v0, v6, :cond_36

    .line 1745
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080316

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1747
    const v6, 0x7f080316

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1760
    :goto_16
    new-instance v56, Ljava/lang/StringBuffer;

    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    .line 1761
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1763
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1764
    const/16 v60, 0x0

    .line 1726
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    .end local v58           #strBuffer2:Ljava/lang/StringBuffer;
    :cond_35
    :goto_17
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_15

    .line 1749
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    .restart local v58       #strBuffer2:Ljava/lang/StringBuffer;
    :cond_36
    const/4 v6, 0x1

    move/from16 v0, v20

    if-ne v0, v6, :cond_37

    .line 1750
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080317

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1752
    const v6, 0x7f080317

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_16

    .line 1755
    :cond_37
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080318

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1757
    const v6, 0x7f080318

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_16

    .line 1766
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    .end local v58           #strBuffer2:Ljava/lang/StringBuffer;
    :cond_38
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1767
    const/16 v6, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 1768
    move/from16 v0, v20

    move/from16 v1, v40

    if-eq v0, v1, :cond_35

    .line 1769
    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    .line 1770
    .restart local v58       #strBuffer2:Ljava/lang/StringBuffer;
    const/4 v6, 0x2

    move/from16 v0, v20

    if-ne v0, v6, :cond_39

    .line 1771
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080316

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1773
    const v6, 0x7f080316

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1786
    :goto_18
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    .line 1787
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1789
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1790
    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    .end local v61           #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 1791
    .restart local v61       #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/16 v60, 0x0

    goto/16 :goto_17

    .line 1775
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    :cond_39
    const/4 v6, 0x1

    move/from16 v0, v20

    if-ne v0, v6, :cond_3a

    .line 1776
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080317

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1778
    const v6, 0x7f080317

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_18

    .line 1781
    :cond_3a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080318

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1783
    const v6, 0x7f080318

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_18

    .line 1795
    .end local v20           #flagStatus:I
    .end local v21           #i:I
    .end local v40           #nextflagStatus:I
    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .end local v49           #prevflagStatus:I
    .end local v58           #strBuffer2:Ljava/lang/StringBuffer;
    :cond_3b
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_43

    .line 1796
    const/16 v26, -0x1

    .line 1797
    .local v26, inviteStatus:I
    const/16 v41, -0x1

    .line 1798
    .local v41, nextinviteStatus:I
    const/16 v50, -0x1

    .line 1799
    .local v50, previnviteStatus:I
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_19
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_52

    .line 1800
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1801
    move-object/from16 v0, v61

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1802
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3c

    .line 1803
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 1804
    :cond_3c
    const/16 v6, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1805
    add-int/lit8 v60, v60, 0x1

    .line 1806
    const/4 v6, -0x1

    move/from16 v0, v50

    if-eq v0, v6, :cond_3d

    move/from16 v0, v50

    move/from16 v1, v26

    if-eq v0, v1, :cond_3e

    .line 1807
    :cond_3d
    move/from16 v50, v26

    .line 1808
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 1809
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1810
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1812
    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    :cond_3e
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1813
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1814
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_41

    .line 1815
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    .line 1816
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    .line 1817
    .restart local v58       #strBuffer2:Ljava/lang/StringBuffer;
    and-int/lit8 v6, v26, 0x4

    if-eqz v6, :cond_40

    .line 1818
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f08031f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1820
    const v6, 0x7f08031f

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1828
    :goto_1a
    new-instance v56, Ljava/lang/StringBuffer;

    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    .line 1829
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1831
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1832
    const/16 v60, 0x0

    .line 1799
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    .end local v58           #strBuffer2:Ljava/lang/StringBuffer;
    :cond_3f
    :goto_1b
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_19

    .line 1823
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    .restart local v58       #strBuffer2:Ljava/lang/StringBuffer;
    :cond_40
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080320

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1825
    const v6, 0x7f080320

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_1a

    .line 1834
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    .end local v58           #strBuffer2:Ljava/lang/StringBuffer;
    :cond_41
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1835
    const/16 v6, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    .line 1836
    move/from16 v0, v26

    move/from16 v1, v41

    if-eq v0, v1, :cond_3f

    .line 1837
    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    .line 1838
    .restart local v58       #strBuffer2:Ljava/lang/StringBuffer;
    and-int/lit8 v6, v26, 0x4

    if-eqz v6, :cond_42

    .line 1839
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f08031f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1841
    const v6, 0x7f08031f

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1849
    :goto_1c
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    .line 1850
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1852
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1853
    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    .end local v61           #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 1854
    .restart local v61       #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/16 v60, 0x0

    goto/16 :goto_1b

    .line 1844
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    :cond_42
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080320

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1846
    const v6, 0x7f080320

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_1c

    .line 1858
    .end local v21           #i:I
    .end local v26           #inviteStatus:I
    .end local v41           #nextinviteStatus:I
    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .end local v50           #previnviteStatus:I
    .end local v58           #strBuffer2:Ljava/lang/StringBuffer;
    :cond_43
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_53

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->versionDouble:D

    const-wide/high16 v8, 0x402c

    cmpg-double v6, v6, v8

    if-gez v6, :cond_53

    .line 1860
    new-instance v67, Ljava/util/HashMap;

    invoke-direct/range {v67 .. v67}, Ljava/util/HashMap;-><init>()V

    .line 1861
    .local v67, threadMailMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;>;"
    new-instance v66, Ljava/util/ArrayList;

    invoke-direct/range {v66 .. v66}, Ljava/util/ArrayList;-><init>()V

    .line 1862
    .local v66, threadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v29, 0x0

    .line 1863
    .local v29, messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    const/16 v73, 0x0

    .line 1864
    .local v73, totalThreadMail:I
    const/16 v64, 0x0

    .line 1866
    .local v64, threadCount:I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 1869
    :cond_44
    new-instance v30, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;-><init>(Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;)V

    .line 1870
    .local v30, msgData:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->recordID:Ljava/lang/Long;

    .line 1871
    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailBoxKey:I

    .line 1872
    const/4 v6, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountKey:I

    .line 1873
    const/4 v6, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    .line 1874
    const/4 v6, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->subject:Ljava/lang/String;

    .line 1875
    const/4 v6, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v30

    iput-wide v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->timeStamp:J

    .line 1876
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagRead:I

    .line 1877
    const/4 v6, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagFavorite:I

    .line 1878
    const/16 v6, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagAttachment:I

    .line 1879
    const/16 v6, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->threadId:Ljava/lang/Long;

    .line 1880
    const/16 v6, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->typeMsg:I

    .line 1881
    const/16 v6, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flags:I

    .line 1882
    const/16 v6, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->importance:I

    .line 1883
    const/16 v6, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagStatus:I

    .line 1884
    const/16 v6, 0xe

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->smime:I

    .line 1885
    const/16 v6, 0xf

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->messageType:I

    .line 1886
    const/16 v6, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->sFlag:I

    .line 1887
    const/16 v6, 0x11

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->lastVerb:I

    .line 1888
    const/16 v6, 0x12

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    .line 1889
    const/16 v6, 0x13

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convThreadId:I

    .line 1890
    const/16 v6, 0x14

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReadConv:I

    .line 1891
    const/16 v6, 0x15

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagSetConv:I

    .line 1892
    const/16 v6, 0x16

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagComConv:I

    .line 1893
    const/16 v6, 0x17

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountSchema:Ljava/lang/String;

    .line 1894
    const/16 v6, 0x18

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailboxType:I

    .line 1895
    const/16 v6, 0x19

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->snippet:Ljava/lang/String;

    .line 1896
    const/16 v6, 0x1a

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReply:I

    .line 1897
    const/16 v6, 0x1b

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->templateId:Ljava/lang/String;

    .line 1898
    const/16 v6, 0x1c

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->serverId:Ljava/lang/String;

    .line 1899
    const/16 v6, 0x1d

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->localRead:I

    .line 1900
    add-int/lit8 v73, v73, 0x1

    .line 1901
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_45

    .line 1902
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 1904
    :cond_45
    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->threadId:Ljava/lang/Long;

    move-object/from16 v0, v67

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .end local v29           #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    check-cast v29, Ljava/util/List;

    .line 1905
    .restart local v29       #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    if-nez v29, :cond_4a

    .line 1906
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 1907
    .local v31, newList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1908
    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->threadId:Ljava/lang/Long;

    move-object/from16 v0, v67

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1910
    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->threadId:Ljava/lang/Long;

    move-object/from16 v0, v66

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1921
    .end local v31           #newList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    :cond_46
    :goto_1d
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_44

    .line 1925
    .end local v30           #msgData:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    :cond_47
    new-instance v13, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/email/activity/MessagesAdapter;->THREAD_PROJECTION:[Ljava/lang/String;

    move/from16 v0, v73

    invoke-direct {v13, v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1927
    .local v13, childCursor:Landroid/database/MatrixCursor;
    const/16 v28, 0x0

    .line 1928
    .local v28, listSize:I
    new-instance v55, Ljava/util/HashSet;

    invoke-direct/range {v55 .. v55}, Ljava/util/HashSet;-><init>()V

    .line 1929
    .local v55, senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {v66 .. v66}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_48
    :goto_1e
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Ljava/lang/Long;

    .line 1930
    .local v65, threadId:Ljava/lang/Long;
    move-object/from16 v0, v67

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .end local v29           #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    check-cast v29, Ljava/util/List;

    .line 1931
    .restart local v29       #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    if-eqz v29, :cond_48

    .line 1934
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v28

    .line 1935
    invoke-virtual/range {v55 .. v55}, Ljava/util/HashSet;->clear()V

    .line 1938
    const/4 v6, 0x1

    move/from16 v0, v28

    if-le v0, v6, :cond_4f

    .line 1939
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 1940
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1941
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1942
    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    .line 1943
    .local v16, data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->subject:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->getThreadNameFromSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1945
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagRead:I

    move-object/from16 v0, v61

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsRead:I

    .line 1946
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    .line 1947
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$800()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 1948
    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1958
    :goto_1f
    :try_start_0
    new-instance v57, Ljava/lang/StringBuffer;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v0, v57

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1959
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    .local v57, strBuffer:Ljava/lang/StringBuffer;
    :try_start_1
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v0, v55

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1961
    const/16 v21, 0x1

    .restart local v21       #i:I
    :goto_20
    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_4c

    .line 1962
    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    .line 1963
    .local v59, subData:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    move-object/from16 v0, v59

    iget-object v0, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v62, v0

    .line 1965
    .local v62, tempString:Ljava/lang/String;
    move-object/from16 v0, v55

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_49

    .line 1966
    move-object/from16 v0, v55

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1967
    const-string v6, ", "

    move-object/from16 v0, v57

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object/from16 v0, v62

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1969
    :cond_49
    move-object/from16 v0, v61

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsRead:I

    move-object/from16 v0, v59

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagRead:I

    and-int/2addr v6, v7

    move-object/from16 v0, v61

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsRead:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1961
    add-int/lit8 v21, v21, 0x1

    goto :goto_20

    .line 1912
    .end local v13           #childCursor:Landroid/database/MatrixCursor;
    .end local v16           #data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .end local v21           #i:I
    .end local v28           #listSize:I
    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .end local v55           #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v57           #strBuffer:Ljava/lang/StringBuffer;
    .end local v59           #subData:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .end local v62           #tempString:Ljava/lang/String;
    .end local v65           #threadId:Ljava/lang/Long;
    .restart local v30       #msgData:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    :cond_4a
    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1917
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_46

    .line 1918
    add-int/lit8 v73, v73, 0x1

    goto/16 :goto_1d

    .line 1951
    .end local v30           #msgData:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .restart local v13       #childCursor:Landroid/database/MatrixCursor;
    .restart local v16       #data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .restart local v28       #listSize:I
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .restart local v55       #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    .restart local v65       #threadId:Ljava/lang/Long;
    :cond_4b
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v6

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    goto :goto_1f

    .line 1971
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    .restart local v21       #i:I
    .restart local v57       #strBuffer:Ljava/lang/StringBuffer;
    :cond_4c
    :try_start_2
    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListSub:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v56, v57

    .line 1979
    .end local v21           #i:I
    .end local v57           #strBuffer:Ljava/lang/StringBuffer;
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    :goto_21
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_22
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v21

    if-ge v0, v6, :cond_4d

    .line 1980
    move-object/from16 v0, v61

    iget-object v7, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    iget-object v6, v6, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->recordID:Ljava/lang/Long;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1981
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v64

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1982
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1983
    add-int/lit8 v64, v64, 0x1

    .line 1979
    add-int/lit8 v21, v21, 0x1

    goto :goto_22

    .line 1972
    .end local v21           #i:I
    :catch_0
    move-exception v18

    .line 1973
    .local v18, e:Ljava/lang/Exception;
    :goto_23
    const-string v6, "MessagesAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception : makeSubTitleList\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListSub:Ljava/lang/String;

    .line 1975
    const/4 v6, 0x1

    move-object/from16 v0, v61

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsRead:I

    goto :goto_21

    .line 1986
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v21       #i:I
    :cond_4d
    const/4 v6, 0x0

    move-object/from16 v0, v61

    iput-boolean v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    .line 1987
    invoke-virtual/range {v65 .. v65}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1988
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1989
    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    .end local v61           #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 1996
    .end local v16           #data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .end local v21           #i:I
    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    .restart local v61       #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    :cond_4e
    :goto_24
    const/16 v25, 0x0

    .line 1998
    .local v25, index:I
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_25
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    .line 1999
    .restart local v16       #data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    invoke-virtual {v13}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v53

    .line 2000
    .local v53, row:Landroid/database/MatrixCursor$RowBuilder;
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->recordID:Ljava/lang/Long;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2001
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailBoxKey:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2002
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountKey:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2003
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2004
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->subject:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2005
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->timeStamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2006
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagRead:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2007
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagFavorite:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2008
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagAttachment:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2009
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->threadId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2010
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->typeMsg:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2011
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flags:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2012
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->importance:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2013
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2014
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->smime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2015
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->messageType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2016
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->sFlag:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2017
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->lastVerb:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2018
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2019
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convThreadId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2020
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReadConv:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2021
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagSetConv:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2022
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagComConv:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2023
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountSchema:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2024
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailboxType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2025
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->snippet:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2026
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReply:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2027
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->templateId:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2028
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->serverId:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2029
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->localRead:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2030
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2031
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2032
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_25

    .line 1990
    .end local v16           #data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v25           #index:I
    .end local v53           #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_4f
    const/4 v6, 0x1

    move/from16 v0, v28

    if-ne v0, v6, :cond_4e

    .line 1991
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    const/4 v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v64

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1992
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1993
    add-int/lit8 v64, v64, 0x1

    goto/16 :goto_24

    .line 2034
    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .restart local v23       #i$:Ljava/util/Iterator;
    .restart local v25       #index:I
    :cond_50
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->clear()V

    .line 2035
    const/16 v29, 0x0

    .line 2036
    goto/16 :goto_1e

    .line 2037
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v25           #index:I
    .end local v65           #threadId:Ljava/lang/Long;
    :cond_51
    invoke-virtual/range {v66 .. v66}, Ljava/util/ArrayList;->clear()V

    .line 2038
    const/16 v66, 0x0

    .line 2039
    invoke-virtual/range {v67 .. v67}, Ljava/util/HashMap;->clear()V

    .line 2040
    const/16 v67, 0x0

    .line 2041
    move-object/from16 v52, v13

    .line 2042
    invoke-interface/range {v52 .. v52}, Landroid/database/Cursor;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    .line 2267
    .end local v13           #childCursor:Landroid/database/MatrixCursor;
    .end local v28           #listSize:I
    .end local v29           #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    .end local v55           #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v64           #threadCount:I
    .end local v66           #threadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v67           #threadMailMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;>;"
    .end local v73           #totalThreadMail:I
    :cond_52
    :goto_26
    return-object v52

    .line 2044
    :cond_53
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_63

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->versionDouble:D

    const-wide/high16 v8, 0x402c

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_63

    .line 2046
    new-instance v68, Ljava/util/HashMap;

    invoke-direct/range {v68 .. v68}, Ljava/util/HashMap;-><init>()V

    .line 2047
    .local v68, threadMailMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2048
    .local v15, conversationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v29, 0x0

    .line 2049
    .restart local v29       #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    const/16 v73, 0x0

    .line 2050
    .restart local v73       #totalThreadMail:I
    const/16 v64, 0x0

    .line 2053
    .restart local v64       #threadCount:I
    const/16 v63, 0x0

    .line 2055
    .local v63, temp_conversationId:I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 2058
    :cond_54
    new-instance v30, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;-><init>(Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;)V

    .line 2059
    .restart local v30       #msgData:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->recordID:Ljava/lang/Long;

    .line 2060
    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailBoxKey:I

    .line 2061
    const/4 v6, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountKey:I

    .line 2062
    const/4 v6, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    .line 2063
    const/4 v6, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->subject:Ljava/lang/String;

    .line 2064
    const/4 v6, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v30

    iput-wide v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->timeStamp:J

    .line 2065
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagRead:I

    .line 2066
    const/4 v6, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagFavorite:I

    .line 2067
    const/16 v6, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagAttachment:I

    .line 2068
    const/16 v6, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->threadId:Ljava/lang/Long;

    .line 2069
    const/16 v6, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->typeMsg:I

    .line 2070
    const/16 v6, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flags:I

    .line 2071
    const/16 v6, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->importance:I

    .line 2072
    const/16 v6, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagStatus:I

    .line 2073
    const/16 v6, 0xe

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->smime:I

    .line 2074
    const/16 v6, 0xf

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->messageType:I

    .line 2075
    const/16 v6, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->sFlag:I

    .line 2076
    const/16 v6, 0x11

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->lastVerb:I

    .line 2077
    const/16 v6, 0x12

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    .line 2078
    const/16 v6, 0x13

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convThreadId:I

    .line 2079
    const/16 v6, 0x14

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReadConv:I

    .line 2080
    const/16 v6, 0x15

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagSetConv:I

    .line 2081
    const/16 v6, 0x16

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagComConv:I

    .line 2082
    const/16 v6, 0x17

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountSchema:Ljava/lang/String;

    .line 2083
    const/16 v6, 0x18

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailboxType:I

    .line 2084
    const/16 v6, 0x19

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->snippet:Ljava/lang/String;

    .line 2085
    const/16 v6, 0x1a

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReply:I

    .line 2086
    const/16 v6, 0x1b

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->templateId:Ljava/lang/String;

    .line 2087
    const/16 v6, 0x1c

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->serverId:Ljava/lang/String;

    .line 2088
    const/16 v6, 0x1d

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->localRead:I

    .line 2089
    add-int/lit8 v73, v73, 0x1

    .line 2090
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_55

    .line 2091
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 2092
    :cond_55
    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    if-eqz v6, :cond_59

    .line 2094
    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    move-object/from16 v0, v68

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .end local v29           #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    check-cast v29, Ljava/util/List;

    .line 2095
    .restart local v29       #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    if-nez v29, :cond_58

    .line 2096
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 2097
    .restart local v31       #newList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2098
    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    move-object/from16 v0, v68

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2100
    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2101
    add-int/lit8 v73, v73, 0x1

    .line 2120
    .end local v31           #newList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    :goto_27
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_54

    .line 2122
    const/16 v28, 0x0

    .line 2123
    .restart local v28       #listSize:I
    new-instance v55, Ljava/util/HashSet;

    invoke-direct/range {v55 .. v55}, Ljava/util/HashSet;-><init>()V

    .line 2124
    .restart local v55       #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_56
    :goto_28
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Ljava/lang/String;

    .line 2125
    .local v65, threadId:Ljava/lang/String;
    move-object/from16 v0, v68

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .end local v29           #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    check-cast v29, Ljava/util/List;

    .line 2126
    .restart local v29       #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    if-eqz v29, :cond_56

    .line 2129
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v28

    .line 2130
    invoke-virtual/range {v55 .. v55}, Ljava/util/HashSet;->clear()V

    .line 2133
    const/4 v6, 0x1

    move/from16 v0, v28

    if-le v0, v6, :cond_56

    .line 2135
    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    .line 2141
    .restart local v16       #data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    :try_start_3
    new-instance v56, Ljava/lang/StringBuffer;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v0, v56

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2142
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v0, v55

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2144
    const/16 v21, 0x1

    .restart local v21       #i:I
    :goto_29
    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_5a

    .line 2145
    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    .line 2146
    .restart local v59       #subData:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    move-object/from16 v0, v59

    iget-object v0, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v62, v0

    .line 2148
    .restart local v62       #tempString:Ljava/lang/String;
    move-object/from16 v0, v55

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_57

    .line 2149
    move-object/from16 v0, v55

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2150
    const-string v6, ", "

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object/from16 v0, v62

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2144
    :cond_57
    add-int/lit8 v21, v21, 0x1

    goto :goto_29

    .line 2103
    .end local v16           #data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .end local v21           #i:I
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v28           #listSize:I
    .end local v55           #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    .end local v59           #subData:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .end local v62           #tempString:Ljava/lang/String;
    .end local v65           #threadId:Ljava/lang/String;
    :cond_58
    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 2111
    :cond_59
    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    .line 2112
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 2113
    .local v27, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2114
    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    move-object/from16 v0, v68

    move-object/from16 v1, v27

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2115
    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2116
    add-int/lit8 v63, v63, 0x1

    .line 2117
    add-int/lit8 v73, v73, 0x1

    goto/16 :goto_27

    .line 2153
    .end local v27           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    .restart local v16       #data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .restart local v21       #i:I
    .restart local v22       #i$:Ljava/util/Iterator;
    .restart local v28       #listSize:I
    .restart local v55       #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    .restart local v65       #threadId:Ljava/lang/String;
    :cond_5a
    :try_start_4
    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListSub:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_28

    .line 2154
    .end local v21           #i:I
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v18

    .line 2155
    .restart local v18       #e:Ljava/lang/Exception;
    const-string v6, "MessagesAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception : makeSubTitleList\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListSub:Ljava/lang/String;

    goto/16 :goto_28

    .line 2165
    .end local v16           #data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .end local v18           #e:Ljava/lang/Exception;
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v28           #listSize:I
    .end local v30           #msgData:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .end local v55           #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v65           #threadId:Ljava/lang/String;
    :cond_5b
    new-instance v13, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/email/activity/MessagesAdapter;->THREAD_PROJECTION:[Ljava/lang/String;

    move/from16 v0, v73

    invoke-direct {v13, v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 2167
    .restart local v13       #childCursor:Landroid/database/MatrixCursor;
    const/16 v28, 0x0

    .line 2168
    .restart local v28       #listSize:I
    new-instance v55, Ljava/util/HashSet;

    invoke-direct/range {v55 .. v55}, Ljava/util/HashSet;-><init>()V

    .line 2169
    .restart local v55       #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_5c
    :goto_2a
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2170
    .local v14, convId:Ljava/lang/String;
    move-object/from16 v0, v68

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .end local v29           #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    check-cast v29, Ljava/util/List;

    .line 2171
    .restart local v29       #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    if-eqz v29, :cond_5c

    .line 2173
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v28

    .line 2174
    invoke-virtual/range {v55 .. v55}, Ljava/util/HashSet;->clear()V

    .line 2176
    const/4 v6, 0x1

    move/from16 v0, v28

    if-le v0, v6, :cond_60

    .line 2177
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 2178
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 2179
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2180
    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    .line 2181
    .restart local v16       #data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->subject:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->getThreadNameFromSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 2183
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    .line 2184
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$800()Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 2185
    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 2193
    :goto_2b
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_2c
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v21

    if-ge v0, v6, :cond_5e

    .line 2194
    move-object/from16 v0, v61

    iget-object v7, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    iget-object v6, v6, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->recordID:Ljava/lang/Long;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2195
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v64

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 2196
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2197
    add-int/lit8 v64, v64, 0x1

    .line 2193
    add-int/lit8 v21, v21, 0x1

    goto :goto_2c

    .line 2188
    .end local v21           #i:I
    :cond_5d
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v6

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    goto :goto_2b

    .line 2199
    .restart local v21       #i:I
    :cond_5e
    move-object/from16 v0, v61

    iput-object v14, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 2200
    const/4 v6, 0x0

    move-object/from16 v0, v61

    iput-boolean v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    .line 2201
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2202
    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    .end local v61           #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 2209
    .end local v16           #data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .end local v21           #i:I
    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .end local v56           #strBuffer:Ljava/lang/StringBuffer;
    .restart local v61       #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    :cond_5f
    :goto_2d
    const/16 v25, 0x0

    .line 2211
    .restart local v25       #index:I
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #i$:Ljava/util/Iterator;
    :goto_2e
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    .line 2212
    .restart local v16       #data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    invoke-virtual {v13}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v53

    .line 2213
    .restart local v53       #row:Landroid/database/MatrixCursor$RowBuilder;
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->recordID:Ljava/lang/Long;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2214
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailBoxKey:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2215
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountKey:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2216
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2217
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->subject:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2218
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->timeStamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2219
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagRead:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2220
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagFavorite:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2221
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagAttachment:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2222
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->threadId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2223
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->typeMsg:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2224
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flags:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2225
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->importance:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2226
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2227
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->smime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2228
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->messageType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2229
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->sFlag:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2230
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->lastVerb:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2231
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2232
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convThreadId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2233
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReadConv:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2234
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagSetConv:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2235
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagComConv:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2236
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountSchema:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2237
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailboxType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2238
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->snippet:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2239
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReply:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2240
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->templateId:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2241
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->serverId:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2242
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->localRead:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2243
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2244
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2245
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_2e

    .line 2203
    .end local v16           #data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v25           #index:I
    .end local v53           #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_60
    const/4 v6, 0x1

    move/from16 v0, v28

    if-ne v0, v6, :cond_5f

    .line 2204
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    const/4 v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v64

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 2205
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2206
    add-int/lit8 v64, v64, 0x1

    goto/16 :goto_2d

    .line 2247
    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .restart local v23       #i$:Ljava/util/Iterator;
    .restart local v25       #index:I
    :cond_61
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->clear()V

    .line 2248
    const/16 v29, 0x0

    .line 2249
    goto/16 :goto_2a

    .line 2250
    .end local v14           #convId:Ljava/lang/String;
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v25           #index:I
    :cond_62
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 2251
    const/4 v15, 0x0

    .line 2252
    invoke-virtual/range {v68 .. v68}, Ljava/util/HashMap;->clear()V

    .line 2253
    const/16 v68, 0x0

    .line 2254
    move-object/from16 v52, v13

    .line 2255
    invoke-interface/range {v52 .. v52}, Landroid/database/Cursor;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    goto/16 :goto_26

    .line 2256
    .end local v13           #childCursor:Landroid/database/MatrixCursor;
    .end local v15           #conversationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28           #listSize:I
    .end local v29           #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    .end local v55           #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v63           #temp_conversationId:I
    .end local v64           #threadCount:I
    .end local v68           #threadMailMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;>;"
    .end local v73           #totalThreadMail:I
    :cond_63
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_52

    .line 2257
    const-string v6, "Email"

    const-string v7, "SORT_BY_SEARCH "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_2f
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_65

    .line 2259
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2260
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 2261
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2262
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_64

    .line 2263
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 2258
    :cond_64
    add-int/lit8 v21, v21, 0x1

    goto :goto_2f

    .line 2265
    .end local v42           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    :cond_65
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    goto/16 :goto_26

    .line 1972
    .end local v21           #i:I
    .restart local v13       #childCursor:Landroid/database/MatrixCursor;
    .restart local v16       #data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .restart local v28       #listSize:I
    .restart local v29       #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    .restart local v42       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .restart local v55       #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v57       #strBuffer:Ljava/lang/StringBuffer;
    .restart local v64       #threadCount:I
    .local v65, threadId:Ljava/lang/Long;
    .restart local v66       #threadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v67       #threadMailMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;>;"
    .restart local v73       #totalThreadMail:I
    :catch_2
    move-exception v18

    move-object/from16 v56, v57

    .end local v57           #strBuffer:Ljava/lang/StringBuffer;
    .restart local v56       #strBuffer:Ljava/lang/StringBuffer;
    goto/16 :goto_23
.end method

.method private restoreSubTitleState()V
    .locals 7

    .prologue
    .line 2272
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2273
    .local v0, hideViewPositionTemp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 2274
    .local v4, tempString:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2275
    .local v3, subTempString:Ljava/lang/String;
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$900()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$900()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 2276
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$900()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 2277
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$900()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v4, v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 2278
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 2279
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v3, v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 2280
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2281
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$900()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-boolean v6, v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    iput-boolean v6, v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    .line 2282
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$900()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-boolean v6, v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsChecked:Z

    iput-boolean v6, v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsChecked:Z

    .line 2283
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$900()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-boolean v5, v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    if-nez v5, :cond_0

    .line 2284
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v5, v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2276
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2278
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2291
    .end local v1           #i:I
    .end local v2           #j:I
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 2292
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-boolean v5, v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    if-nez v5, :cond_3

    .line 2293
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v5, v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2291
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2297
    :cond_4
    iget v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    invoke-static {v5}, Lcom/android/email/activity/MessagesAdapter;->access$302(I)I

    .line 2298
    iget v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    invoke-static {v5}, Lcom/android/email/activity/MessagesAdapter;->access$102(I)I

    .line 2299
    iget v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    invoke-static {v5}, Lcom/android/email/activity/MessagesAdapter;->access$202(I)I

    .line 2300
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/email/activity/MessagesAdapter;->access$402(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2301
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2302
    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    invoke-static {v5}, Lcom/android/email/activity/MessagesAdapter;->access$502(Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 2303
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 2304
    const/4 v0, 0x0

    .line 2305
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/email/activity/MessagesAdapter;->access$602(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2306
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2307
    return-void
.end method


# virtual methods
.method public getSeparateStr(JJ)Ljava/lang/String;
    .locals 6
    .parameter "stamp"
    .parameter "todayMilli"

    .prologue
    .line 2319
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 2320
    .local v3, tempDate:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "EEEE"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2321
    .local v1, daySimple:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 2323
    .local v2, dayString:Ljava/lang/String;
    const-string v4, "MEA_JP"

    invoke-static {v4}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2326
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->isInt(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2327
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2328
    .local v0, dayInt:I
    const/4 v4, 0x1

    if-ne v4, v0, :cond_2

    .line 2329
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f080441

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2347
    .end local v0           #dayInt:I
    :cond_0
    :goto_0
    cmp-long v4, p1, p3

    if-ltz v4, :cond_8

    .line 2348
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f0801ac

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2381
    .end local v2           #dayString:Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v2

    .line 2330
    .restart local v0       #dayInt:I
    .restart local v2       #dayString:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x2

    if-ne v4, v0, :cond_3

    .line 2331
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f080442

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2332
    :cond_3
    const/4 v4, 0x3

    if-ne v4, v0, :cond_4

    .line 2333
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f080443

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2334
    :cond_4
    const/4 v4, 0x4

    if-ne v4, v0, :cond_5

    .line 2335
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f080444

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2336
    :cond_5
    const/4 v4, 0x5

    if-ne v4, v0, :cond_6

    .line 2337
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f080445

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2338
    :cond_6
    const/4 v4, 0x6

    if-ne v4, v0, :cond_7

    .line 2339
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f080446

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2340
    :cond_7
    const/4 v4, 0x7

    if-ne v4, v0, :cond_0

    .line 2341
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f080447

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2349
    .end local v0           #dayInt:I
    :cond_8
    cmp-long v4, p1, p3

    if-gez v4, :cond_9

    const-wide/32 v4, 0x5265c00

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_9

    .line 2350
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f0801ad

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2351
    :cond_9
    const-wide/32 v4, 0x5265c00

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_a

    const-wide/32 v4, 0xa4cb800

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    .line 2354
    :cond_a
    const-wide/32 v4, 0xa4cb800

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_b

    const-wide/32 v4, 0xf731400

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    .line 2357
    :cond_b
    const-wide/32 v4, 0xf731400

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_c

    const-wide/32 v4, 0x14997000

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    .line 2360
    :cond_c
    const-wide/32 v4, 0x14997000

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_d

    const-wide/32 v4, 0x19bfcc00

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    .line 2363
    :cond_d
    const-wide/32 v4, 0x19bfcc00

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_e

    const-wide/32 v4, 0x1ee62800

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    .line 2366
    :cond_e
    const-wide/32 v4, 0x1ee62800

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_f

    const-wide/32 v4, 0x240c8400

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_f

    .line 2368
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f0801af

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 2369
    :cond_f
    const-wide/32 v4, 0x240c8400

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_10

    const-wide/32 v4, 0x48190800

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_10

    .line 2371
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f0801b0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 2372
    :cond_10
    const-wide/32 v4, 0x48190800

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_11

    const-wide/32 v4, 0x6c258c00

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_11

    .line 2374
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f0801b1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 2375
    :cond_11
    const-wide/32 v4, 0x6c258c00

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_12

    const-wide v4, 0x9a7ec800L

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_12

    .line 2377
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f0801b2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 2378
    :cond_12
    const-wide v4, 0x9a7ec800L

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_13

    .line 2379
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f0801ae

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 2381
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 1312
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    .line 1313
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/utility/Utility;->buildMailboxIdSelection(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->setSelection(Ljava/lang/String;)V

    .line 1321
    :goto_0
    :try_start_0
    invoke-super {p0}, Lcom/android/email/data/ThrottlingCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->get(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    .line 1322
    .local v1, result:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/email/activity/MessagesAdapter;->access$002(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1323
    invoke-direct {p0}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->initListVariable()V

    .line 1324
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1325
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->makeSubTitleList(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    .line 1327
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->restoreSubTitleState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1332
    .end local v1           #result:Landroid/database/Cursor;
    :goto_1
    return-object v1

    .line 1315
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/utility/Utility;->buildMailboxIdSelection(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchSelectionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_0

    .line 1329
    :catch_0
    move-exception v0

    .line 1330
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1332
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$000()Landroid/database/Cursor;

    move-result-object v1

    goto :goto_1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
