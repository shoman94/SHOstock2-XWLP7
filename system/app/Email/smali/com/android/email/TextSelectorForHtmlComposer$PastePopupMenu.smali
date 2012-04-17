.class Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;
.super Ljava/lang/Object;
.source "TextSelectorForHtmlComposer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/TextSelectorForHtmlComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PastePopupMenu"
.end annotation


# instance fields
.field private mClipBoard:Landroid/widget/TextView;

.field private final mContainer:Landroid/widget/PopupWindow;

.field private mContext:Landroid/content/Context;

.field public mCursorControllerParent:Landroid/webkit/HtmlComposerView;

.field private mPaste:Landroid/widget/TextView;

.field private final mPasteViewLayouts:[I

.field private final mPasteViews:[Landroid/view/View;

.field private mSideClipboard:Landroid/widget/TextView;

.field private mSidePaste:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/email/TextSelectorForHtmlComposer;


# direct methods
.method public constructor <init>(Lcom/android/email/TextSelectorForHtmlComposer;Landroid/content/Context;Landroid/webkit/HtmlComposerView;)V
    .locals 7
    .parameter
    .parameter "context"
    .parameter "tv"

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 100
    iput-object p1, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mPasteViews:[Landroid/view/View;

    .line 90
    new-array v0, v1, [I

    iget-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    #getter for: Lcom/android/email/TextSelectorForHtmlComposer;->mTextEditPasteWindowLayout:I
    invoke-static {v1}, Lcom/android/email/TextSelectorForHtmlComposer;->access$300(Lcom/android/email/TextSelectorForHtmlComposer;)I

    move-result v1

    aput v1, v0, v5

    iget-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    #getter for: Lcom/android/email/TextSelectorForHtmlComposer;->mTextEditNoPasteWindowLayout:I
    invoke-static {v1}, Lcom/android/email/TextSelectorForHtmlComposer;->access$400(Lcom/android/email/TextSelectorForHtmlComposer;)I

    move-result v1

    aput v1, v0, v6

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    #getter for: Lcom/android/email/TextSelectorForHtmlComposer;->mTextEditSidePasteWindowLayout:I
    invoke-static {v2}, Lcom/android/email/TextSelectorForHtmlComposer;->access$500(Lcom/android/email/TextSelectorForHtmlComposer;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    #getter for: Lcom/android/email/TextSelectorForHtmlComposer;->mTextEditSideNoPasteWindowLayout:I
    invoke-static {v2}, Lcom/android/email/TextSelectorForHtmlComposer;->access$600(Lcom/android/email/TextSelectorForHtmlComposer;)I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mPasteViewLayouts:[I

    .line 101
    iput-object p2, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContext:Landroid/content/Context;

    .line 102
    iput-object p3, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    .line 104
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    .line 106
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 110
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 111
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 113
    return-void
.end method

.method private updateContent(Z)V
    .locals 9
    .parameter "onTop"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x2

    .line 121
    invoke-direct {p0, p1}, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->viewIndex(Z)I

    move-result v4

    .line 122
    .local v4, viewIndex:I
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mPasteViews:[Landroid/view/View;

    aget-object v3, v5, v4

    .line 124
    .local v3, view:Landroid/view/View;
    if-nez v3, :cond_3

    .line 125
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mPasteViewLayouts:[I

    aget v1, v5, v4

    .line 126
    .local v1, layout:I
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    #getter for: Lcom/android/email/TextSelectorForHtmlComposer;->mComposerControl:Landroid/webkit/HtmlComposerView;
    invoke-static {v5}, Lcom/android/email/TextSelectorForHtmlComposer;->access$700(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 128
    .local v0, inflater:Landroid/view/LayoutInflater;
    if-eqz v0, :cond_0

    .line 129
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 151
    :cond_0
    if-nez v3, :cond_1

    .line 152
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unable to inflate TextEdit paste window"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 155
    :cond_1
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 156
    .local v2, size:I
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-virtual {v3, v2, v2}, Landroid/view/View;->measure(II)V

    .line 160
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    if-nez v4, :cond_4

    .line 164
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mPaste:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mClipBoard:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mPasteViews:[Landroid/view/View;

    aput-object v3, v5, v4

    .line 175
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #layout:I
    .end local v2           #size:I
    :cond_3
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 176
    return-void

    .line 166
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    .restart local v1       #layout:I
    .restart local v2       #size:I
    :cond_4
    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 167
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mSidePaste:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mSideClipboard:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private viewIndex(Z)I
    .locals 3
    .parameter "onTop"

    .prologue
    const/4 v1, 0x0

    .line 116
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    #getter for: Lcom/android/email/TextSelectorForHtmlComposer;->mComposerControl:Landroid/webkit/HtmlComposerView;
    invoke-static {v2}, Lcom/android/email/TextSelectorForHtmlComposer;->access$700(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->hasData()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 185
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mClipBoard:Landroid/widget/TextView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mSideClipboard:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    #getter for: Lcom/android/email/TextSelectorForHtmlComposer;->mComposerControl:Landroid/webkit/HtmlComposerView;
    invoke-static {v0}, Lcom/android/email/TextSelectorForHtmlComposer;->access$700(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    #getter for: Lcom/android/email/TextSelectorForHtmlComposer;->mComposerControl:Landroid/webkit/HtmlComposerView;
    invoke-static {v1}, Lcom/android/email/TextSelectorForHtmlComposer;->access$700(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    const v1, 0x102040a

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    .line 204
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->hide()V

    .line 205
    return-void

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mPaste:Landroid/widget/TextView;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mSidePaste:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    #getter for: Lcom/android/email/TextSelectorForHtmlComposer;->mComposerControl:Landroid/webkit/HtmlComposerView;
    invoke-static {v0}, Lcom/android/email/TextSelectorForHtmlComposer;->access$700(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    #getter for: Lcom/android/email/TextSelectorForHtmlComposer;->mComposerControl:Landroid/webkit/HtmlComposerView;
    invoke-static {v0}, Lcom/android/email/TextSelectorForHtmlComposer;->access$700(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    #getter for: Lcom/android/email/TextSelectorForHtmlComposer;->mComposerControl:Landroid/webkit/HtmlComposerView;
    invoke-static {v1}, Lcom/android/email/TextSelectorForHtmlComposer;->access$700(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    const v1, 0x1020022

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    goto :goto_0
.end method

.method positionAtCursor()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 208
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 209
    .local v0, ComposerRect:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 210
    .local v1, CursorRect:Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    #getter for: Lcom/android/email/TextSelectorForHtmlComposer;->mComposerControl:Landroid/webkit/HtmlComposerView;
    invoke-static {v10}, Lcom/android/email/TextSelectorForHtmlComposer;->access$700(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v3

    .line 212
    .local v3, cursurRect:Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    #getter for: Lcom/android/email/TextSelectorForHtmlComposer;->mComposerControl:Landroid/webkit/HtmlComposerView;
    invoke-static {v10}, Lcom/android/email/TextSelectorForHtmlComposer;->access$700(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 213
    iget-object v10, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    #getter for: Lcom/android/email/TextSelectorForHtmlComposer;->mComposerControl:Landroid/webkit/HtmlComposerView;
    invoke-static {v10}, Lcom/android/email/TextSelectorForHtmlComposer;->access$700(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/webkit/HtmlComposerView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 215
    const/4 v10, 0x2

    new-array v9, v10, [I

    .line 216
    .local v9, tmpLocOnWin:[I
    iget-object v10, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v10, v9}, Landroid/webkit/HtmlComposerView;->getLocationInWindow([I)V

    .line 218
    iget-object v10, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    .line 219
    .local v2, contentView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 220
    .local v5, popupwidth:I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 224
    .local v4, popupheight:I
    aget v10, v9, v13

    iget v11, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    div-int/lit8 v11, v5, 0x2

    sub-int v6, v10, v11

    .line 225
    .local v6, pos_x:I
    aget v10, v9, v12

    iget v11, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    sub-int v7, v10, v4

    .line 227
    .local v7, pos_y:I
    iget-object v10, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v8, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 229
    .local v8, screenWidth:I
    if-gez v6, :cond_1

    .line 230
    const/4 v6, 0x0

    .line 236
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    iget-object v11, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    #getter for: Lcom/android/email/TextSelectorForHtmlComposer;->mComposerControl:Landroid/webkit/HtmlComposerView;
    invoke-static {v11}, Lcom/android/email/TextSelectorForHtmlComposer;->access$700(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    move-result-object v11

    invoke-virtual {v10, v11, v13, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 237
    return-void

    .line 231
    :cond_1
    add-int v10, v6, v5

    if-ge v8, v10, :cond_0

    .line 233
    sub-int v6, v8, v5

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->updateContent(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->positionAtCursor()V

    .line 181
    return-void
.end method
