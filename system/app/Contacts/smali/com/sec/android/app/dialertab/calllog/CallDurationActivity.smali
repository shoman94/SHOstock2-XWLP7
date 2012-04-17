.class public Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;
.super Landroid/app/Activity;
.source "CallDurationActivity.java"


# instance fields
.field private final DURATION_PROJ:[Ljava/lang/String;

.field private FMC_MODE:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->FMC_MODE:Z

    .line 74
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "last_voice"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "last_video"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "last_voip"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "dial_voice"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "dial_video"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dial_voip"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rece_voice"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rece_video"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "rece_voip"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "all_voice"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "all_video"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "all_voip"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->DURATION_PROJ:[Ljava/lang/String;

    return-void
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 89
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 90
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 92
    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 94
    :cond_0
    return-void
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 9
    .parameter "elapsedSeconds"

    .prologue
    .line 395
    const-wide/16 v1, 0x0

    .line 396
    .local v1, hours:J
    const-wide/16 v3, 0x0

    .line 397
    .local v3, minutes:J
    const-wide/16 v5, 0x0

    .line 399
    .local v5, seconds:J
    const-wide/16 v7, 0xe10

    cmp-long v7, p1, v7

    if-ltz v7, :cond_0

    .line 400
    const-wide/16 v7, 0xe10

    div-long v1, p1, v7

    .line 401
    const-wide/16 v7, 0xe10

    mul-long/2addr v7, v1

    sub-long/2addr p1, v7

    .line 403
    :cond_0
    const-wide/16 v7, 0x3c

    cmp-long v7, p1, v7

    if-ltz v7, :cond_1

    .line 404
    const-wide/16 v7, 0x3c

    div-long v3, p1, v7

    .line 405
    const-wide/16 v7, 0x3c

    mul-long/2addr v7, v3

    sub-long/2addr p1, v7

    .line 407
    :cond_1
    move-wide v5, p1

    .line 409
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 410
    .local v0, duration:Ljava/lang/StringBuffer;
    const-wide/16 v7, 0xa

    cmp-long v7, v1, v7

    if-gez v7, :cond_2

    .line 411
    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 413
    :cond_2
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 414
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 416
    const-wide/16 v7, 0xa

    cmp-long v7, v3, v7

    if-gez v7, :cond_3

    .line 417
    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 419
    :cond_3
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 420
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 422
    const-wide/16 v7, 0xa

    cmp-long v7, v5, v7

    if-gez v7, :cond_4

    .line 423
    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 425
    :cond_4
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private onHomeSelected()V
    .locals 3

    .prologue
    .line 343
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 345
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 351
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->startActivity(Landroid/content/Intent;)V

    .line 352
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->finish()V

    .line 353
    return-void
.end method

.method private resetDurationTable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 281
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 282
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "all_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    const-string v1, "all_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 284
    const-string v1, "all_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    const-string v1, "last_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    const-string v1, "last_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    const-string v1, "last_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    const-string v1, "dial_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    const-string v1, "dial_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    const-string v1, "dial_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    const-string v1, "rece_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    const-string v1, "rece_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    const-string v1, "rece_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 295
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://logs/duration"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 296
    return-void
.end method

.method private setClearTime()V
    .locals 4

    .prologue
    .line 356
    const/4 v1, 0x0

    .line 357
    .local v1, voiceCallNumber:Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 358
    .local v0, videoCallNumber:Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 360
    .local v2, voipNumber:Landroid/widget/TextView;
    const v3, 0x7f0d0052

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 361
    .restart local v1       #voiceCallNumber:Landroid/widget/TextView;
    const v3, 0x7f0d0055

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #videoCallNumber:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 362
    .restart local v0       #videoCallNumber:Landroid/widget/TextView;
    const v3, 0x7f0d0058

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #voipNumber:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 364
    .restart local v2       #voipNumber:Landroid/widget/TextView;
    const-string v3, "00:00:00"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    const-string v3, "00:00:00"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    const-string v3, "00:00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    const v3, 0x7f0d005a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 369
    .restart local v1       #voiceCallNumber:Landroid/widget/TextView;
    const v3, 0x7f0d005d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #videoCallNumber:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 370
    .restart local v0       #videoCallNumber:Landroid/widget/TextView;
    const v3, 0x7f0d0060

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #voipNumber:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 372
    .restart local v2       #voipNumber:Landroid/widget/TextView;
    const-string v3, "00:00:00"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    const-string v3, "00:00:00"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    const-string v3, "00:00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    const v3, 0x7f0d0062

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 377
    .restart local v1       #voiceCallNumber:Landroid/widget/TextView;
    const v3, 0x7f0d0065

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #videoCallNumber:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 378
    .restart local v0       #videoCallNumber:Landroid/widget/TextView;
    const v3, 0x7f0d0068

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #voipNumber:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 380
    .restart local v2       #voipNumber:Landroid/widget/TextView;
    const-string v3, "00:00:00"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    const-string v3, "00:00:00"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    const-string v3, "00:00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    const v3, 0x7f0d006a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 385
    .restart local v1       #voiceCallNumber:Landroid/widget/TextView;
    const v3, 0x7f0d006d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #videoCallNumber:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 386
    .restart local v0       #videoCallNumber:Landroid/widget/TextView;
    const v3, 0x7f0d0070

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #voipNumber:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 388
    .restart local v2       #voipNumber:Landroid/widget/TextView;
    const-string v3, "00:00:00"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    const-string v3, "00:00:00"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    const-string v3, "00:00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v0, 0x7f04000e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->setContentView(I)V

    .line 101
    const v0, 0x7f0a02a9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->setTitle(I)V

    .line 103
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->configureActionBar()V

    .line 105
    const/4 v12, 0x0

    .line 106
    .local v12, voiceCallNumber:Landroid/widget/TextView;
    const/4 v11, 0x0

    .line 107
    .local v11, videoCallText:Landroid/widget/TextView;
    const/4 v10, 0x0

    .line 108
    .local v10, videoCallNumber:Landroid/widget/TextView;
    const/4 v9, 0x0

    .line 109
    .local v9, videoCall:Landroid/widget/RelativeLayout;
    const/4 v14, 0x0

    .line 110
    .local v14, voipText:Landroid/widget/TextView;
    const/4 v13, 0x0

    .line 112
    .local v13, voipNumber:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://logs/duration"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->DURATION_PROJ:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 114
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 115
    const-string v0, "Duration"

    const-string v1, "cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 120
    const-wide/16 v7, 0x0

    .line 124
    .local v7, sumDuration:J
    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 125
    .restart local v12       #voiceCallNumber:Landroid/widget/TextView;
    const-string v0, "last_voice"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 126
    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const v0, 0x7f0d0054

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #videoCallText:Landroid/widget/TextView;
    check-cast v11, Landroid/widget/TextView;

    .line 133
    .restart local v11       #videoCallText:Landroid/widget/TextView;
    const v0, 0x7f0d0055

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #videoCallNumber:Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 135
    .restart local v10       #videoCallNumber:Landroid/widget/TextView;
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->VT_ENABLE:Z

    if-eqz v0, :cond_4

    .line 140
    :goto_1
    const-string v0, "last_video"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 141
    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const v0, 0x7f0d0057

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #voipText:Landroid/widget/TextView;
    check-cast v14, Landroid/widget/TextView;

    .line 147
    .restart local v14       #voipText:Landroid/widget/TextView;
    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13           #voipNumber:Landroid/widget/TextView;
    check-cast v13, Landroid/widget/TextView;

    .line 148
    .restart local v13       #voipNumber:Landroid/widget/TextView;
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->FMC_MODE:Z

    if-nez v0, :cond_5

    .line 149
    const/16 v0, 0x8

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    const/16 v0, 0x8

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    const v0, 0x7f0d006e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    const v0, 0x7f0d005e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    const v0, 0x7f0d0066

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    const v0, 0x7f0d0056

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :goto_2
    const-string v0, "last_voip"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 163
    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    const v0, 0x7f0d005a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 170
    .restart local v12       #voiceCallNumber:Landroid/widget/TextView;
    const-string v0, "dial_voice"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 171
    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    const v0, 0x7f0d005c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #videoCallText:Landroid/widget/TextView;
    check-cast v11, Landroid/widget/TextView;

    .line 177
    .restart local v11       #videoCallText:Landroid/widget/TextView;
    const v0, 0x7f0d005d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #videoCallNumber:Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 179
    .restart local v10       #videoCallNumber:Landroid/widget/TextView;
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->VT_ENABLE:Z

    if-eqz v0, :cond_6

    .line 185
    :goto_3
    const-string v0, "dial_video"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 186
    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    const v0, 0x7f0d005f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #voipText:Landroid/widget/TextView;
    check-cast v14, Landroid/widget/TextView;

    .line 192
    .restart local v14       #voipText:Landroid/widget/TextView;
    const v0, 0x7f0d0060

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13           #voipNumber:Landroid/widget/TextView;
    check-cast v13, Landroid/widget/TextView;

    .line 193
    .restart local v13       #voipNumber:Landroid/widget/TextView;
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->FMC_MODE:Z

    if-nez v0, :cond_1

    .line 194
    const/16 v0, 0x8

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    const/16 v0, 0x8

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    :cond_1
    const-string v0, "dial_voip"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 199
    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const v0, 0x7f0d0062

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 206
    .restart local v12       #voiceCallNumber:Landroid/widget/TextView;
    const-string v0, "rece_voice"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 207
    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const v0, 0x7f0d0064

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #videoCallText:Landroid/widget/TextView;
    check-cast v11, Landroid/widget/TextView;

    .line 213
    .restart local v11       #videoCallText:Landroid/widget/TextView;
    const v0, 0x7f0d0065

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #videoCallNumber:Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 215
    .restart local v10       #videoCallNumber:Landroid/widget/TextView;
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->VT_ENABLE:Z

    if-eqz v0, :cond_7

    .line 220
    :goto_4
    const-string v0, "rece_video"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 221
    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const v0, 0x7f0d0067

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #voipText:Landroid/widget/TextView;
    check-cast v14, Landroid/widget/TextView;

    .line 227
    .restart local v14       #voipText:Landroid/widget/TextView;
    const v0, 0x7f0d0068

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13           #voipNumber:Landroid/widget/TextView;
    check-cast v13, Landroid/widget/TextView;

    .line 228
    .restart local v13       #voipNumber:Landroid/widget/TextView;
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->FMC_MODE:Z

    if-nez v0, :cond_2

    .line 229
    const/16 v0, 0x8

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    const/16 v0, 0x8

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    :cond_2
    const-string v0, "rece_voip"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 234
    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    const v0, 0x7f0d006a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 240
    .restart local v12       #voiceCallNumber:Landroid/widget/TextView;
    const v0, 0x7f0d006c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #videoCallText:Landroid/widget/TextView;
    check-cast v11, Landroid/widget/TextView;

    .line 241
    .restart local v11       #videoCallText:Landroid/widget/TextView;
    const v0, 0x7f0d006d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #videoCallNumber:Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 242
    .restart local v10       #videoCallNumber:Landroid/widget/TextView;
    const v0, 0x7f0d006f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #voipText:Landroid/widget/TextView;
    check-cast v14, Landroid/widget/TextView;

    .line 243
    .restart local v14       #voipText:Landroid/widget/TextView;
    const v0, 0x7f0d0070

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13           #voipNumber:Landroid/widget/TextView;
    check-cast v13, Landroid/widget/TextView;

    .line 245
    .restart local v13       #voipNumber:Landroid/widget/TextView;
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->VT_ENABLE:Z

    if-eqz v0, :cond_8

    .line 249
    :goto_5
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->FMC_MODE:Z

    if-nez v0, :cond_3

    .line 250
    const/16 v0, 0x8

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    const/16 v0, 0x8

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    :cond_3
    const-string v0, "all_voice"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 255
    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    const-string v0, "all_video"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 258
    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    const-string v0, "all_voip"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 261
    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 136
    :cond_4
    const v0, 0x7f0d0053

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #videoCall:Landroid/widget/RelativeLayout;
    check-cast v9, Landroid/widget/RelativeLayout;

    .line 137
    .restart local v9       #videoCall:Landroid/widget/RelativeLayout;
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 156
    :cond_5
    const v0, 0x7f0d006e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    const v0, 0x7f0d005e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    const v0, 0x7f0d0066

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    const v0, 0x7f0d0056

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 180
    :cond_6
    const v0, 0x7f0d005b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #videoCall:Landroid/widget/RelativeLayout;
    check-cast v9, Landroid/widget/RelativeLayout;

    .line 181
    .restart local v9       #videoCall:Landroid/widget/RelativeLayout;
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 216
    :cond_7
    const v0, 0x7f0d0063

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #videoCall:Landroid/widget/RelativeLayout;
    check-cast v9, Landroid/widget/RelativeLayout;

    .line 217
    .restart local v9       #videoCall:Landroid/widget/RelativeLayout;
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 246
    :cond_8
    const v0, 0x7f0d006b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #videoCall:Landroid/widget/RelativeLayout;
    check-cast v9, Landroid/widget/RelativeLayout;

    .line 247
    .restart local v9       #videoCall:Landroid/widget/RelativeLayout;
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 300
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 302
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 303
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 304
    const v1, 0x7f0d0246

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 305
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 274
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 275
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 310
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 325
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 312
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->resetDurationTable()V

    .line 313
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->setClearTime()V

    goto :goto_0

    .line 317
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->onHomeSelected()V

    goto :goto_0

    .line 310
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0d0246 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 84
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 268
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 270
    return-void
.end method
