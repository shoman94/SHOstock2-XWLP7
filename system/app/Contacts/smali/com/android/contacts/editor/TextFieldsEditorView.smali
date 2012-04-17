.class public Lcom/android/contacts/editor/TextFieldsEditorView;
.super Lcom/android/contacts/editor/LabeledEditorView;
.source "TextFieldsEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    }
.end annotation


# instance fields
.field private mExpansionView:Landroid/widget/ImageView;

.field private mExpansionViewContainer:Landroid/view/View;

.field private mFieldEditTexts:[Landroid/widget/EditText;

.field private mFields:Landroid/view/ViewGroup;

.field private mHasShortAndLongForms:Z

.field private mHideOptional:Z

.field private mMinFieldHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;)V

    .line 68
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 69
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 69
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 69
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/TextFieldsEditorView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/contacts/editor/TextFieldsEditorView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return p1
.end method

.method private setupExpansionView(ZZ)V
    .locals 2
    .parameter "shouldExist"
    .parameter "collapsed"

    .prologue
    .line 145
    if-eqz p1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const v0, 0x7f020167

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    :goto_1
    return-void

    .line 147
    :cond_0
    const v0, 0x7f020166

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public areOptionalFieldsVisible()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShortAndLongForms()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 389
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 390
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 391
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 392
    const/4 v2, 0x0

    .line 395
    .end local v0           #editText:Landroid/widget/EditText;
    :goto_1
    return v2

    .line 389
    .restart local v0       #editText:Landroid/widget/EditText;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    .end local v0           #editText:Landroid/widget/EditText;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onFinishInflate()V

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->setDrawingCacheEnabled(Z)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    .line 103
    const v0, 0x7f0d00cf

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 104
    const v0, 0x7f0d0169

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    .line 105
    const v0, 0x7f0d01ca

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/editor/TextFieldsEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/TextFieldsEditorView$1;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 449
    move-object v2, p1

    check-cast v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;

    .line 450
    .local v2, ss:Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    invoke-virtual {v2}, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Lcom/android/contacts/editor/LabeledEditorView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 452
    iget-boolean v3, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mHideOptional:Z

    iput-boolean v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 454
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v3, v3

    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 455
    .local v1, numChildren:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 456
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 430
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    .line 431
    .local v3, superState:Landroid/os/Parcelable;
    new-instance v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;

    invoke-direct {v2, v3}, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 433
    .local v2, ss:Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    iget-boolean v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    iput-boolean v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mHideOptional:Z

    .line 435
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-nez v4, :cond_0

    const/4 v1, 0x0

    .line 436
    .local v1, numChildren:I
    :goto_0
    new-array v4, v1, [I

    iput-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    .line 437
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 438
    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/widget/EditText;->getVisibility()I

    move-result v5

    aput v5, v4, v0

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 435
    .end local v0           #i:I
    .end local v1           #numChildren:I
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v1, v4

    goto :goto_0

    .line 441
    .restart local v0       #i:I
    .restart local v1       #numChildren:I
    :cond_1
    return-object v2
.end method

.method protected requestFocusForFirstEditField()V
    .locals 7

    .prologue
    .line 157
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v6, v6

    if-eqz v6, :cond_2

    .line 158
    const/4 v3, 0x0

    .line 159
    .local v3, firstField:Landroid/widget/EditText;
    const/4 v0, 0x0

    .line 160
    .local v0, anyFieldHasFocus:Z
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .local v1, arr$:[Landroid/widget/EditText;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    .line 161
    .local v2, editText:Landroid/widget/EditText;
    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 162
    move-object v3, v2

    .line 164
    :cond_0
    invoke-virtual {v2}, Landroid/widget/EditText;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 165
    const/4 v0, 0x1

    .line 169
    .end local v2           #editText:Landroid/widget/EditText;
    :cond_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    .line 170
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 173
    .end local v0           #anyFieldHasFocus:Z
    .end local v1           #arr$:[Landroid/widget/EditText;
    .end local v3           #firstField:Landroid/widget/EditText;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    return-void

    .line 160
    .restart local v0       #anyFieldHasFocus:Z
    .restart local v1       #arr$:[Landroid/widget/EditText;
    .restart local v2       #editText:Landroid/widget/EditText;
    .restart local v3       #firstField:Landroid/widget/EditText;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 131
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->setEnabled(Z)V

    .line 133
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 134
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v4, v1, v0

    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 135
    goto :goto_1

    .line 138
    .end local v0           #index:I
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 139
    return-void

    :cond_2
    move v2, v3

    .line 138
    goto :goto_2
.end method

.method public setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 28
    .parameter "kind"
    .parameter "entry"
    .parameter "state"
    .parameter "readOnly"
    .parameter "vig"

    .prologue
    .line 178
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/LabeledEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 181
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .local v5, arr$:[Landroid/widget/EditText;
    array-length v0, v5

    move/from16 v19, v0

    .local v19, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    move/from16 v0, v19

    if-ge v14, v0, :cond_0

    aget-object v11, v5, v14

    .line 182
    .local v11, fieldEditText:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 181
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 185
    .end local v5           #arr$:[Landroid/widget/EditText;
    .end local v11           #fieldEditText:Landroid/widget/EditText;
    .end local v14           #i$:I
    .end local v19           #len$:I
    :cond_0
    const/4 v13, 0x0

    .line 187
    .local v13, hidePossible:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v10

    .line 188
    .local v10, fieldCount:I
    new-array v0, v10, [Landroid/widget/EditText;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 189
    const/4 v15, 0x0

    .local v15, index:I
    :goto_1
    if-ge v15, v10, :cond_17

    .line 190
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/model/AccountType$EditField;

    .line 191
    .local v9, field:Lcom/android/contacts/model/AccountType$EditField;
    new-instance v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 193
    .local v12, fieldView:Landroid/widget/EditText;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    new-instance v26, Landroid/text/InputFilter$LengthFilter;

    const/16 v27, 0x3e8

    invoke-direct/range {v26 .. v27}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v24

    if-eqz v24, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v24

    if-eqz v24, :cond_2

    const-string v24, "vnd.sec.contact.sim"

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v25

    const-string v26, "account_type"

    invoke-virtual/range {v25 .. v26}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 202
    const/16 v20, 0x0

    .line 203
    .local v20, length:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "#displayName"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength()I

    move-result v20

    .line 252
    :cond_1
    :goto_2
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v4, v0, [Landroid/text/InputFilter;

    .line 253
    .local v4, FilterArray:[Landroid/text/InputFilter;
    const/16 v24, 0x0

    new-instance v25, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v25, v4, v24

    .line 254
    invoke-virtual {v12, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 257
    .end local v4           #FilterArray:[Landroid/text/InputFilter;
    .end local v20           #length:I
    :cond_2
    new-instance v25, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v26, -0x1

    invoke-virtual {v9}, Lcom/android/contacts/model/AccountType$EditField;->isMultiLine()Z

    move-result v24

    if-eqz v24, :cond_a

    const/16 v24, -0x2

    :goto_3
    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget v0, v9, Lcom/android/contacts/model/AccountType$EditField;->minLines:I

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 262
    iget v0, v9, Lcom/android/contacts/model/AccountType$EditField;->minLines:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setMinLines(I)V

    .line 267
    :goto_4
    const-string v8, ""

    .line 268
    .local v8, currentLang:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 269
    const-string v24, "ar"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string v24, "he"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string v24, "iw"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 270
    :cond_3
    const/16 v24, 0x35

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 273
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    move-object/from16 v24, v0

    aput-object v12, v24, v15

    .line 274
    move-object/from16 v0, p5

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setId(I)V

    .line 275
    iget v0, v9, Lcom/android/contacts/model/AccountType$EditField;->titleRes:I

    move/from16 v24, v0

    if-lez v24, :cond_4

    .line 276
    iget v0, v9, Lcom/android/contacts/model/AccountType$EditField;->titleRes:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 278
    :cond_4
    iget v0, v9, Lcom/android/contacts/model/AccountType$EditField;->inputType:I

    move/from16 v16, v0

    .line 279
    .local v16, inputType:I
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 280
    sget-object v24, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 283
    iget-object v6, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 284
    .local v6, column:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 287
    .local v22, value:Ljava/lang/String;
    const-string v24, "persist.sys.country"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 288
    .local v18, language:Ljava/lang/String;
    const-string v24, "ro.csc.sales_code"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 289
    .local v21, salesCode:Ljava/lang/String;
    const/16 v17, 0x1

    .line 290
    .local v17, isNeedChangeFormat:Z
    const-string v24, "TNZ"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    const-string v24, "VNZ"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    const-string v24, "VNX"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    const-string v24, "NZC"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    const-string v24, "PH"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    const-string v24, "NO"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    const-string v24, "SE"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 292
    :cond_5
    const/16 v17, 0x0

    .line 295
    :cond_6
    const/16 v24, 0x3

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    const-string v24, "iw"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    if-eqz v17, :cond_7

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v12}, Lcom/android/contacts/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 302
    :cond_7
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 307
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->setDeleteButtonVisible(Z)V

    .line 310
    new-instance v24, Lcom/android/contacts/editor/TextFieldsEditorView$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v6}, Lcom/android/contacts/editor/TextFieldsEditorView$3;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;Landroid/widget/EditText;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isEnabled()Z

    move-result v24

    if-eqz v24, :cond_d

    if-nez p4, :cond_d

    const/16 v24, 0x1

    :goto_6
    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 330
    iget-boolean v0, v9, Lcom/android/contacts/model/AccountType$EditField;->shortForm:Z

    move/from16 v24, v0

    if-eqz v24, :cond_f

    .line 331
    const/4 v13, 0x1

    .line 332
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    .line 333
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v24, v0

    if-eqz v24, :cond_e

    const/16 v24, 0x0

    :goto_7
    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 361
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 189
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 205
    .end local v6           #column:Ljava/lang/String;
    .end local v8           #currentLang:Ljava/lang/String;
    .end local v16           #inputType:I
    .end local v17           #isNeedChangeFormat:Z
    .end local v18           #language:Ljava/lang/String;
    .end local v21           #salesCode:Ljava/lang/String;
    .end local v22           #value:Ljava/lang/String;
    .restart local v20       #length:I
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "vnd.android.cursor.item/phone_v2"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength()I

    move-result v20

    goto/16 :goto_2

    .line 207
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "vnd.android.cursor.item/email_v2"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEmailLength()I

    move-result v20

    goto/16 :goto_2

    .line 257
    .end local v20           #length:I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    move/from16 v24, v0

    goto/16 :goto_3

    .line 264
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setMinHeight(I)V

    goto/16 :goto_4

    .line 272
    .restart local v8       #currentLang:Ljava/lang/String;
    :cond_c
    const/16 v24, 0x30

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setGravity(I)V

    goto/16 :goto_5

    .line 328
    .restart local v6       #column:Ljava/lang/String;
    .restart local v16       #inputType:I
    .restart local v17       #isNeedChangeFormat:Z
    .restart local v18       #language:Ljava/lang/String;
    .restart local v21       #salesCode:Ljava/lang/String;
    .restart local v22       #value:Ljava/lang/String;
    :cond_d
    const/16 v24, 0x0

    goto/16 :goto_6

    .line 333
    :cond_e
    const/16 v24, 0x8

    goto :goto_7

    .line 334
    :cond_f
    iget-boolean v0, v9, Lcom/android/contacts/model/AccountType$EditField;->longForm:Z

    move/from16 v24, v0

    if-eqz v24, :cond_11

    .line 349
    const/4 v13, 0x1

    .line 350
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    .line 351
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v24, v0

    if-eqz v24, :cond_10

    const/16 v24, 0x8

    :goto_9
    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_8

    :cond_10
    const/16 v24, 0x0

    goto :goto_9

    .line 355
    :cond_11
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_13

    iget-boolean v0, v9, Lcom/android/contacts/model/AccountType$EditField;->optional:Z

    move/from16 v24, v0

    if-eqz v24, :cond_13

    const/4 v7, 0x1

    .line 356
    .local v7, couldHide:Z
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    if-eqz v7, :cond_14

    const/16 v23, 0x1

    .line 357
    .local v23, willHide:Z
    :goto_b
    if-eqz v23, :cond_15

    const/16 v24, 0x8

    :goto_c
    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 358
    if-nez v13, :cond_12

    if-eqz v7, :cond_16

    :cond_12
    const/4 v13, 0x1

    :goto_d
    goto/16 :goto_8

    .line 355
    .end local v7           #couldHide:Z
    .end local v23           #willHide:Z
    :cond_13
    const/4 v7, 0x0

    goto :goto_a

    .line 356
    .restart local v7       #couldHide:Z
    :cond_14
    const/16 v23, 0x0

    goto :goto_b

    .line 357
    .restart local v23       #willHide:Z
    :cond_15
    const/16 v24, 0x0

    goto :goto_c

    .line 358
    :cond_16
    const/4 v13, 0x0

    goto :goto_d

    .line 365
    .end local v6           #column:Ljava/lang/String;
    .end local v7           #couldHide:Z
    .end local v8           #currentLang:Ljava/lang/String;
    .end local v9           #field:Lcom/android/contacts/model/AccountType$EditField;
    .end local v12           #fieldView:Landroid/widget/EditText;
    .end local v16           #inputType:I
    .end local v17           #isNeedChangeFormat:Z
    .end local v18           #language:Ljava/lang/String;
    .end local v21           #salesCode:Ljava/lang/String;
    .end local v22           #value:Ljava/lang/String;
    .end local v23           #willHide:Z
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v13, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->setupExpansionView(ZZ)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    if-nez p4, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isEnabled()Z

    move-result v24

    if-eqz v24, :cond_18

    const/16 v24, 0x1

    :goto_e
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 367
    return-void

    .line 366
    :cond_18
    const/16 v24, 0x0

    goto :goto_e
.end method
