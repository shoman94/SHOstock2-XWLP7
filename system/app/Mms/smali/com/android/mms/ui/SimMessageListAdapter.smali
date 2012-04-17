.class public Lcom/android/mms/ui/SimMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "SimMessageListAdapter.java"


# instance fields
.field protected mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field protected mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1
    .parameter "context"
    .parameter "c"
    .parameter "autoRequery"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 34
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 37
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 47
    const v14, 0x7f080056

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 48
    .local v11, textView:Landroid/widget/TextView;
    if-nez v11, :cond_0

    .line 109
    :goto_0
    return-void

    .line 51
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v14, v14, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 52
    .local v13, type:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v14, v14, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 53
    .local v5, date:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v14, v14, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v14, v14, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, body:Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 58
    .local v4, buf:Landroid/text/SpannableStringBuilder;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 59
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f09000f

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, displayName:Ljava/lang/String;
    :goto_1
    const-string v14, "arrow"

    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 65
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    .line 66
    .local v9, startName:I
    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 67
    new-instance v14, Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mContext:Landroid/content/Context;

    const v16, 0x207000f

    invoke-direct/range {v14 .. v16}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v4, v14, v9, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 70
    const-string v14, "\n"

    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 72
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 73
    const-string v3, ""

    .line 74
    :cond_1
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 75
    .local v8, startBody:I
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 76
    new-instance v14, Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mContext:Landroid/content/Context;

    const v16, 0x207000e

    invoke-direct/range {v14 .. v16}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v4, v14, v8, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 79
    new-instance v14, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v15, 0x10

    const/16 v16, 0x1

    invoke-direct/range {v14 .. v16}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v4, v14, v8, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 84
    packed-switch v13, :pswitch_data_0

    .line 108
    :goto_2
    :pswitch_0
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 61
    .end local v7           #displayName:Ljava/lang/String;
    .end local v8           #startBody:I
    .end local v9           #startName:I
    :cond_2
    const/4 v14, 0x1

    invoke-static {v2, v14}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #displayName:Ljava/lang/String;
    goto :goto_1

    .line 86
    .restart local v8       #startBody:I
    .restart local v9       #startName:I
    :pswitch_1
    new-instance v14, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mContext:Landroid/content/Context;

    const v16, 0x7f020106

    invoke-direct/range {v14 .. v16}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    const/4 v15, 0x0

    const-string v16, "arrow"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v14, v15, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 89
    const v14, 0x7f090015

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-static {v0, v5, v6, v1}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 92
    .local v12, timeStamp:Ljava/lang/String;
    const-string v14, "\n"

    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 93
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    .line 94
    .local v10, startTimeStamp:I
    invoke-virtual {v4, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 95
    new-instance v14, Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mContext:Landroid/content/Context;

    const v16, 0x2070011

    invoke-direct/range {v14 .. v16}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v4, v14, v10, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 103
    .end local v10           #startTimeStamp:I
    .end local v12           #timeStamp:Ljava/lang/String;
    :pswitch_2
    new-instance v14, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mContext:Landroid/content/Context;

    const v16, 0x7f0200de

    invoke-direct/range {v14 .. v16}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    const/4 v15, 0x0

    const-string v16, "arrow"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v14, v15, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "parent"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
