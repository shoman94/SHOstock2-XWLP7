.class public Lcom/android/mms/ui/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;,
        Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;,
        Lcom/android/mms/ui/NumberPicker$InputTextFilter;,
        Lcom/android/mms/ui/NumberPicker$Formatter;,
        Lcom/android/mms/ui/NumberPicker$OnScrollListener;,
        Lcom/android/mms/ui/NumberPicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final DIGIT_CHARACTERS:[C

.field private static final SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

.field public static final TWO_DIGIT_FORMATTER:Lcom/android/mms/ui/NumberPicker$Formatter;


# instance fields
.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mAdjustScrollerCommand:Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;

.field private mAdjustScrollerOnUpEvent:Z

.field private mBeginEditOnUpEvent:Z

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/android/mms/ui/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private final mDimSelectorWheelAnimator:Landroid/animation/Animator;

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private final mFlingable:Z

.field private mFormatter:Lcom/android/mms/ui/NumberPicker$Formatter;

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLastDownEventY:F

.field private mLastMotionEventY:F

.field private mLongPressUpdateInterval:J

.field private mMaxValue:I

.field private mMaximumFlingVelocity:I

.field private mMinValue:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lcom/android/mms/ui/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/android/mms/ui/NumberPicker$OnValueChangeListener;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mScrollWheelAndFadingEdgesInitialized:Z

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSelectorWheelState:I

.field private mSetSelectionCommand:Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;

.field private final mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

.field private final mShowInputControlsAnimimationDuration:J

.field private final mSolidColor:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTextSize:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/android/mms/ui/NumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    .line 168
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/NumberPicker;->DIGIT_CHARACTERS:[C

    .line 180
    new-instance v0, Lcom/android/mms/ui/NumberPicker$1;

    invoke-direct {v0}, Lcom/android/mms/ui/NumberPicker$1;-><init>()V

    sput-object v0, Lcom/android/mms/ui/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/android/mms/ui/NumberPicker$Formatter;

    return-void

    .line 168
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 491
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 492
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 501
    const v0, 0x10103be

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 502
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 512
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 258
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/mms/ui/NumberPicker;->mLongPressUpdateInterval:J

    .line 263
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 268
    const/4 v14, 0x5

    new-array v14, v14, [I

    fill-array-data v14, :array_0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mSelectorIndices:[I

    .line 286
    const/high16 v14, -0x8000

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/mms/ui/NumberPicker;->mInitialScrollOffset:I

    .line 407
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mTempRect:Landroid/graphics/Rect;

    .line 412
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/mms/ui/NumberPicker;->mScrollState:I

    .line 515
    sget-object v14, Lcom/android/internal/R$styleable;->NumberPicker:[I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 517
    .local v3, attributesArray:Landroid/content/res/TypedArray;
    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/mms/ui/NumberPicker;->mSolidColor:I

    .line 518
    const/4 v14, 0x5

    const/4 v15, 0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/mms/ui/NumberPicker;->mFlingable:Z

    .line 519
    const/4 v14, 0x6

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 520
    const/4 v14, 0x1

    const/high16 v15, 0x4000

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    float-to-int v7, v14

    .line 523
    .local v7, defSelectionDividerHeight:I
    const/4 v14, 0x7

    invoke-virtual {v3, v14, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/mms/ui/NumberPicker;->mSelectionDividerHeight:I

    .line 525
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e0002

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    int-to-long v14, v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/mms/ui/NumberPicker;->mShowInputControlsAnimimationDuration:J

    .line 535
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/NumberPicker;->setWillNotDraw(Z)V

    .line 536
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/mms/ui/NumberPicker;->setSelectorWheelState(I)V

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 540
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v14, 0x1090067

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v8, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 542
    new-instance v9, Lcom/android/mms/ui/NumberPicker$2;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/mms/ui/NumberPicker$2;-><init>(Lcom/android/mms/ui/NumberPicker;)V

    .line 553
    .local v9, onClickListener:Landroid/view/View$OnClickListener;
    new-instance v10, Lcom/android/mms/ui/NumberPicker$3;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/mms/ui/NumberPicker$3;-><init>(Lcom/android/mms/ui/NumberPicker;)V

    .line 566
    .local v10, onLongClickListener:Landroid/view/View$OnLongClickListener;
    const v14, 0x10202e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 567
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v10}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 571
    const v14, 0x10202ea

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 572
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v10}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 576
    const v14, 0x10202e9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 577
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance v15, Lcom/android/mms/ui/NumberPicker$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/mms/ui/NumberPicker$4;-><init>(Lcom/android/mms/ui/NumberPicker;)V

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v15, 0x1

    new-array v15, v15, [Landroid/text/InputFilter;

    const/16 v16, 0x0

    new-instance v17, Lcom/android/mms/ui/NumberPicker$InputTextFilter;

    invoke-direct/range {v17 .. v18}, Lcom/android/mms/ui/NumberPicker$InputTextFilter;-><init>(Lcom/android/mms/ui/NumberPicker;)V

    aput-object v17, v15, v16

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 601
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/mms/ui/NumberPicker;->mTouchSlop:I

    .line 602
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 603
    .local v6, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/mms/ui/NumberPicker;->mTouchSlop:I

    .line 604
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/mms/ui/NumberPicker;->mMinimumFlingVelocity:I

    .line 605
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v14

    div-int/lit8 v14, v14, 0x8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/mms/ui/NumberPicker;->mMaximumFlingVelocity:I

    .line 607
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getTextSize()F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/mms/ui/NumberPicker;->mTextSize:I

    .line 610
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 611
    .local v11, paint:Landroid/graphics/Paint;
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 612
    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 613
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/ui/NumberPicker;->mTextSize:I

    int-to-float v14, v14

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 614
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 615
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 616
    .local v5, colors:Landroid/content/res/ColorStateList;
    sget-object v14, Lcom/android/mms/ui/NumberPicker;->ENABLED_STATE_SET:[I

    const/4 v15, -0x1

    invoke-virtual {v5, v14, v15}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 617
    .local v4, color:I
    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 618
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/mms/ui/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 621
    const-string v14, "selectorPaintAlpha"

    const/4 v15, 0x2

    new-array v15, v15, [I

    fill-array-data v15, :array_1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    .line 623
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_2

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 625
    .local v13, showIncrementButton:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_3

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 627
    .local v12, showDecrementButton:Landroid/animation/ObjectAnimator;
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    .line 628
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    const/4 v15, 0x3

    new-array v15, v15, [Landroid/animation/Animator;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v13, v15, v16

    const/16 v16, 0x2

    aput-object v12, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    new-instance v15, Lcom/android/mms/ui/NumberPicker$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/mms/ui/NumberPicker$5;-><init>(Lcom/android/mms/ui/NumberPicker;)V

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 651
    new-instance v14, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-direct/range {v14 .. v17}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 652
    new-instance v14, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v15

    new-instance v16, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v17, 0x4020

    invoke-direct/range {v16 .. v17}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct/range {v14 .. v16}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 654
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/NumberPicker;->updateInputTextView()V

    .line 655
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 657
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/mms/ui/NumberPicker;->mFlingable:Z

    if-eqz v14, :cond_0

    .line 658
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/NumberPicker;->isInEditMode()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 659
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/mms/ui/NumberPicker;->setSelectorWheelState(I)V

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/mms/ui/NumberPicker;->setSelectorWheelState(I)V

    .line 665
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/NumberPicker;->hideInputControls()V

    goto :goto_0

    .line 268
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
    .end array-data

    .line 621
    :array_1
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    .line 623
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 625
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/mms/ui/NumberPicker;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/NumberPicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NumberPicker;->changeCurrentByOne(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/NumberPicker;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/NumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/NumberPicker;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/NumberPicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/mms/ui/NumberPicker;->mPreviousScrollerY:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/NumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mInitialScrollOffset:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/NumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/NumberPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->updateInputTextView()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/NumberPicker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/android/mms/ui/NumberPicker;->mShowInputControlsAnimimationDuration:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/NumberPicker;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/NumberPicker;->showInputControls(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/NumberPicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NumberPicker;->postChangeCurrentByOneFromLongPress(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/NumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorElementHeight:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/NumberPicker;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/NumberPicker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/android/mms/ui/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/NumberPicker;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/NumberPicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NumberPicker;->setSelectorWheelState(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/NumberPicker;)Landroid/animation/AnimatorSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$900()[C
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/mms/ui/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method private changeCurrentByOne(Z)V
    .locals 6
    .parameter "increment"

    .prologue
    const/16 v5, 0x12c

    const/4 v1, 0x0

    .line 1289
    iget-boolean v0, p0, Lcom/android/mms/ui/NumberPicker;->mFlingable:Z

    if-eqz v0, :cond_1

    .line 1290
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1291
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1292
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1293
    iput v1, p0, Lcom/android/mms/ui/NumberPicker;->mPreviousScrollerY:I

    .line 1294
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->forceCompleteChangeCurrentByOneViaScroll()V

    .line 1295
    if-eqz p1, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1302
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPicker;->invalidate()V

    .line 1310
    :goto_1
    return-void

    .line 1299
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1304
    :cond_1
    if-eqz p1, :cond_2

    .line 1305
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NumberPicker;->changeCurrent(I)V

    goto :goto_1

    .line 1307
    :cond_2
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NumberPicker;->changeCurrent(I)V

    goto :goto_1
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .parameter "selectorIndices"

    .prologue
    .line 1527
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 1528
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1527
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1530
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1531
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Lcom/android/mms/ui/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 1532
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mMaxValue:I

    .line 1534
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1535
    invoke-direct {p0, v1}, Lcom/android/mms/ui/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1536
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .parameter "selectorIndex"

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1545
    .local v0, cache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1546
    .local v2, scrollSelectorValue:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1560
    :goto_0
    return-void

    .line 1549
    :cond_0
    iget v3, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lcom/android/mms/ui/NumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 1550
    :cond_1
    const-string v2, ""

    .line 1559
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1552
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1553
    iget v3, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 1554
    .local v1, displayedValueIndex:I
    iget-object v3, p0, Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1555
    goto :goto_1

    .line 1556
    .end local v1           #displayedValueIndex:I
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private fadeSelectorWheel(J)V
    .locals 2
    .parameter "animationDuration"

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1474
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1475
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1476
    return-void
.end method

.method private fling(I)V
    .locals 9
    .parameter "velocityY"

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1421
    iput v1, p0, Lcom/android/mms/ui/NumberPicker;->mPreviousScrollerY:I

    .line 1422
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1424
    .local v0, flingScroller:Landroid/widget/Scroller;
    iget-boolean v3, p0, Lcom/android/mms/ui/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v3, :cond_1

    .line 1425
    if-lez p1, :cond_0

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    .line 1426
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1441
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPicker;->invalidate()V

    .line 1442
    return-void

    :cond_0
    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    .line 1428
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1431
    :cond_1
    if-lez p1, :cond_2

    .line 1432
    iget v3, p0, Lcom/android/mms/ui/NumberPicker;->mTextSize:I

    iget v4, p0, Lcom/android/mms/ui/NumberPicker;->mValue:I

    iget v5, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    sub-int/2addr v4, v5

    mul-int v8, v3, v4

    .local v8, maxY:I
    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    .line 1433
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1435
    .end local v8           #maxY:I
    :cond_2
    iget v3, p0, Lcom/android/mms/ui/NumberPicker;->mTextSize:I

    iget v4, p0, Lcom/android/mms/ui/NumberPicker;->mMaxValue:I

    iget v5, p0, Lcom/android/mms/ui/NumberPicker;->mValue:I

    sub-int/2addr v4, v5

    mul-int v2, v3, v4

    .line 1436
    .local v2, startY:I
    move v8, v2

    .restart local v8       #maxY:I
    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    .line 1437
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private forceCompleteChangeCurrentByOneViaScroll()V
    .locals 4

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1319
    .local v0, scroller:Landroid/widget/Scroller;
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1320
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1321
    .local v1, yBeforeAbort:I
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1322
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    sub-int v2, v3, v1

    .line 1323
    .local v2, yDelta:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/android/mms/ui/NumberPicker;->scrollBy(II)V

    .line 1325
    .end local v1           #yBeforeAbort:I
    .end local v2           #yDelta:I
    :cond_0
    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mFormatter:Lcom/android/mms/ui/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mFormatter:Lcom/android/mms/ui/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lcom/android/mms/ui/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 1648
    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1650
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1674
    :goto_0
    return v1

    .line 1655
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1657
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1658
    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1659
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 1655
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1668
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 1651
    .end local v0           #i:I
    :catch_0
    move-exception v1

    .line 1674
    :goto_2
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    goto :goto_0

    .line 1669
    .restart local v0       #i:I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .parameter "selectorIndex"

    .prologue
    .line 1498
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 1499
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1503
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 1500
    .restart local p1
    :cond_1
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 1501
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private hideInputControls()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1448
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1449
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1450
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1451
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1452
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .parameter "selectorIndices"

    .prologue
    .line 1511
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1512
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1511
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1514
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1515
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Lcom/android/mms/ui/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 1516
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    .line 1518
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1519
    invoke-direct {p0, v1}, Lcom/android/mms/ui/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1520
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1382
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1383
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mBottom:I

    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NumberPicker;->setFadingEdgeLength(I)V

    .line 1384
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    .line 1366
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1367
    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorIndices:[I

    .line 1368
    .local v1, selectorIndices:[I
    array-length v5, v1

    iget v6, p0, Lcom/android/mms/ui/NumberPicker;->mTextSize:I

    mul-int v4, v5, v6

    .line 1369
    .local v4, totalTextHeight:I
    iget v5, p0, Lcom/android/mms/ui/NumberPicker;->mBottom:I

    iget v6, p0, Lcom/android/mms/ui/NumberPicker;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1370
    .local v3, totalTextGapHeight:F
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    int-to-float v2, v5

    .line 1371
    .local v2, textGapCount:F
    div-float v5, v3, v2

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorTextGapHeight:I

    .line 1372
    iget v5, p0, Lcom/android/mms/ui/NumberPicker;->mTextSize:I

    iget v6, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorElementHeight:I

    .line 1374
    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getBaseline()I

    move-result v5

    iget-object v6, p0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1375
    .local v0, editTextTextPosition:I
    iget v5, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    iput v5, p0, Lcom/android/mms/ui/NumberPicker;->mInitialScrollOffset:I

    .line 1377
    iget v5, p0, Lcom/android/mms/ui/NumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Lcom/android/mms/ui/NumberPicker;->mCurrentScrollOffset:I

    .line 1378
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->updateInputTextView()V

    .line 1379
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 1248
    iget-object v4, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1249
    iget-object v2, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorIndices:[I

    .line 1250
    .local v2, selectorIdices:[I
    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPicker;->getValue()I

    move-result v0

    .line 1251
    .local v0, current:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1252
    add-int/lit8 v4, v1, -0x2

    add-int v3, v0, v4

    .line 1253
    .local v3, selectorIndex:I
    iget-boolean v4, p0, Lcom/android/mms/ui/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1254
    invoke-direct {p0, v3}, Lcom/android/mms/ui/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1256
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorIndices:[I

    aput v3, v4, v1

    .line 1257
    iget-object v4, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorIndices:[I

    aget v4, v4, v1

    invoke-direct {p0, v4}, Lcom/android/mms/ui/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1251
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1259
    .end local v3           #selectorIndex:I
    :cond_1
    return-void
.end method

.method private isEventInViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3
    .parameter "event"
    .parameter "view"

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1343
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private notifyChange(II)V
    .locals 2
    .parameter "previous"
    .parameter "current"

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mOnValueChangeListener:Lcom/android/mms/ui/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mOnValueChangeListener:Lcom/android/mms/ui/NumberPicker$OnValueChangeListener;

    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lcom/android/mms/ui/NumberPicker$OnValueChangeListener;->onValueChange(Lcom/android/mms/ui/NumberPicker;II)V

    .line 1612
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .parameter "scrollState"

    .prologue
    .line 1408
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 1415
    :cond_0
    :goto_0
    return-void

    .line 1411
    :cond_1
    iput p1, p0, Lcom/android/mms/ui/NumberPicker;->mScrollState:I

    .line 1412
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mOnScrollListener:Lcom/android/mms/ui/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1413
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mOnScrollListener:Lcom/android/mms/ui/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/android/mms/ui/NumberPicker$OnScrollListener;->onScrollStateChange(Lcom/android/mms/ui/NumberPicker;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 3
    .parameter "scroller"

    .prologue
    const/4 v2, 0x0

    .line 1390
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    .line 1391
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorWheelState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1392
    invoke-direct {p0, v2}, Lcom/android/mms/ui/NumberPicker;->postAdjustScrollerCommand(I)V

    .line 1393
    invoke-direct {p0, v2}, Lcom/android/mms/ui/NumberPicker;->onScrollStateChange(I)V

    .line 1402
    :goto_0
    return-void

    .line 1395
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->updateInputTextView()V

    .line 1396
    iget-wide v0, p0, Lcom/android/mms/ui/NumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/NumberPicker;->fadeSelectorWheel(J)V

    goto :goto_0

    .line 1399
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->updateInputTextView()V

    .line 1400
    iget-wide v0, p0, Lcom/android/mms/ui/NumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/NumberPicker;->showInputControls(J)V

    goto :goto_0
.end method

.method private postAdjustScrollerCommand(I)V
    .locals 3
    .parameter "delayMillis"

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mAdjustScrollerCommand:Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;

    if-nez v0, :cond_0

    .line 1700
    new-instance v0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;-><init>(Lcom/android/mms/ui/NumberPicker;)V

    iput-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mAdjustScrollerCommand:Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;

    .line 1704
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mAdjustScrollerCommand:Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/mms/ui/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1705
    return-void

    .line 1702
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mAdjustScrollerCommand:Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(Z)V
    .locals 1
    .parameter "increment"

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1621
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->removeAllCallbacks()V

    .line 1622
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/android/mms/ui/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1623
    new-instance v0, Lcom/android/mms/ui/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/android/mms/ui/NumberPicker;)V

    iput-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/android/mms/ui/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 1625
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/android/mms/ui/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    #calls: Lcom/android/mms/ui/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setIncrement(Z)V
    invoke-static {v0, p1}, Lcom/android/mms/ui/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$600(Lcom/android/mms/ui/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1626
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/android/mms/ui/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1627
    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 1
    .parameter "selectionStart"
    .parameter "selectionEnd"

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mSetSelectionCommand:Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 1684
    new-instance v0, Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;-><init>(Lcom/android/mms/ui/NumberPicker;)V

    iput-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mSetSelectionCommand:Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;

    .line 1688
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mSetSelectionCommand:Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;

    #setter for: Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;->access$702(Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;I)I

    .line 1689
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mSetSelectionCommand:Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;

    #setter for: Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {v0, p2}, Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;->access$802(Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;I)I

    .line 1690
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mSetSelectionCommand:Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1691
    return-void

    .line 1686
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mSetSelectionCommand:Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/android/mms/ui/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/android/mms/ui/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1636
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mAdjustScrollerCommand:Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;

    if-eqz v0, :cond_1

    .line 1637
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mAdjustScrollerCommand:Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1639
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mSetSelectionCommand:Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_2

    .line 1640
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mSetSelectionCommand:Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1642
    :cond_2
    return-void
.end method

.method private setSelectorWheelState(I)V
    .locals 4
    .parameter "selectorWheelState"

    .prologue
    const/4 v3, 0x2

    .line 1350
    iput p1, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorWheelState:I

    .line 1351
    if-ne p1, v3, :cond_0

    .line 1352
    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1355
    :cond_0
    iget-boolean v1, p0, Lcom/android/mms/ui/NumberPicker;->mFlingable:Z

    if-eqz v1, :cond_1

    if-ne p1, v3, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1357
    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1358
    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker;->mContext:Landroid/content/Context;

    const v2, 0x1040551

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1359
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1360
    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->sendAccessibilityEvent(I)V

    .line 1361
    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1363
    .end local v0           #text:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private showInputControls(J)V
    .locals 2
    .parameter "animationDuration"

    .prologue
    .line 1461
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1462
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1463
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1464
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1465
    return-void
.end method

.method private updateIncrementAndDecrementButtonsVisibilityState()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1482
    iget-boolean v0, p0, Lcom/android/mms/ui/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mValue:I

    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mMaxValue:I

    if-ge v0, v1, :cond_2

    .line 1483
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1487
    :goto_0
    iget-boolean v0, p0, Lcom/android/mms/ui/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mValue:I

    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    if-le v0, v1, :cond_3

    .line 1488
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1492
    :goto_1
    return-void

    .line 1485
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1490
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateInputTextView()V
    .locals 5

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1591
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mValue:I

    invoke-direct {p0, v1}, Lcom/android/mms/ui/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1595
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1597
    iget-boolean v0, p0, Lcom/android/mms/ui/NumberPicker;->mFlingable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1598
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mContext:Landroid/content/Context;

    const v1, 0x1040550

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1600
    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1602
    :cond_0
    return-void

    .line 1593
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mValue:I

    iget v3, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1567
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1568
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1570
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->updateInputTextView()V

    .line 1576
    :goto_0
    return-void

    .line 1573
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 1574
    .local v0, current:I
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NumberPicker;->changeCurrent(I)V

    goto :goto_0
.end method


# virtual methods
.method protected changeCurrent(I)V
    .locals 2
    .parameter "current"

    .prologue
    .line 1270
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1280
    :goto_0
    return-void

    .line 1274
    :cond_0
    iget-boolean v1, p0, Lcom/android/mms/ui/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    .line 1275
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1277
    :cond_1
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mValue:I

    .line 1278
    .local v0, previous:I
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/NumberPicker;->setValue(I)V

    .line 1279
    invoke-direct {p0, v0, p1}, Lcom/android/mms/ui/NumberPicker;->notifyChange(II)V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 826
    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorWheelState:I

    if-nez v2, :cond_1

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 830
    .local v1, scroller:Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 831
    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 832
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 836
    :cond_2
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 837
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 838
    .local v0, currentScrollerY:I
    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_3

    .line 839
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/NumberPicker;->mPreviousScrollerY:I

    .line 841
    :cond_3
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/mms/ui/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/NumberPicker;->scrollBy(II)V

    .line 842
    iput v0, p0, Lcom/android/mms/ui/NumberPicker;->mPreviousScrollerY:I

    .line 843
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 844
    invoke-direct {p0, v1}, Lcom/android/mms/ui/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 846
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPicker;->invalidate()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 1163
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 808
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 809
    .local v0, keyCode:I
    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 810
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->removeAllCallbacks()V

    .line 812
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 790
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 791
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 803
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 793
    :pswitch_0
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorWheelState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 794
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->removeAllCallbacks()V

    .line 795
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->forceCompleteChangeCurrentByOneViaScroll()V

    goto :goto_0

    .line 800
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 791
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 817
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 818
    .local v0, action:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 819
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->removeAllCallbacks()V

    .line 821
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 1175
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1179
    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorWheelState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 1181
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPicker;->getDrawingTime()J

    move-result-wide v2

    .line 1182
    .local v2, drawTime:J
    const/4 v4, 0x0

    .local v4, i:I
    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPicker;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 1183
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/NumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1184
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1182
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1187
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/NumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v2, v3}, Lcom/android/mms/ui/NumberPicker;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 1190
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #drawTime:J
    .end local v4           #i:I
    :cond_2
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1141
    const v0, 0x3f666666

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 895
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1136
    const v0, 0x3f666666

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1039
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mValue:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 1146
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1149
    iget-boolean v0, p0, Lcom/android/mms/ui/NumberPicker;->mFlingable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1151
    iget-wide v0, p0, Lcom/android/mms/ui/NumberPicker;->mShowInputControlsAnimimationDuration:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/NumberPicker;->showInputControls(J)V

    .line 1153
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1157
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->removeAllCallbacks()V

    .line 1158
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 1194
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/NumberPicker;->mSelectorWheelState:I

    if-nez v13, :cond_0

    .line 1235
    :goto_0
    return-void

    .line 1198
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/NumberPicker;->mRight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/ui/NumberPicker;->mLeft:I

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    int-to-float v11, v13

    .line 1199
    .local v11, x:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v12, v13

    .line 1201
    .local v12, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 1203
    .local v5, restoreCount:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/NumberPicker;->mSelectorWheelState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 1204
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1205
    .local v3, clipBounds:Landroid/graphics/Rect;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/ui/NumberPicker;->mSelectorElementHeight:I

    invoke-virtual {v3, v13, v14}, Landroid/graphics/Rect;->inset(II)V

    .line 1206
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1210
    .end local v3           #clipBounds:Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/NumberPicker;->mSelectorIndices:[I

    .line 1211
    .local v8, selectorIndices:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v13, v8

    if-ge v4, v13, :cond_2

    .line 1212
    aget v7, v8, v4

    .line 1213
    .local v7, selectorIndex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1214
    .local v6, scrollSelectorValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1215
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/NumberPicker;->mSelectorElementHeight:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    .line 1211
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1219
    .end local v6           #scrollSelectorValue:Ljava/lang/String;
    .end local v7           #selectorIndex:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_3

    .line 1221
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/NumberPicker;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/ui/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/ui/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v13, v14

    div-int/lit8 v10, v13, 0x2

    .line 1223
    .local v10, topOfTopDivider:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/NumberPicker;->mSelectionDividerHeight:I

    add-int v2, v10, v13

    .line 1224
    .local v2, bottomOfTopDivider:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/NumberPicker;->mRight:I

    invoke-virtual {v13, v14, v10, v15, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1228
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/NumberPicker;->mSelectorElementHeight:I

    add-int v9, v10, v13

    .line 1229
    .local v9, topOfBottomDivider:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/NumberPicker;->mSelectorElementHeight:I

    add-int v1, v2, v13

    .line 1230
    .local v1, bottomOfBottomDivider:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/NumberPicker;->mRight:I

    invoke-virtual {v13, v14, v9, v15, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1234
    .end local v1           #bottomOfBottomDivider:I
    .end local v2           #bottomOfTopDivider:I
    .end local v9           #topOfBottomDivider:I
    .end local v10           #topOfTopDivider:I
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 683
    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPicker;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/mms/ui/NumberPicker;->mFlingable:Z

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    .line 730
    :goto_0
    return v3

    .line 686
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_2
    :pswitch_0
    move v3, v4

    .line 730
    goto :goto_0

    .line 688
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/android/mms/ui/NumberPicker;->mLastDownEventY:F

    iput v5, p0, Lcom/android/mms/ui/NumberPicker;->mLastMotionEventY:F

    .line 689
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->removeAllCallbacks()V

    .line 690
    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 691
    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 692
    iput-boolean v4, p0, Lcom/android/mms/ui/NumberPicker;->mBeginEditOnUpEvent:Z

    .line 693
    iput-boolean v3, p0, Lcom/android/mms/ui/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 694
    iget v5, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorWheelState:I

    if-ne v5, v6, :cond_5

    .line 695
    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    .line 697
    .local v2, scrollersFinished:Z
    :goto_1
    if-nez v2, :cond_3

    .line 698
    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 699
    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 700
    invoke-direct {p0, v4}, Lcom/android/mms/ui/NumberPicker;->onScrollStateChange(I)V

    .line 702
    :cond_3
    iput-boolean v2, p0, Lcom/android/mms/ui/NumberPicker;->mBeginEditOnUpEvent:Z

    .line 703
    iput-boolean v3, p0, Lcom/android/mms/ui/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 704
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->hideInputControls()V

    goto :goto_0

    .end local v2           #scrollersFinished:Z
    :cond_4
    move v2, v4

    .line 695
    goto :goto_1

    .line 707
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-direct {p0, p1, v5}, Lcom/android/mms/ui/NumberPicker;->isEventInViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->isShown()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v5}, Lcom/android/mms/ui/NumberPicker;->isEventInViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->isShown()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v5}, Lcom/android/mms/ui/NumberPicker;->isEventInViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 712
    :cond_7
    iput-boolean v4, p0, Lcom/android/mms/ui/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 713
    invoke-direct {p0, v6}, Lcom/android/mms/ui/NumberPicker;->setSelectorWheelState(I)V

    .line 714
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->hideInputControls()V

    goto/16 :goto_0

    .line 719
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 720
    .local v0, currentMoveY:F
    iget v5, p0, Lcom/android/mms/ui/NumberPicker;->mLastDownEventY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 721
    .local v1, deltaDownY:I
    iget v5, p0, Lcom/android/mms/ui/NumberPicker;->mTouchSlop:I

    if-le v1, v5, :cond_2

    .line 722
    iput-boolean v4, p0, Lcom/android/mms/ui/NumberPicker;->mBeginEditOnUpEvent:Z

    .line 723
    invoke-direct {p0, v3}, Lcom/android/mms/ui/NumberPicker;->onScrollStateChange(I)V

    .line 724
    invoke-direct {p0, v6}, Lcom/android/mms/ui/NumberPicker;->setSelectorWheelState(I)V

    .line 725
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->hideInputControls()V

    goto/16 :goto_0

    .line 686
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 672
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 673
    iget-boolean v0, p0, Lcom/android/mms/ui/NumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    if-nez v0, :cond_0

    .line 674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/NumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    .line 676
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->initializeSelectorWheel()V

    .line 677
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->initializeFadingEdges()V

    .line 679
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 735
    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPicker;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 785
    :goto_0
    return v6

    .line 738
    :cond_0
    iget-object v8, p0, Lcom/android/mms/ui/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_1

    .line 739
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/ui/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 741
    :cond_1
    iget-object v8, p0, Lcom/android/mms/ui/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 742
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 743
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v6, v7

    .line 785
    goto :goto_0

    .line 745
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 746
    .local v1, currentMoveY:F
    iget-boolean v8, p0, Lcom/android/mms/ui/NumberPicker;->mBeginEditOnUpEvent:Z

    if-nez v8, :cond_2

    iget v8, p0, Lcom/android/mms/ui/NumberPicker;->mScrollState:I

    if-eq v8, v7, :cond_3

    .line 748
    :cond_2
    iget v8, p0, Lcom/android/mms/ui/NumberPicker;->mLastDownEventY:F

    sub-float v8, v1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v2, v8

    .line 749
    .local v2, deltaDownY:I
    iget v8, p0, Lcom/android/mms/ui/NumberPicker;->mTouchSlop:I

    if-le v2, v8, :cond_3

    .line 750
    iput-boolean v6, p0, Lcom/android/mms/ui/NumberPicker;->mBeginEditOnUpEvent:Z

    .line 751
    invoke-direct {p0, v7}, Lcom/android/mms/ui/NumberPicker;->onScrollStateChange(I)V

    .line 754
    .end local v2           #deltaDownY:I
    :cond_3
    iget v8, p0, Lcom/android/mms/ui/NumberPicker;->mLastMotionEventY:F

    sub-float v8, v1, v8

    float-to-int v3, v8

    .line 755
    .local v3, deltaMoveY:I
    invoke-virtual {p0, v6, v3}, Lcom/android/mms/ui/NumberPicker;->scrollBy(II)V

    .line 756
    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPicker;->invalidate()V

    .line 757
    iput v1, p0, Lcom/android/mms/ui/NumberPicker;->mLastMotionEventY:F

    goto :goto_1

    .line 760
    .end local v1           #currentMoveY:F
    .end local v3           #deltaMoveY:I
    :pswitch_1
    iget-boolean v8, p0, Lcom/android/mms/ui/NumberPicker;->mBeginEditOnUpEvent:Z

    if-eqz v8, :cond_4

    .line 761
    invoke-direct {p0, v7}, Lcom/android/mms/ui/NumberPicker;->setSelectorWheelState(I)V

    .line 762
    iget-wide v8, p0, Lcom/android/mms/ui/NumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v8, v9}, Lcom/android/mms/ui/NumberPicker;->showInputControls(J)V

    .line 763
    iget-object v6, p0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    move v6, v7

    .line 764
    goto :goto_0

    .line 766
    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 767
    .local v5, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v8, 0x3e8

    iget v9, p0, Lcom/android/mms/ui/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v9, v9

    invoke-virtual {v5, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 768
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    float-to-int v4, v8

    .line 769
    .local v4, initialVelocity:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lcom/android/mms/ui/NumberPicker;->mMinimumFlingVelocity:I

    if-le v8, v9, :cond_6

    .line 770
    invoke-direct {p0, v4}, Lcom/android/mms/ui/NumberPicker;->fling(I)V

    .line 771
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/android/mms/ui/NumberPicker;->onScrollStateChange(I)V

    .line 781
    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/android/mms/ui/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 782
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/mms/ui/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 773
    :cond_6
    iget-boolean v8, p0, Lcom/android/mms/ui/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    if-eqz v8, :cond_7

    .line 774
    iget-object v8, p0, Lcom/android/mms/ui/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/mms/ui/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 775
    invoke-direct {p0, v6}, Lcom/android/mms/ui/NumberPicker;->postAdjustScrollerCommand(I)V

    goto :goto_2

    .line 778
    :cond_7
    sget v6, Lcom/android/mms/ui/NumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    invoke-direct {p0, v6}, Lcom/android/mms/ui/NumberPicker;->postAdjustScrollerCommand(I)V

    goto :goto_2

    .line 743
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x2

    .line 860
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorWheelState:I

    if-nez v1, :cond_1

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorIndices:[I

    .line 864
    .local v0, selectorIndices:[I
    iget-boolean v1, p0, Lcom/android/mms/ui/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_2

    .line 866
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/android/mms/ui/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 869
    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/ui/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    aget v1, v0, v3

    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_3

    .line 871
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/android/mms/ui/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 874
    :cond_3
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/android/mms/ui/NumberPicker;->mCurrentScrollOffset:I

    .line 875
    :cond_4
    :goto_1
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_5

    .line 876
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/mms/ui/NumberPicker;->mCurrentScrollOffset:I

    .line 877
    invoke-direct {p0, v0}, Lcom/android/mms/ui/NumberPicker;->decrementSelectorIndices([I)V

    .line 878
    aget v1, v0, v3

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/NumberPicker;->changeCurrent(I)V

    .line 879
    iget-boolean v1, p0, Lcom/android/mms/ui/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_4

    .line 880
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/android/mms/ui/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 883
    :cond_5
    :goto_2
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 884
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/mms/ui/NumberPicker;->mCurrentScrollOffset:I

    .line 885
    invoke-direct {p0, v0}, Lcom/android/mms/ui/NumberPicker;->incrementSelectorIndices([I)V

    .line 886
    aget v1, v0, v3

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/NumberPicker;->changeCurrent(I)V

    .line 887
    iget-boolean v1, p0, Lcom/android/mms/ui/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_5

    aget v1, v0, v3

    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_5

    .line 888
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/android/mms/ui/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 1241
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .parameter "displayedValues"

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1132
    :goto_0
    return-void

    .line 1122
    :cond_0
    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1123
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1125
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1130
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->updateInputTextView()V

    .line 1131
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->initializeSelectorWheelIndices()V

    goto :goto_0

    .line 1128
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 852
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 853
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 854
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 855
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 856
    return-void
.end method

.method public setFormatter(Lcom/android/mms/ui/NumberPicker$Formatter;)V
    .locals 1
    .parameter "formatter"

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mFormatter:Lcom/android/mms/ui/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 935
    :goto_0
    return-void

    .line 932
    :cond_0
    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker;->mFormatter:Lcom/android/mms/ui/NumberPicker$Formatter;

    .line 933
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->initializeSelectorWheelIndices()V

    .line 934
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->updateInputTextView()V

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .parameter "maxValue"

    .prologue
    .line 1088
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1102
    :goto_0
    return-void

    .line 1091
    :cond_0
    if-gez p1, :cond_1

    .line 1092
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1094
    :cond_1
    iput p1, p0, Lcom/android/mms/ui/NumberPicker;->mMaxValue:I

    .line 1095
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1096
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mMaxValue:I

    iput v1, p0, Lcom/android/mms/ui/NumberPicker;->mValue:I

    .line 1098
    :cond_2
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1099
    .local v0, wrapSelectorWheel:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1100
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1101
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->updateInputTextView()V

    goto :goto_0

    .line 1098
    .end local v0           #wrapSelectorWheel:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .parameter "minValue"

    .prologue
    .line 1057
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1071
    :goto_0
    return-void

    .line 1060
    :cond_0
    if-gez p1, :cond_1

    .line 1061
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1063
    :cond_1
    iput p1, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    .line 1064
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mValue:I

    if-le v1, v2, :cond_2

    .line 1065
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    iput v1, p0, Lcom/android/mms/ui/NumberPicker;->mValue:I

    .line 1067
    :cond_2
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1068
    .local v0, wrapSelectorWheel:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1069
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1070
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->updateInputTextView()V

    goto :goto_0

    .line 1067
    .end local v0           #wrapSelectorWheel:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0
    .parameter "intervalMillis"

    .prologue
    .line 1030
    iput-wide p1, p0, Lcom/android/mms/ui/NumberPicker;->mLongPressUpdateInterval:J

    .line 1031
    return-void
.end method

.method public setOnScrollListener(Lcom/android/mms/ui/NumberPicker$OnScrollListener;)V
    .locals 0
    .parameter "onScrollListener"

    .prologue
    .line 913
    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker;->mOnScrollListener:Lcom/android/mms/ui/NumberPicker$OnScrollListener;

    .line 914
    return-void
.end method

.method public setOnValueChangedListener(Lcom/android/mms/ui/NumberPicker$OnValueChangeListener;)V
    .locals 0
    .parameter "onValueChangedListener"

    .prologue
    .line 904
    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker;->mOnValueChangeListener:Lcom/android/mms/ui/NumberPicker$OnValueChangeListener;

    .line 905
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 966
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    .line 980
    :goto_0
    return-void

    .line 969
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_1

    .line 970
    iget-boolean v0, p0, Lcom/android/mms/ui/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_3

    iget p1, p0, Lcom/android/mms/ui/NumberPicker;->mMaxValue:I

    .line 972
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_2

    .line 973
    iget-boolean v0, p0, Lcom/android/mms/ui/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_4

    iget p1, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    .line 975
    :cond_2
    :goto_2
    iput p1, p0, Lcom/android/mms/ui/NumberPicker;->mValue:I

    .line 976
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->initializeSelectorWheelIndices()V

    .line 977
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->updateInputTextView()V

    .line 978
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 979
    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPicker;->invalidate()V

    goto :goto_0

    .line 970
    :cond_3
    iget p1, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    goto :goto_1

    .line 973
    :cond_4
    iget p1, p0, Lcom/android/mms/ui/NumberPicker;->mMaxValue:I

    goto :goto_2
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .parameter "wrapSelector"

    .prologue
    .line 1007
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1008
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Range less than selector items count."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1010
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_1

    .line 1012
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mSelectorIndices:[I

    const/4 v1, 0x2

    const v2, 0x7fffffff

    aput v2, v0, v1

    .line 1013
    iput-boolean p1, p0, Lcom/android/mms/ui/NumberPicker;->mWrapSelectorWheel:Z

    .line 1015
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1017
    :cond_1
    return-void
.end method
