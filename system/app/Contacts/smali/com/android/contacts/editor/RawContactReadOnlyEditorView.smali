.class public Lcom/android/contacts/editor/RawContactReadOnlyEditorView;
.super Lcom/android/contacts/editor/BaseRawContactEditorView;
.source "RawContactReadOnlyEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;
    }
.end annotation


# instance fields
.field private mAccountContainer:Landroid/view/View;

.field private mAccountIcon:Landroid/widget/ImageView;

.field private mAccountName:Ljava/lang/String;

.field private mAccountNameTextView:Landroid/widget/TextView;

.field private mAccountType:Ljava/lang/String;

.field private mAccountTypeTextView:Landroid/widget/TextView;

.field private mDataSet:Ljava/lang/String;

.field private mEditExternallyButton:Landroid/widget/Button;

.field private mGeneral:Landroid/view/ViewGroup;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

.field private mName:Landroid/widget/TextView;

.field private mPhotoStub:Landroid/view/View;

.field private mRawContactId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;)V

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/RawContactReadOnlyEditorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/RawContactReadOnlyEditorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindData(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 11
    .parameter "titleText"
    .parameter "data"
    .parameter "type"
    .parameter "isFirstEntry"

    .prologue
    .line 279
    iget-object v7, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f04008c

    iget-object v9, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 280
    .local v3, field:Landroid/view/View;
    const v7, 0x7f0d009a

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 282
    .local v2, divider:Landroid/view/View;
    const v7, 0x7f0d016c

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 283
    .local v0, addContainer:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 284
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 287
    :cond_0
    if-eqz p4, :cond_1

    .line 288
    const v7, 0x7f0d016b

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 289
    .local v5, titleView:Landroid/widget/TextView;
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 297
    .end local v5           #titleView:Landroid/widget/TextView;
    :goto_0
    const/high16 v7, 0x7f0d

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 298
    .local v1, dataView:Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    const v7, 0x7f0d00b6

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 300
    .local v6, typeView:Landroid/widget/TextView;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 301
    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :goto_1
    iget-object v7, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 307
    return-void

    .line 293
    .end local v1           #dataView:Landroid/widget/TextView;
    .end local v6           #typeView:Landroid/widget/TextView;
    :cond_1
    const v7, 0x7f0d01a6

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 294
    .local v4, titleContainer:Landroid/view/View;
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 295
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 303
    .end local v4           #titleContainer:Landroid/view/View;
    .restart local v1       #dataView:Landroid/widget/TextView;
    .restart local v6       #typeView:Landroid/widget/TextView;
    :cond_2
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getRawContactId()J
    .locals 2

    .prologue
    .line 311
    iget-wide v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    return-wide v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d01e9

    if-ne v0, v1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

    new-instance v1, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v2, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mDataSet:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;->onExternalEditorRequest(Lcom/android/contacts/model/AccountWithDataSet;Landroid/net/Uri;)V

    .line 323
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->onFinishInflate()V

    .line 97
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 100
    const v0, 0x7f0d01e1

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mPhotoStub:Landroid/view/View;

    .line 102
    const v0, 0x7f0d01e8

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mName:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f0d01e9

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    .line 104
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v0, 0x7f0d01ea

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    .line 107
    const v0, 0x7f0d016e

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    .line 108
    const v0, 0x7f0d016f

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountIcon:Landroid/widget/ImageView;

    .line 109
    const v0, 0x7f0d0171

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0d0172

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    .line 111
    return-void
.end method

.method public setListener(Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

    .line 90
    return-void
.end method

.method public setState(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
    .locals 27
    .parameter "state"
    .parameter "type"
    .parameter "vig"
    .parameter "isProfile"

    .prologue
    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 125
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v24

    .line 132
    .local v24, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v3, "account_name"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    .line 133
    const-string v3, "account_type"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountType:Ljava/lang/String;

    .line 134
    const-string v3, "data_set"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mDataSet:Ljava/lang/String;

    .line 136
    if-eqz p4, :cond_8

    .line 137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "vnd.sec.contact.phone"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 138
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    const v6, 0x7f0a01f1

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 174
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    const-string v3, "_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    .line 181
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 182
    .local v4, kind:Lcom/android/contacts/model/DataKind;
    if-eqz v4, :cond_f

    .line 183
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 184
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    if-eqz v3, :cond_c

    const/4 v14, 0x1

    .line 185
    .local v14, hasPhotoEditor:Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->setHasPhotoEditor(Z)V

    .line 186
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 187
    .local v5, primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v6

    if-nez v6, :cond_d

    const/4 v7, 0x1

    :goto_3
    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/contacts/editor/PhotoEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 188
    if-eqz v14, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/editor/PhotoEditorView;->hasSetPhoto()Z

    move-result v3

    if-nez v3, :cond_e

    .line 189
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mPhotoStub:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .end local v5           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v14           #hasPhotoEditor:Z
    :goto_4
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 199
    .restart local v5       #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mName:Landroid/widget/TextView;

    if-eqz v5, :cond_10

    const-string v3, "data1"

    invoke-virtual {v5, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/AccountType;->getEditContactActivityClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 217
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 219
    .local v22, res:Landroid/content/res/Resources;
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v21

    .line 221
    .local v21, phones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    const-string v3, "persist.sys.country"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 222
    .local v17, language:Ljava/lang/String;
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 223
    .local v23, salesCode:Ljava/lang/String;
    const/16 v16, 0x1

    .line 224
    .local v16, isNeedChangeFormat:Z
    const-string v3, "TNZ"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "VNZ"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "VNX"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "NZC"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "PH"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "NO"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "SE"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 226
    :cond_4
    const/16 v16, 0x0

    .line 229
    :cond_5
    if-eqz v21, :cond_14

    .line 230
    const/4 v15, 0x0

    .local v15, i:I
    :goto_7
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_14

    .line 231
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 232
    .local v18, phone:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v3, "data1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 233
    .local v19, phoneNumber:Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 234
    const-string v3, "data1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "data4"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 240
    :cond_6
    const-string v3, "data2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 241
    const-string v3, "data2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v6, "data3"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-static {v0, v3, v6}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 246
    .local v20, phoneType:Ljava/lang/CharSequence;
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0048

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v15, :cond_13

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->bindData(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 230
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 141
    .end local v4           #kind:Lcom/android/contacts/model/DataKind;
    .end local v5           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v15           #i:I
    .end local v16           #isNeedChangeFormat:Z
    .end local v17           #language:Ljava/lang/String;
    .end local v18           #phone:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v19           #phoneNumber:Ljava/lang/String;
    .end local v20           #phoneType:Ljava/lang/CharSequence;
    .end local v21           #phones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v22           #res:Landroid/content/res/Resources;
    .end local v23           #salesCode:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 142
    .local v9, accountType:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v7, 0x7f0a01f2

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v25, 0x0

    aput-object v9, v8, v25

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 147
    .end local v9           #accountType:Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 148
    .restart local v9       #accountType:Ljava/lang/CharSequence;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0119

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 151
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 152
    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v7, 0x7f0a016f

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v25, 0x0

    aput-object v9, v8, v25

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 156
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0170

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v8, v25

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 162
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a

    .line 184
    .end local v9           #accountType:Ljava/lang/CharSequence;
    .restart local v4       #kind:Lcom/android/contacts/model/DataKind;
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 187
    .restart local v5       #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v14       #hasPhotoEditor:Z
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 191
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mPhotoStub:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 194
    .end local v5           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v14           #hasPhotoEditor:Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mPhotoStub:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 199
    .restart local v5       #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v7, 0x7f0a00fc

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 207
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    new-instance v6, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;-><init>(Lcom/android/contacts/editor/RawContactReadOnlyEditorView;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_6

    .line 244
    .restart local v15       #i:I
    .restart local v16       #isNeedChangeFormat:Z
    .restart local v17       #language:Ljava/lang/String;
    .restart local v18       #phone:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v19       #phoneNumber:Ljava/lang/String;
    .restart local v21       #phones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .restart local v22       #res:Landroid/content/res/Resources;
    .restart local v23       #salesCode:Ljava/lang/String;
    :cond_12
    const/16 v20, 0x0

    .restart local v20       #phoneType:Ljava/lang/CharSequence;
    goto/16 :goto_8

    .line 246
    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 252
    .end local v15           #i:I
    .end local v18           #phone:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v19           #phoneNumber:Ljava/lang/String;
    .end local v20           #phoneType:Ljava/lang/CharSequence;
    :cond_14
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 253
    .local v13, emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v13, :cond_17

    .line 254
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_b
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_17

    .line 255
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 256
    .local v10, email:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 258
    .local v11, emailAddress:Ljava/lang/String;
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 259
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v6, "data3"

    invoke-virtual {v10, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-static {v0, v3, v6}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 264
    .local v12, emailType:Ljava/lang/CharSequence;
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0049

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v15, :cond_16

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11, v12, v3}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->bindData(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 254
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 262
    .end local v12           #emailType:Ljava/lang/CharSequence;
    :cond_15
    const/4 v12, 0x0

    .restart local v12       #emailType:Ljava/lang/CharSequence;
    goto :goto_c

    .line 264
    :cond_16
    const/4 v3, 0x0

    goto :goto_d

    .line 270
    .end local v10           #email:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v11           #emailAddress:Ljava/lang/String;
    .end local v12           #emailType:Ljava/lang/CharSequence;
    .end local v15           #i:I
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_18

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 273
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0
.end method
