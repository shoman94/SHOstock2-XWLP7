.class public Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallDetailHistoryAdapter.java"


# instance fields
.field private final bDeleteView:Z

.field private final mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

.field private final mContext:Landroid/content/Context;

.field private final mControls:Landroid/view/View;

.field private mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

.field private final mShowCallAndSms:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZZLandroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "layoutInflater"
    .parameter "callTypeHelper"
    .parameter "phoneCallDetails"
    .parameter "showCallAndSms"
    .parameter "isDelete"
    .parameter "controls"

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 73
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 75
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    .line 76
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .line 77
    iput-boolean p5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mShowCallAndSms:Z

    .line 78
    iput-boolean p6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    .line 79
    iput-object p7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mControls:Landroid/view/View;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mControls:Landroid/view/View;

    return-object v0
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 13
    .parameter "elapsedSeconds"

    .prologue
    const/4 v12, 0x1

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x3c

    .line 234
    const-wide/16 v0, 0x0

    .line 235
    .local v0, hours:J
    const-wide/16 v2, 0x0

    .line 236
    .local v2, minutes:J
    const-wide/16 v4, 0x0

    .line 237
    .local v4, seconds:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v6, timeString:Ljava/lang/StringBuilder;
    cmp-long v7, p1, v8

    if-ltz v7, :cond_3

    .line 240
    rem-long v4, p1, v8

    .line 241
    div-long v2, p1, v8

    .line 243
    cmp-long v7, v2, v8

    if-ltz v7, :cond_0

    .line 244
    rem-long/2addr v2, v8

    .line 245
    div-long v0, v2, v8

    .line 252
    :cond_0
    :goto_0
    cmp-long v7, v0, v10

    if-lez v7, :cond_4

    .line 253
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :goto_1
    cmp-long v7, v2, v10

    if-lez v7, :cond_5

    .line 258
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v12, :cond_1

    .line 259
    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :goto_2
    cmp-long v7, v4, v10

    if-lez v7, :cond_6

    .line 268
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v12, :cond_2

    .line 269
    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 249
    :cond_3
    move-wide v4, p1

    goto :goto_0

    .line 255
    :cond_4
    const-string v7, "00:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 265
    :cond_5
    const-string v7, "00:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 274
    :cond_6
    const-string v7, "00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    const-wide/16 v0, -0x1

    .line 100
    :goto_0
    return-wide v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 118
    if-nez p1, :cond_6

    .line 119
    if-nez p2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f04000b

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 125
    .local v12, header:Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 230
    .end local v12           #header:Landroid/view/View;
    :cond_0
    :goto_1
    return-object v12

    .line 119
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040009

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040009

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    goto :goto_0

    :cond_3
    move-object/from16 v12, p2

    goto :goto_0

    .line 129
    .restart local v12       #header:Landroid/view/View;
    :cond_4
    const v17, 0x7f0d004e

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 130
    .local v4, callAndSmsContainer:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mShowCallAndSms:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 131
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_1

    .line 130
    :cond_5
    const/16 v17, 0x8

    goto :goto_2

    .line 137
    .end local v4           #callAndSmsContainer:Landroid/view/View;
    .end local v12           #header:Landroid/view/View;
    :cond_6
    if-nez p2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f04000c

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 141
    .local v16, result:Landroid/view/View;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object/from16 v17, v0

    add-int/lit8 v18, p1, -0x1

    aget-object v10, v17, v18

    .line 142
    .local v10, details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    const v17, 0x7f0d0048

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;

    .line 145
    .local v7, callTypeIconView:Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;
    const v17, 0x7f0d0049

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 146
    .local v5, callTime:Landroid/widget/TextView;
    const v17, 0x7f0d004a

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 147
    .local v13, logType:Landroid/widget/ImageView;
    const v17, 0x7f0d004c

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 148
    .local v11, durationView:Landroid/widget/TextView;
    const v17, 0x7f0d0046

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 149
    .local v9, detail_date:Landroid/widget/TextView;
    const v17, 0x7f0d004f

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 151
    .local v8, cdnipNumberView:Landroid/widget/TextView;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 154
    const/4 v15, 0x0

    .line 155
    .local v15, mDateText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    iget-wide v0, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    move-wide/from16 v18, v0

    const/16 v20, 0x14

    invoke-static/range {v17 .. v20}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v14

    .line 157
    .local v14, mDateFormat:Ljava/lang/CharSequence;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-wide v0, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0262

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 166
    :goto_4
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .end local v14           #mDateFormat:Ljava/lang/CharSequence;
    .end local v15           #mDateText:Ljava/lang/String;
    :cond_7
    iget-object v0, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v6, v17, v18

    .line 170
    .local v6, callType:I
    invoke-virtual {v7}, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->clear()V

    .line 171
    invoke-virtual {v7, v6}, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->add(I)V

    .line 173
    iget v0, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 210
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    iget-wide v0, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    invoke-static/range {v17 .. v20}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget v0, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v17, v0

    const/16 v18, 0x12c

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    iget v0, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v17, v0

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 213
    :cond_8
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    :goto_6
    const-string v17, "CallDetailHistoryAdapter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getCount : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->getCount()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", position : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", time :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    iget-wide v0, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    move-wide/from16 v20, v0

    const/16 v22, 0x1

    invoke-static/range {v19 .. v22}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const v17, 0x7f0d004d

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v12, v16

    .line 230
    goto/16 :goto_1

    .line 137
    .end local v5           #callTime:Landroid/widget/TextView;
    .end local v6           #callType:I
    .end local v7           #callTypeIconView:Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;
    .end local v8           #cdnipNumberView:Landroid/widget/TextView;
    .end local v9           #detail_date:Landroid/widget/TextView;
    .end local v10           #details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .end local v11           #durationView:Landroid/widget/TextView;
    .end local v13           #logType:Landroid/widget/ImageView;
    .end local v16           #result:Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f04000a

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    goto/16 :goto_3

    :cond_a
    move-object/from16 v16, p2

    goto/16 :goto_3

    .line 161
    .restart local v5       #callTime:Landroid/widget/TextView;
    .restart local v7       #callTypeIconView:Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;
    .restart local v8       #cdnipNumberView:Landroid/widget/TextView;
    .restart local v9       #detail_date:Landroid/widget/TextView;
    .restart local v10       #details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .restart local v11       #durationView:Landroid/widget/TextView;
    .restart local v13       #logType:Landroid/widget/ImageView;
    .restart local v14       #mDateFormat:Ljava/lang/CharSequence;
    .restart local v15       #mDateText:Ljava/lang/String;
    .restart local v16       #result:Landroid/view/View;
    :cond_b
    iget-wide v0, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x5265c00

    add-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0263

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    .line 164
    :cond_c
    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    .line 175
    .end local v14           #mDateFormat:Ljava/lang/CharSequence;
    .end local v15           #mDateText:Ljava/lang/String;
    .restart local v6       #callType:I
    :sswitch_0
    const v17, 0x7f0201db

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 197
    :sswitch_1
    const v17, 0x7f0201da

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 200
    :sswitch_2
    const v17, 0x7f0201d5

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 203
    :sswitch_3
    const v17, 0x7f0201d6

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 206
    :sswitch_4
    const v17, 0x7f0201d9

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 215
    :cond_d
    iget-wide v0, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->formatDuration(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 173
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_4
        0x1f4 -> :sswitch_1
        0x320 -> :sswitch_2
    .end sparse-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x2

    return v0
.end method
