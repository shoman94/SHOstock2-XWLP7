.class public Lcom/android/email/activity/ToolBarScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "ToolBarScrollView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/ToolBarScrollView$ItemView;,
        Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;,
        Lcom/android/email/activity/ToolBarScrollView$FontSizeItem;,
        Lcom/android/email/activity/ToolBarScrollView$Gesture;,
        Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;
    }
.end annotation


# static fields
.field private static final FONT_SIZE:[Ljava/lang/String;


# instance fields
.field private FontSize:I

.field public FontSizeDialog:Landroid/app/AlertDialog;

.field private OldBGColor:I

.field private OldFontColor:I

.field private OldPicBGColor:I

.field private OldPicFontColor:I

.field private currentState:I

.field private mActivity:Landroid/app/Activity;

.field public mBtnBold:Landroid/widget/ImageButton;

.field public mBtnFontsize:Landroid/widget/ImageButton;

.field public mBtnInsert:Landroid/widget/ImageButton;

.field public mBtnItalic:Landroid/widget/ImageButton;

.field public mBtnRedo:Landroid/widget/ImageButton;

.field public mBtnSpellCheck:Landroid/widget/ImageButton;

.field public mBtnUndo:Landroid/widget/ImageButton;

.field private mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

.field private mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

.field private mContext:Landroid/content/Context;

.field public mFontBgColorLayout:Landroid/widget/LinearLayout;

.field public mFontBgColorPreview:Landroid/widget/LinearLayout;

.field public mFontColorLayout:Landroid/widget/LinearLayout;

.field public mFontColorPreview:Landroid/widget/LinearLayout;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHtmlComposerView:Landroid/webkit/HtmlComposerView;

.field private mIsInterceptionTrue:Z

.field private mList:Landroid/widget/ListView;

.field private mToolBarScrollViewListener:Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;

.field private testResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "14"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "9"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "10"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "12"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "14"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "16"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "24"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "36"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/ToolBarScrollView;->FONT_SIZE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;)V
    .locals 4
    .parameter "context"
    .parameter "activity"
    .parameter "l"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 50
    iput-boolean v2, p0, Lcom/android/email/activity/ToolBarScrollView;->mIsInterceptionTrue:Z

    .line 70
    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    .line 72
    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->currentState:I

    .line 73
    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->testResult:I

    .line 75
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/email/activity/ToolBarScrollView;->FontSize:I

    .line 83
    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->OldFontColor:I

    .line 85
    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->OldPicFontColor:I

    .line 87
    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->OldBGColor:I

    .line 89
    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->OldPicBGColor:I

    .line 101
    iput-object p1, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/android/email/activity/ToolBarScrollView;->mActivity:Landroid/app/Activity;

    .line 103
    iput-object p3, p0, Lcom/android/email/activity/ToolBarScrollView;->mToolBarScrollViewListener:Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;

    .line 105
    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->currentState:I

    .line 107
    invoke-virtual {p0, v2}, Lcom/android/email/activity/ToolBarScrollView;->setSmoothScrollingEnabled(Z)V

    .line 108
    invoke-virtual {p0, v2}, Lcom/android/email/activity/ToolBarScrollView;->setScrollbarFadingEnabled(Z)V

    .line 109
    invoke-virtual {p0, v1}, Lcom/android/email/activity/ToolBarScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 110
    invoke-virtual {p0, v1}, Lcom/android/email/activity/ToolBarScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 112
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/email/activity/ToolBarScrollView$Gesture;

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/ToolBarScrollView$Gesture;-><init>(Lcom/android/email/activity/ToolBarScrollView;Lcom/android/email/activity/ToolBarScrollView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 114
    invoke-direct {p0}, Lcom/android/email/activity/ToolBarScrollView;->init()V

    .line 115
    return-void
.end method

.method private ChangeFontSizeDialog()V
    .locals 5

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/android/email/activity/ToolBarScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 501
    .local v2, items:[Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 502
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f08020a

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 503
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getCurrentFontSize()I

    move-result v3

    iput v3, p0, Lcom/android/email/activity/ToolBarScrollView;->FontSize:I

    .line 504
    iget v3, p0, Lcom/android/email/activity/ToolBarScrollView;->FontSize:I

    add-int/lit8 v3, v3, -0x1

    new-instance v4, Lcom/android/email/activity/ToolBarScrollView$5;

    invoke-direct {v4, p0}, Lcom/android/email/activity/ToolBarScrollView$5;-><init>(Lcom/android/email/activity/ToolBarScrollView;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 512
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 513
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 515
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/ToolBarScrollView;)Lcom/android/email/activity/ColorPickerDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    return-object v0
.end method

.method static synthetic access$1000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/email/activity/ToolBarScrollView;->FONT_SIZE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/ToolBarScrollView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/ToolBarScrollView;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/ToolBarScrollView;)Landroid/webkit/HtmlComposerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/ToolBarScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/email/activity/ToolBarScrollView;->OldFontColor:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/ToolBarScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/email/activity/ToolBarScrollView;->OldPicFontColor:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/ToolBarScrollView;)Lcom/android/email/activity/ColorPickerDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/ToolBarScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/email/activity/ToolBarScrollView;->OldBGColor:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/ToolBarScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/email/activity/ToolBarScrollView;->OldPicBGColor:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/email/activity/ToolBarScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/email/activity/ToolBarScrollView;->mIsInterceptionTrue:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/email/activity/ToolBarScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/email/activity/ToolBarScrollView;->FontSize:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/email/activity/ToolBarScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/email/activity/ToolBarScrollView;->FontSize:I

    return p1
.end method

.method private createDialog(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 668
    packed-switch p1, :pswitch_data_0

    .line 684
    :goto_0
    :pswitch_0
    return-void

    .line 670
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->getSelectedColor()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/ToolBarScrollView;->OldFontColor:I

    .line 671
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->GetCurColorIdx()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/ToolBarScrollView;->OldPicFontColor:I

    .line 672
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->show()V

    goto :goto_0

    .line 676
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->getSelectedColor()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/ToolBarScrollView;->OldBGColor:I

    .line 677
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->GetCurColorIdx()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/ToolBarScrollView;->OldPicBGColor:I

    .line 678
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->show()V

    goto :goto_0

    .line 668
    :pswitch_data_0
    .packed-switch 0x7f100258
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private init()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/16 v8, 0xff

    const/4 v7, -0x2

    const v5, 0x3f19999a

    const/4 v6, 0x0

    .line 132
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 134
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040096

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 136
    .local v2, v:Landroid/view/View;
    const v3, 0x7f100251

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    .line 137
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 138
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 140
    const v3, 0x7f100253

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    .line 141
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 142
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 144
    const v3, 0x7f100254

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    .line 145
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 146
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 148
    const v3, 0x7f100255

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    .line 149
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 150
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 152
    const v3, 0x7f100256

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    .line 153
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 154
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 156
    const v3, 0x7f100257

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    .line 157
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 158
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 160
    const v3, 0x7f100258

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    .line 161
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 162
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 163
    const v3, 0x7f10025a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorPreview:Landroid/widget/LinearLayout;

    .line 165
    const v3, 0x7f10025b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    .line 167
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 168
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 169
    const v3, 0x7f10025d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorPreview:Landroid/widget/LinearLayout;

    .line 172
    const v3, 0x7f10025e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnSpellCheck:Landroid/widget/ImageButton;

    .line 215
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnSpellCheck:Landroid/widget/ImageButton;

    if-eqz v3, :cond_0

    .line 235
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnSpellCheck:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    :cond_0
    const-string v3, "VZW_LTE"

    invoke-static {v3}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnSpellCheck:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    .line 239
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnSpellCheck:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 244
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 246
    .local v1, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x13

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 248
    invoke-virtual {p0, v2, v1}, Lcom/android/email/activity/ToolBarScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    new-instance v3, Lcom/android/email/activity/ColorPickerDialog;

    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/email/activity/ColorPickerDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    .line 255
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v3, v6}, Lcom/android/email/activity/ColorPickerDialog;->setIcon(I)V

    .line 256
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    const v4, 0x7f080212

    invoke-virtual {v3, v4}, Lcom/android/email/activity/ColorPickerDialog;->setTitle(I)V

    .line 258
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    const v5, 0x7f080042

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/ToolBarScrollView$1;

    invoke-direct {v5, p0}, Lcom/android/email/activity/ToolBarScrollView$1;-><init>(Lcom/android/email/activity/ToolBarScrollView;)V

    invoke-virtual {v3, v9, v4, v5}, Lcom/android/email/activity/ColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 275
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    const v5, 0x7f080043

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/ToolBarScrollView$2;

    invoke-direct {v5, p0}, Lcom/android/email/activity/ToolBarScrollView$2;-><init>(Lcom/android/email/activity/ToolBarScrollView;)V

    invoke-virtual {v3, v7, v4, v5}, Lcom/android/email/activity/ColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 287
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v3}, Lcom/android/email/activity/ColorPickerDialog;->getSelectedColor()I

    move-result v3

    if-nez v3, :cond_2

    .line 288
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/email/activity/ColorPickerDialog;->SetSelectedColor(I)V

    .line 291
    :cond_2
    new-instance v3, Lcom/android/email/activity/ColorPickerDialog;

    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/email/activity/ColorPickerDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    .line 292
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v3, v6}, Lcom/android/email/activity/ColorPickerDialog;->setIcon(I)V

    .line 293
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    const v4, 0x7f080213

    invoke-virtual {v3, v4}, Lcom/android/email/activity/ColorPickerDialog;->setTitle(I)V

    .line 295
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    const v5, 0x7f080042

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/ToolBarScrollView$3;

    invoke-direct {v5, p0}, Lcom/android/email/activity/ToolBarScrollView$3;-><init>(Lcom/android/email/activity/ToolBarScrollView;)V

    invoke-virtual {v3, v9, v4, v5}, Lcom/android/email/activity/ColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 314
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    const v5, 0x7f080043

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/ToolBarScrollView$4;

    invoke-direct {v5, p0}, Lcom/android/email/activity/ToolBarScrollView$4;-><init>(Lcom/android/email/activity/ToolBarScrollView;)V

    invoke-virtual {v3, v7, v4, v5}, Lcom/android/email/activity/ColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 326
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v3}, Lcom/android/email/activity/ColorPickerDialog;->getSelectedColor()I

    move-result v3

    if-nez v3, :cond_3

    .line 327
    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/email/activity/ColorPickerDialog;->SetSelectedColor(I)V

    .line 329
    :cond_3
    return-void
.end method


# virtual methods
.method public SetEASIconDisplay(Z)V
    .locals 0
    .parameter "Show"

    .prologue
    .line 739
    if-eqz p1, :cond_0

    .line 748
    :cond_0
    return-void
.end method

.method public changeSpellcheckBtnState(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnSpellCheck:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 752
    return-void
.end method

.method public changeToolBarFontBgColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ColorPickerDialog;->SetSelectedColor(I)V

    .line 735
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 736
    return-void
.end method

.method public changeToolBarFontColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ColorPickerDialog;->SetSelectedColor(I)V

    .line 722
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 723
    return-void
.end method

.method public changeToolBarState(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 691
    iput p1, p0, Lcom/android/email/activity/ToolBarScrollView;->currentState:I

    .line 693
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 701
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 709
    :goto_1
    sget-boolean v0, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ToolBarScrollView;->changeSpellcheckBtnState(Z)V

    .line 710
    return-void

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_1
.end method

.method public getToolBarFontBgColor()I
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 726
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->getSelectedColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->getSelectedColor()I

    move-result v0

    .line 729
    :goto_0
    return v0

    :cond_0
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0
.end method

.method public getToolBarFontColor()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 713
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->getSelectedColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->getSelectedColor()I

    move-result v0

    .line 716
    :goto_0
    return v0

    :cond_0
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0
.end method

.method public getToolBarState()I
    .locals 1

    .prologue
    .line 687
    iget v0, p0, Lcom/android/email/activity/ToolBarScrollView;->currentState:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const v2, 0x3f19999a

    .line 388
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 494
    :goto_0
    :pswitch_0
    iget v1, p0, Lcom/android/email/activity/ToolBarScrollView;->testResult:I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarState(I)V

    .line 495
    return-void

    .line 390
    :pswitch_1
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->undo()V

    .line 391
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getStateInRichlyEditableText()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->testResult:I

    .line 392
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->canUndo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 394
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_0

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 397
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_0

    .line 402
    :pswitch_2
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->redo()V

    .line 403
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getStateInRichlyEditableText()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->testResult:I

    .line 404
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->canRedo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 406
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_0

    .line 408
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 409
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_0

    .line 414
    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/ToolBarScrollView;->ChangeFontSizeDialog()V

    goto :goto_0

    .line 418
    :pswitch_4
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageCompose;->onComposerInsert()V

    goto :goto_0

    .line 422
    :pswitch_5
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->toggleBold()V

    .line 423
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getStateInRichlyEditableText()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->testResult:I

    goto :goto_0

    .line 427
    :pswitch_6
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->toggleItalic()V

    .line 428
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getStateInRichlyEditableText()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->testResult:I

    goto/16 :goto_0

    .line 436
    :pswitch_7
    const v1, 0x7f100258

    invoke-direct {p0, v1}, Lcom/android/email/activity/ToolBarScrollView;->createDialog(I)V

    goto/16 :goto_0

    .line 440
    :pswitch_8
    const v1, 0x7f10025b

    invoke-direct {p0, v1}, Lcom/android/email/activity/ToolBarScrollView;->createDialog(I)V

    goto/16 :goto_0

    .line 484
    :pswitch_9
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/email/activity/MessageCompose;

    .line 486
    .local v0, composeView:Lcom/android/email/activity/MessageCompose;
    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->onSpellCheck()Z

    .line 488
    sget-boolean v1, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ToolBarScrollView;->changeSpellcheckBtnState(Z)V

    goto/16 :goto_0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x7f100251
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mIsInterceptionTrue:Z

    if-nez v0, :cond_0

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mIsInterceptionTrue:Z

    .line 364
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 365
    const/4 v0, 0x0

    .line 368
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 333
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 335
    iget-object v2, p0, Lcom/android/email/activity/ToolBarScrollView;->mToolBarScrollViewListener:Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;

    if-nez v2, :cond_0

    .line 342
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/ToolBarScrollView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 339
    .local v0, currentX:I
    invoke-virtual {p0}, Lcom/android/email/activity/ToolBarScrollView;->computeHorizontalScrollRange()I

    move-result v1

    .line 341
    .local v1, maxScroll:I
    iget-object v2, p0, Lcom/android/email/activity/ToolBarScrollView;->mToolBarScrollViewListener:Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-interface {v2, v3, v4}, Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;->leftRightEdge(FF)V

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 346
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 348
    invoke-virtual {p0}, Lcom/android/email/activity/ToolBarScrollView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 349
    .local v0, currentX:I
    invoke-virtual {p0}, Lcom/android/email/activity/ToolBarScrollView;->computeHorizontalScrollRange()I

    move-result v1

    .line 351
    .local v1, maxScroll:I
    iget-object v2, p0, Lcom/android/email/activity/ToolBarScrollView;->mToolBarScrollViewListener:Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-interface {v2, v3, v4}, Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;->leftRightEdge(FF)V

    .line 353
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 375
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setHtmlComposerView(Landroid/webkit/HtmlComposerView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    .line 119
    return-void
.end method
