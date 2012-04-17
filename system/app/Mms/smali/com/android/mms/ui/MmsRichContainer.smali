.class public Lcom/android/mms/ui/MmsRichContainer;
.super Landroid/widget/LinearLayout;
.source "MmsRichContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;,
        Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;,
        Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;
    }
.end annotation


# instance fields
.field private mCursorColor:I

.field private mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mEditTextCharMaxInputFilter:[Landroid/text/InputFilter;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mEditorTouchListener:Landroid/view/View$OnTouchListener;

.field private mHandler:Landroid/os/Handler;

.field private mHintResId:I

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mMediaTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

.field private mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

.field private mParentTextWatcher:Landroid/text/TextWatcher;

.field private mSystemFontSize:I

.field private mTextColor:I

.field private mTextSize:F

.field mTextTop:Ljava/lang/Boolean;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextCharMaxInputFilter:[Landroid/text/InputFilter;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    .line 101
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mSystemFontSize:I

    .line 200
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$1;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    .line 955
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$2;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    .line 965
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$3;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 1003
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$4;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

    .line 1028
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$5;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorTouchListener:Landroid/view/View$OnTouchListener;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextCharMaxInputFilter:[Landroid/text/InputFilter;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    .line 101
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mSystemFontSize:I

    .line 200
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$1;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    .line 955
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$2;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    .line 965
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$3;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 1003
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$4;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

    .line 1028
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$5;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorTouchListener:Landroid/view/View$OnTouchListener;

    .line 110
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsRichContainer;)Landroid/text/TextWatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MmsRichContainer;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsRichContainer;->setDeleteAnimation(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MmsRichContainer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/OnEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    return-object v0
.end method

.method private getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 2
    .parameter "mView"

    .prologue
    .line 341
    const v1, 0x7f080087

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 342
    .local v0, audioView:Landroid/widget/LinearLayout;
    return-object v0
.end method

.method private getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 2
    .parameter "mView"

    .prologue
    .line 335
    const v1, 0x7f080082

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 336
    .local v0, MediaView:Landroid/widget/RelativeLayout;
    return-object v0
.end method

.method private getFocusedPageDivierView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 2
    .parameter "mView"

    .prologue
    .line 347
    const v1, 0x7f08008a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 348
    .local v0, pageDivider:Landroid/widget/RelativeLayout;
    return-object v0
.end method

.method private getSystemFontSize()V
    .locals 3

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mSystemFontSize:I

    .line 1248
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    .line 1249
    return-void
.end method

.method private getVisibleEditText(IZ)Landroid/widget/EditText;
    .locals 7
    .parameter "index"
    .parameter "addWatcher"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1097
    const/4 v1, 0x0

    .line 1102
    .local v1, mView:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1104
    const v4, 0x7f080081

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1105
    .local v2, topEditText:Landroid/widget/EditText;
    const v4, 0x7f080086

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1107
    .local v0, bottomEditText:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 1108
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1113
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1114
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1115
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1116
    move-object v3, v2

    .line 1123
    .local v3, visibleEditText:Landroid/widget/EditText;
    :goto_1
    if-eqz p2, :cond_1

    .line 1124
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1128
    :cond_1
    const/high16 v4, 0x200

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1131
    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1132
    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mCursorColor:I

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setCursorColor(I)V

    .line 1134
    return-object v3

    .line 1109
    .end local v3           #visibleEditText:Landroid/widget/EditText;
    :cond_2
    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1110
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 1118
    :cond_3
    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1119
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1120
    move-object v3, v0

    .restart local v3       #visibleEditText:Landroid/widget/EditText;
    goto :goto_1
.end method

.method private pageHasContents(Landroid/view/View;Z)Z
    .locals 6
    .parameter "page"
    .parameter "checkFirstText"

    .prologue
    const/4 v4, 0x1

    .line 1056
    const/4 v1, 0x0

    .line 1058
    .local v1, edit:Landroid/widget/EditText;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    .line 1061
    if-eqz p2, :cond_1

    .line 1062
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1063
    .local v3, textLength:I
    if-lez v3, :cond_1

    .line 1080
    .end local v3           #textLength:I
    :cond_0
    :goto_0
    return v4

    .line 1068
    :cond_1
    const v5, 0x7f080082

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 1070
    .local v2, mediaVisibility:I
    if-eqz v2, :cond_0

    .line 1074
    const v5, 0x7f080087

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 1076
    .local v0, audioVisibility:I
    if-eqz v0, :cond_0

    .line 1080
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private resetLayoutAttr()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 915
    const/4 v6, 0x0

    .line 916
    .local v6, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v5

    .line 919
    .local v5, pageNumber:I
    move v2, v5

    .local v2, i:I
    :goto_0
    if-lez v2, :cond_0

    .line 920
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->removeView(Landroid/view/View;)V

    .line 919
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 923
    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 925
    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 926
    .local v3, mediaViewPort:Landroid/widget/RelativeLayout;
    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 927
    .local v0, audioInfo:Landroid/widget/LinearLayout;
    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedPageDivierView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v4

    .line 928
    .local v4, pageDivider:Landroid/widget/RelativeLayout;
    invoke-direct {p0, v8, v10}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v1

    .line 930
    .local v1, editText:Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 931
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 932
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 933
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 936
    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    .line 937
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 940
    :cond_2
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    .line 941
    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 944
    :cond_3
    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    .line 945
    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 948
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 949
    const/high16 v7, 0x3f80

    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    .line 950
    invoke-virtual {p0, v8, v10}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 952
    return-void
.end method

.method private resetLayoutAttr(Lcom/android/mms/model/SlideModel;I)V
    .locals 5
    .parameter "slide"
    .parameter "index"

    .prologue
    const/16 v4, 0x8

    .line 888
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v3

    if-nez v3, :cond_0

    .line 889
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v2

    .line 890
    .local v2, mediaViewPort:Landroid/widget/RelativeLayout;
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 891
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 892
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 895
    .end local v2           #mediaViewPort:Landroid/widget/RelativeLayout;
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-nez v3, :cond_1

    .line 896
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 897
    .local v0, audioInfo:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 900
    .end local v0           #audioInfo:Landroid/widget/LinearLayout;
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 903
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    .line 904
    .local v1, editText:Landroid/widget/EditText;
    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 907
    .end local v1           #editText:Landroid/widget/EditText;
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    .line 908
    return-void
.end method

.method private setAddAnimation()V
    .locals 4

    .prologue
    .line 1142
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 1143
    .local v1, mediaViewPort:Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1144
    iget-object v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    const/high16 v3, 0x7f04

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1145
    .local v0, addAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1146
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1149
    .end local v0           #addAnimation:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private setDeleteAnimation(II)V
    .locals 4
    .parameter "slideIndex"
    .parameter "type"

    .prologue
    .line 1152
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 1153
    .local v1, mediaViewPort:Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1154
    iget-object v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    const v3, 0x7f040001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1155
    .local v0, deleteAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1156
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1157
    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$6;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/mms/ui/MmsRichContainer$6;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1176
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1179
    .end local v0           #deleteAnimation:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private setWeight(Landroid/view/View;F)V
    .locals 2
    .parameter "childAt"
    .parameter "weight"

    .prologue
    .line 861
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    .line 862
    .local v0, l:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 864
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 865
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 866
    return-void
.end method


# virtual methods
.method public addPage(I)V
    .locals 9
    .parameter "index"

    .prologue
    const/16 v8, 0x8

    .line 133
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 135
    .local v0, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f03001f

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 140
    .local v4, mView:Landroid/widget/LinearLayout;
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v2

    .line 144
    .local v2, mEditField:Landroid/widget/EditText;
    new-instance v6, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v6, p0, v8, p1}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 145
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 147
    const/high16 v6, 0x200

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 148
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 151
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 153
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsToMmsThreshold()Z

    move-result v6

    if-nez v6, :cond_0

    .line 154
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextCharMaxInputFilter:[Landroid/text/InputFilter;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 156
    :cond_0
    const v6, 0x7f080083

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 157
    .local v3, mMediaView:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    const v6, 0x7f080087

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 160
    .local v1, mAudioInfo:Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 161
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 165
    .local v5, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v6, 0x3f80

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 166
    invoke-virtual {p0, v4, p1, v5}, Lcom/android/mms/ui/MmsRichContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 167
    return-void
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .parameter "watcher"

    .prologue
    .line 186
    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "addTextChangedListener()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    .line 188
    return-void
.end method

.method public changeLayout(Lcom/android/mms/data/WorkingMessage;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    .line 818
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 819
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v5

    .line 820
    .local v5, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    if-eqz v5, :cond_2

    .line 821
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    .line 822
    .local v2, mTempIndex:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 823
    .local v4, slideCount:I
    const/4 v3, 0x0

    .line 825
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 826
    invoke-virtual {p0, v0, v10}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 827
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 829
    .restart local v3       #slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 831
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v7

    .line 832
    .local v7, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v7}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v6

    .line 833
    .local v6, string:Ljava/lang/String;
    invoke-direct {p0, v0, v10}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v1

    .line 834
    .local v1, mTempEdit:Landroid/widget/EditText;
    invoke-virtual {p0, v1, v6, v0}, Lcom/android/mms/ui/MmsRichContainer;->setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V

    .line 835
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 836
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsToMmsThreshold()Z

    move-result v8

    if-nez v8, :cond_0

    .line 837
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextCharMaxInputFilter:[Landroid/text/InputFilter;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 825
    .end local v1           #mTempEdit:Landroid/widget/EditText;
    .end local v6           #string:Ljava/lang/String;
    .end local v7           #text:Lcom/android/mms/model/TextModel;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 842
    :cond_1
    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const/high16 v9, 0x3f80

    invoke-direct {p0, v8, v9}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    .line 844
    const/4 v8, 0x1

    invoke-virtual {p0, v2, v8}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 846
    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 847
    const-string v8, ""

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    .line 858
    .end local v0           #i:I
    .end local v2           #mTempIndex:I
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    .end local v4           #slideCount:I
    .end local v5           #slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    :cond_2
    :goto_1
    return-void

    .line 850
    .restart local v0       #i:I
    .restart local v2       #mTempIndex:I
    .restart local v3       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v4       #slideCount:I
    .restart local v5       #slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    :cond_3
    iget v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    if-nez v8, :cond_4

    .line 851
    const-string v8, ""

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 853
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto :goto_1
.end method

.method public getEditText(Landroid/view/View;)Landroid/widget/EditText;
    .locals 2
    .parameter "mView"

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    const v1, 0x7f080081

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 328
    .local v0, mEdit:Landroid/widget/EditText;
    :goto_0
    iget v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 329
    iget v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mCursorColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorColor(I)V

    .line 330
    return-object v0

    .line 324
    .end local v0           #mEdit:Landroid/widget/EditText;
    :cond_0
    const v1, 0x7f080086

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .restart local v0       #mEdit:Landroid/widget/EditText;
    goto :goto_0
.end method

.method public getFocusedEditText()Landroid/widget/EditText;
    .locals 3

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 309
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 314
    .local v1, mFocusedChild:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 316
    .local v0, mEdit:Landroid/widget/EditText;
    return-object v0

    .line 311
    .end local v0           #mEdit:Landroid/widget/EditText;
    .end local v1           #mFocusedChild:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .restart local v1       #mFocusedChild:Landroid/view/View;
    goto :goto_0
.end method

.method public getFocusedSlideIndex()I
    .locals 3

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v0

    .line 354
    .local v0, count:I
    sget v2, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    if-le v0, v2, :cond_0

    .line 355
    sget v0, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    .line 357
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 358
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    .end local v1           #i:I
    :goto_1
    return v1

    .line 357
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getMMSLayout()Z
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 223
    .local v0, mString:Landroid/text/Editable;
    return-object v0
.end method

.method public getTotalPageCount()I
    .locals 1

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v0

    .line 884
    .local v0, totalPage:I
    return v0
.end method

.method public hasContents(Z)Z
    .locals 2
    .parameter "checkFirstText"

    .prologue
    const/4 v1, 0x1

    .line 1047
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v0

    .line 1049
    .local v0, cnt:I
    if-le v0, v1, :cond_0

    .line 1052
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/mms/ui/MmsRichContainer;->pageHasContents(Landroid/view/View;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public initContainer()V
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getTextFieldColor(Landroid/content/Context;)I

    move-result v0

    .line 121
    .local v0, textFieldColor:I
    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    .line 123
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mCursorColor:I

    .line 129
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->addPage(I)V

    .line 130
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    .line 126
    const/high16 v1, -0x100

    iput v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mCursorColor:I

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 117
    return-void
.end method

.method public removePage(I)V
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, newIndex:I
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->removeView(Landroid/view/View;)V

    .line 173
    add-int/lit8 v0, p1, -0x1

    .line 174
    if-gez v0, :cond_0

    .line 175
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto :goto_0
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .parameter "watcher"

    .prologue
    .line 191
    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "removeTextChangedListener()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    .line 195
    :cond_0
    return-void
.end method

.method public setAudioAndKeyListener(Ljava/lang/String;I)V
    .locals 4
    .parameter "audioFileName"
    .parameter "index"

    .prologue
    const/4 v3, 0x7

    .line 674
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 675
    .local v0, audioInfo:Landroid/widget/LinearLayout;
    const v2, 0x7f080089

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 676
    .local v1, fileName:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 680
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 681
    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v2, p0, v3, p2}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 682
    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    invoke-direct {v2, p0, v3, p2}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 684
    return-void
.end method

.method public setCursorColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 1217
    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mCursorColor:I

    .line 1218
    return-void
.end method

.method public setEditTextCharMaxInputFilter(Landroid/text/InputFilter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextCharMaxInputFilter:[Landroid/text/InputFilter;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 198
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextCharMaxInputFilter:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 199
    return-void
.end method

.method public setFocusEditText()V
    .locals 2

    .prologue
    .line 254
    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "setFocusEditText() on first"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 256
    return-void
.end method

.method public setFocusEditText(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v1

    add-int/lit8 p1, v1, -0x1

    .line 248
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 250
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 251
    return-void
.end method

.method public setFocusEditText(IZ)V
    .locals 2
    .parameter "index"
    .parameter "setLastPos"

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v1

    add-int/lit8 p1, v1, -0x1

    .line 232
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 234
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 235
    if-eqz p2, :cond_1

    .line 236
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;

    .line 183
    return-void
.end method

.method public setHint()V
    .locals 3

    .prologue
    .line 265
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 267
    .local v1, mFocusedChild:Landroid/view/View;
    if-nez v1, :cond_0

    .line 275
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 272
    .local v0, mEdit:Landroid/widget/EditText;
    iget v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "hint"

    .prologue
    .line 280
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 282
    .local v1, mFocusedChild:Landroid/view/View;
    if-nez v1, :cond_0

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 286
    .local v0, mEdit:Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setHintRes(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 259
    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    .line 260
    return-void
.end method

.method public setImageAndKeyListener(Landroid/graphics/Bitmap;I)V
    .locals 9
    .parameter "img"
    .parameter "index"

    .prologue
    const/4 v8, 0x5

    .line 617
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 618
    .local v3, mediaViewPort:Landroid/widget/RelativeLayout;
    const v5, 0x7f080083

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 619
    .local v2, imageView:Landroid/widget/ImageView;
    const v5, 0x7f080084

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 620
    .local v4, playButton:Landroid/widget/ImageView;
    const v5, 0x7f080085

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 623
    .local v0, dummyView:Landroid/view/View;
    if-nez p1, :cond_0

    .line 624
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020110

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 631
    :cond_0
    :goto_0
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 632
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 633
    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 634
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 636
    :cond_1
    new-instance v5, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v5, p0, v8, p2}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 637
    new-instance v5, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    invoke-direct {v5, p0, v8, p2}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 639
    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 640
    return-void

    .line 627
    :catch_0
    move-exception v1

    .line 628
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v5, "Mms/MmsRichContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OutOfMemoryError"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLastElementFocus(Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "mView"

    .prologue
    .line 290
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 292
    .local v0, childCount:I
    add-int/lit8 v2, v0, -0x2

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 293
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 294
    .local v1, childView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 295
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 296
    instance-of v3, v1, Landroid/widget/EditText;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 297
    check-cast v3, Landroid/widget/EditText;

    check-cast v1, Landroid/widget/EditText;

    .end local v1           #childView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 302
    :cond_0
    return-void

    .line 292
    .restart local v1       #childView:Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public setMMSLayout(Z)V
    .locals 2
    .parameter "textTop"

    .prologue
    .line 1088
    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "setMMSLayout()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    .line 1090
    return-void
.end method

.method public setOnSipUpListener(Lcom/android/mms/ui/OnEventListener;)V
    .locals 0
    .parameter "onEventListener"

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    .line 1139
    return-void
.end method

.method public setPageDivider(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v2

    .line 870
    .local v2, total:I
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedPageDivierView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 871
    .local v0, pageDivider:Landroid/widget/RelativeLayout;
    const v3, 0x7f08008b

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 872
    .local v1, pageInfo:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 873
    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 875
    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    if-eq v3, v2, :cond_0

    .line 876
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 880
    :goto_0
    return-void

    .line 878
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRichEditorAction(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 0
    .parameter "editorActionListener"

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1085
    return-void
.end method

.method public setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V
    .locals 2
    .parameter "editText"
    .parameter "text"
    .parameter "index"

    .prologue
    .line 687
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 688
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1, p3}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 690
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter "textColor"

    .prologue
    .line 1182
    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    .line 1183
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .parameter "textSize"

    .prologue
    .line 1242
    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextSize:F

    .line 1243
    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->getSystemFontSize()V

    .line 1244
    return-void
.end method

.method public setVideoAndKeyListener(Landroid/net/Uri;I)V
    .locals 11
    .parameter "videoUri"
    .parameter "index"

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x0

    .line 643
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 644
    .local v3, mediaViewPort:Landroid/widget/RelativeLayout;
    const v6, 0x7f080083

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 645
    .local v5, videoView:Landroid/widget/ImageView;
    const v6, 0x7f080084

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 646
    .local v4, playButton:Landroid/widget/ImageView;
    const v6, 0x7f080085

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 648
    .local v1, dummyView:Landroid/view/View;
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/mms/ui/MessageUtils;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 651
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 652
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020111

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 659
    :cond_0
    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 660
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 661
    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    .line 662
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 663
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02005d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 666
    :cond_1
    new-instance v6, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v6, p0, v10, p2}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 667
    new-instance v6, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    invoke-direct {v6, p0, v10, p2}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 669
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 670
    return-void

    .line 655
    :catch_0
    move-exception v2

    .line 656
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v6, "Mms/MmsRichContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OutOfMemoryError"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Lcom/android/mms/data/WorkingMessage;I)V
    .locals 15
    .parameter "msg"
    .parameter "type"

    .prologue
    .line 694
    const-string v12, "Mms/MmsRichContainer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "update(),type="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    if-eqz p1, :cond_6

    .line 697
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v12

    if-eqz v12, :cond_12

    .line 698
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v9

    .line 699
    .local v9, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    if-eqz v9, :cond_6

    .line 700
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v6

    .line 701
    .local v6, mTempIndex:I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 702
    .local v8, slideCount:I
    const/4 v7, 0x0

    .line 704
    .local v7, slide:Lcom/android/mms/model/SlideModel;
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v12

    if-ge v12, v8, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->addPage(I)V

    goto :goto_0

    .line 708
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v12

    if-le v12, v8, :cond_1

    .line 709
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 712
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v8, :cond_2

    .line 714
    const/4 v12, 0x0

    invoke-virtual {p0, v4, v12}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 716
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v4, v12, :cond_7

    .line 717
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 750
    :cond_2
    add-int/lit8 v12, v8, -0x1

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    const/high16 v13, 0x3f80

    invoke-direct {p0, v12, v13}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    .line 752
    const/16 v12, 0xc

    move/from16 v0, p2

    if-eq v0, v12, :cond_3

    const/16 v12, 0x10

    move/from16 v0, p2

    if-ne v0, v12, :cond_d

    .line 753
    :cond_3
    const/4 v12, 0x1

    invoke-virtual {p0, v6, v12}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 764
    :cond_4
    :goto_3
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 765
    const-string v12, ""

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    .line 775
    :goto_4
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_5

    .line 776
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    const/4 v13, 0x1

    invoke-virtual {p0, v12, v13}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 777
    const/4 v12, -0x1

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    .line 779
    :cond_5
    const/16 v12, 0xc

    move/from16 v0, p2

    if-ne v0, v12, :cond_6

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 780
    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->setAddAnimation()V

    .line 815
    .end local v4           #i:I
    .end local v6           #mTempIndex:I
    .end local v7           #slide:Lcom/android/mms/model/SlideModel;
    .end local v8           #slideCount:I
    .end local v9           #slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    :cond_6
    :goto_5
    return-void

    .line 720
    .restart local v4       #i:I
    .restart local v6       #mTempIndex:I
    .restart local v7       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v8       #slideCount:I
    .restart local v9       #slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    :cond_7
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #slide:Lcom/android/mms/model/SlideModel;
    check-cast v7, Lcom/android/mms/model/SlideModel;

    .line 721
    .restart local v7       #slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 722
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {p0, v12, v4}, Lcom/android/mms/ui/MmsRichContainer;->setImageAndKeyListener(Landroid/graphics/Bitmap;I)V

    .line 724
    :cond_8
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 725
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->getVideoUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {p0, v12, v4}, Lcom/android/mms/ui/MmsRichContainer;->setVideoAndKeyListener(Landroid/net/Uri;I)V

    .line 727
    :cond_9
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 728
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12, v4}, Lcom/android/mms/ui/MmsRichContainer;->setAudioAndKeyListener(Ljava/lang/String;I)V

    .line 731
    :cond_a
    const/4 v12, 0x1

    invoke-direct {p0, v4, v12}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v5

    .line 733
    .local v5, mTempEdit:Landroid/widget/EditText;
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 734
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v11

    .line 735
    .local v11, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v11}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v10

    .line 736
    .local v10, string:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 737
    new-instance v12, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    const/16 v13, 0x8

    invoke-direct {v12, p0, v13, v4}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 745
    .end local v10           #string:Ljava/lang/String;
    .end local v11           #text:Lcom/android/mms/model/TextModel;
    :goto_6
    invoke-direct {p0, v7, v4}, Lcom/android/mms/ui/MmsRichContainer;->resetLayoutAttr(Lcom/android/mms/model/SlideModel;I)V

    .line 747
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->setPageDivider(I)V

    .line 712
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 739
    .restart local v10       #string:Ljava/lang/String;
    .restart local v11       #text:Lcom/android/mms/model/TextModel;
    :cond_b
    invoke-virtual {p0, v5, v10, v4}, Lcom/android/mms/ui/MmsRichContainer;->setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V

    goto :goto_6

    .line 742
    .end local v10           #string:Ljava/lang/String;
    .end local v11           #text:Lcom/android/mms/model/TextModel;
    :cond_c
    const-string v12, ""

    invoke-virtual {p0, v5, v12, v4}, Lcom/android/mms/ui/MmsRichContainer;->setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V

    goto :goto_6

    .line 754
    .end local v5           #mTempEdit:Landroid/widget/EditText;
    :cond_d
    const/16 v12, 0xe

    move/from16 v0, p2

    if-ne v0, v12, :cond_f

    .line 755
    iget-object v12, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 756
    const/4 v12, 0x1

    invoke-virtual {p0, v6, v12}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_3

    .line 758
    :cond_e
    const/4 v12, 0x0

    invoke-virtual {p0, v6, v12}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_3

    .line 760
    :cond_f
    const/16 v12, 0xd

    move/from16 v0, p2

    if-ne v0, v12, :cond_4

    .line 761
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->setLastElementFocus(Landroid/view/ViewGroup;)V

    goto/16 :goto_3

    .line 768
    :cond_10
    iget v12, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    if-nez v12, :cond_11

    .line 769
    const-string v12, ""

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 771
    :cond_11
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_4

    .line 782
    .end local v4           #i:I
    .end local v6           #mTempIndex:I
    .end local v7           #slide:Lcom/android/mms/model/SlideModel;
    .end local v8           #slideCount:I
    .end local v9           #slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    :cond_12
    const/16 v12, 0xd

    move/from16 v0, p2

    if-ne v0, v12, :cond_13

    .line 784
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 785
    .local v3, firstView:Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    .line 786
    .local v1, firstEditText:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 788
    .local v2, firstText:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 789
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v1, v12}, Landroid/widget/EditText;->setSelection(I)V

    .line 791
    const/high16 v12, 0x3f80

    invoke-direct {p0, v3, v12}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    .line 792
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->setPageDivider(I)V

    .line 793
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_5

    .line 794
    .end local v1           #firstEditText:Landroid/widget/EditText;
    .end local v2           #firstText:Ljava/lang/String;
    .end local v3           #firstView:Landroid/view/View;
    :cond_13
    const/16 v12, 0xf

    move/from16 v0, p2

    if-ne v0, v12, :cond_14

    .line 795
    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->resetLayoutAttr()V

    .line 796
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_5

    .line 797
    :cond_14
    const/16 v12, 0xc

    move/from16 v0, p2

    if-eq v0, v12, :cond_15

    const/16 v12, 0x10

    move/from16 v0, p2

    if-ne v0, v12, :cond_6

    .line 800
    :cond_15
    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->resetLayoutAttr()V

    .line 801
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 802
    .restart local v3       #firstView:Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    .line 803
    .restart local v1       #firstEditText:Landroid/widget/EditText;
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 804
    .local v11, text:Ljava/lang/CharSequence;
    if-eqz v11, :cond_16

    .line 805
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_17

    .line 806
    invoke-virtual {v1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 812
    :cond_16
    :goto_7
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {p0, v12, v13}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_5

    .line 808
    :cond_17
    const-string v12, ""

    invoke-virtual {v1, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 809
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto :goto_7
.end method
