.class public Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.super Landroid/app/Fragment;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;,
        Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItemAdapter;,
        Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;,
        Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;,
        Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;,
        Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;,
        Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static MannerModePressed:Z

.field private static final PROJECTION_LOG:[Ljava/lang/String;

.field private static final PROJECTION_NAME:[Ljava/lang/String;

.field private static final PROJECTION_NAME_REVERSE:[Ljava/lang/String;

.field private static final PROJECTION_PHONE:[Ljava/lang/String;

.field private static final PROJECTION_RESULT:[Ljava/lang/String;

.field private static final PROJECTION_RESULT_REVERSE:[Ljava/lang/String;

.field private static final PROJECTION_SPEEDDIAL:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static condition:Landroid/os/ConditionVariable;

.field private static listResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private static numberArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;",
            ">;"
        }
    .end annotation
.end field

.field private static ttfTypeface:Landroid/graphics/Typeface;


# instance fields
.field private argsName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private count:I

.field private dialogResult:Landroid/app/AlertDialog;

.field private digitText:Ljava/lang/String;

.field private mAddBtn:Landroid/widget/RelativeLayout;

.field private mAudioManager:Landroid/media/AudioManager;

.field mCallLog:Lcom/android/phone/CallLogAsync;

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDialButton:Landroid/view/View;

.field private mDialpad:Landroid/view/View;

.field private mDialpadAdditionalButtons:Landroid/view/View;

.field private mDialpadAdditionalButtonsLand:Landroid/view/View;

.field private mDialpadLand:Landroid/view/View;

.field private mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

.field private mFragmentView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHaptic:Lcom/android/phone/HapticFeedback;

.field private mIsAddCallMode:Z

.field private mLastNumberDialed:Ljava/lang/String;

.field private mListener:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;

.field private mMessageButton:Landroid/view/View;

.field private mProhibitedPhoneNumberRegexp:Ljava/lang/String;

.field private mReceiveHandler:Landroid/os/Handler;

.field private mSearchLayout:Landroid/widget/LinearLayout;

.field private mSearchLock:Ljava/lang/Object;

.field private mSearchView:Landroid/view/View;

.field private mSearchViewLand:Landroid/view/View;

.field private mSearchedCtNumberBefore:Z

.field private mSearchedLogBefore:Z

.field private mShowOptionsMenu:Z

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mVediocallButton:Landroid/view/View;

.field private mWasEmptyBeforeTextChange:Z

.field private message_counter:I

.field private message_flag:Z

.field private onKeypad:Ljava/lang/String;

.field private resultFlag:I

.field private subdialogResult:Landroid/app/AlertDialog;

.field thread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    const-class v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    .line 132
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->DBG:Z

    .line 149
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->ttfTypeface:Landroid/graphics/Typeface;

    .line 154
    sput-boolean v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->MannerModePressed:Z

    .line 227
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "key_number"

    aput-object v3, v0, v2

    const-string v3, "number"

    aput-object v3, v0, v1

    const-string v3, "display_name"

    aput-object v3, v0, v4

    const-string v3, "photo_id"

    aput-object v3, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_SPEEDDIAL:[Ljava/lang/String;

    .line 231
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "data1"

    aput-object v3, v0, v1

    const-string v3, "data2"

    aput-object v3, v0, v4

    const-string v3, "is_super_primary"

    aput-object v3, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_PHONE:[Ljava/lang/String;

    .line 236
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "display_name"

    aput-object v3, v0, v1

    const-string v3, "photo_id"

    aput-object v3, v0, v4

    const-string v3, "has_phone_number"

    aput-object v3, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_NAME:[Ljava/lang/String;

    .line 240
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "display_name_reverse"

    aput-object v3, v0, v1

    const-string v3, "photo_id"

    aput-object v3, v0, v4

    const-string v3, "has_phone_number"

    aput-object v3, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_NAME_REVERSE:[Ljava/lang/String;

    .line 244
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "display_name"

    aput-object v3, v0, v1

    const-string v3, "photo_id"

    aput-object v3, v0, v4

    const-string v3, "data1"

    aput-object v3, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_RESULT:[Ljava/lang/String;

    .line 248
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "display_name_reverse"

    aput-object v3, v0, v1

    const-string v3, "photo_id"

    aput-object v3, v0, v4

    const-string v3, "data1"

    aput-object v3, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_RESULT_REVERSE:[Ljava/lang/String;

    .line 252
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "contactid"

    aput-object v2, v0, v1

    const-string v1, "logtype"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_LOG:[Ljava/lang/String;

    .line 2257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;

    .line 2290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->numberArray:Ljava/util/ArrayList;

    return-void

    :cond_0
    move v0, v2

    .line 132
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 125
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    .line 210
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLock:Ljava/lang/Object;

    .line 212
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    .line 214
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    .line 271
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    .line 302
    new-instance v0, Lcom/android/phone/CallLogAsync;

    invoke-direct {v0}, Lcom/android/phone/CallLogAsync;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCallLog:Lcom/android/phone/CallLogAsync;

    .line 303
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 309
    new-instance v0, Lcom/android/phone/HapticFeedback;

    invoke-direct {v0}, Lcom/android/phone/HapticFeedback;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    .line 895
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;

    .line 2992
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listCreateSimple(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->loadPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->revert2Number(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_PHONE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->subDialogBuilder(I)V

    return-void
.end method

.method static synthetic access$1902(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    return p1
.end method

.method static synthetic access$2200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->numberArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setSearchLayout(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600()Landroid/os/ConditionVariable;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->condition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-static {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLock:Ljava/lang/Object;

    return-object v0
.end method

.method private static addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 1060
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1062
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1063
    add-int/lit8 v1, v4, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1065
    if-eqz p1, :cond_16

    .line 1066
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v1

    .line 1068
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 1338
    :cond_0
    :goto_1
    :pswitch_0
    return-object v3

    .line 1070
    :pswitch_1
    if-ne v4, v6, :cond_1

    .line 1071
    const-string v0, "1"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v1, v0

    .line 1073
    :goto_2
    if-ge v1, v2, :cond_0

    .line 1074
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1075
    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1080
    :pswitch_2
    if-ne v4, v6, :cond_2

    .line 1081
    const-string v0, "2"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    const-string v0, "a"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1083
    const-string v0, "b"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1084
    const-string v0, "c"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    const-string v0, "\u05d3"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    const-string v0, "\u05d4"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1089
    const-string v0, "\u05d5"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v1, v0

    .line 1092
    :goto_3
    if-ge v1, v2, :cond_0

    .line 1093
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1094
    const-string v4, "2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    const-string v4, "a"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    const-string v4, "b"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    const-string v4, "c"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1099
    const-string v4, "\u05d3"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    const-string v4, "\u05d4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    const-string v4, "\u05d5"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1107
    :pswitch_3
    if-ne v4, v6, :cond_4

    .line 1108
    const-string v0, "3"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    const-string v0, "d"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    const-string v0, "e"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1111
    const-string v0, "f"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1112
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    const-string v0, "\u05d0"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    const-string v0, "\u05d1"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    const-string v0, "\u05d2"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    move v1, v0

    .line 1118
    :goto_4
    if-ge v1, v2, :cond_0

    .line 1119
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1120
    const-string v4, "3"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    const-string v4, "d"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    const-string v4, "e"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    const-string v4, "f"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1125
    const-string v4, "\u05d0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    const-string v4, "\u05d1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    const-string v4, "\u05d2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 1133
    :pswitch_4
    if-ne v4, v6, :cond_6

    .line 1134
    const-string v0, "4"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    const-string v0, "g"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1136
    const-string v0, "h"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1137
    const-string v0, "i"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    const-string v0, "\u05dd"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1140
    const-string v0, "\u05de"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    const-string v0, "\u05df"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    const-string v0, "\u05e0"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    move v1, v0

    .line 1145
    :goto_5
    if-ge v1, v2, :cond_0

    .line 1146
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1147
    const-string v4, "4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    const-string v4, "g"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1149
    const-string v4, "h"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1150
    const-string v4, "i"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1152
    const-string v4, "\u05dd"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    const-string v4, "\u05de"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1154
    const-string v4, "\u05df"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1155
    const-string v4, "\u05e0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 1161
    :pswitch_5
    if-ne v4, v6, :cond_8

    .line 1162
    const-string v0, "5"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1163
    const-string v0, "j"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    const-string v0, "k"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    const-string v0, "l"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1167
    const-string v0, "\u05d9"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    const-string v0, "\u05da"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1169
    const-string v0, "\u05db"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    const-string v0, "\u05dc"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    move v1, v0

    .line 1173
    :goto_6
    if-ge v1, v2, :cond_0

    .line 1174
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1175
    const-string v4, "5"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1176
    const-string v4, "j"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    const-string v4, "k"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    const-string v4, "l"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1180
    const-string v4, "\u05d9"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    const-string v4, "\u05da"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1182
    const-string v4, "\u05db"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1183
    const-string v4, "\u05dc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1190
    :pswitch_6
    if-ne v4, v6, :cond_a

    .line 1191
    const-string v0, "6"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    const-string v0, "m"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    const-string v0, "n"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    const-string v0, "o"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    const-string v0, "\u05d6"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1197
    const-string v0, "\u05d7"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1198
    const-string v0, "\u05d8"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    move v1, v0

    .line 1201
    :goto_7
    if-ge v1, v2, :cond_0

    .line 1202
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1203
    const-string v4, "6"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    const-string v4, "m"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    const-string v4, "n"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    const-string v4, "o"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1208
    const-string v4, "\u05d6"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1209
    const-string v4, "\u05d7"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    const-string v4, "\u05d8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1201
    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 1216
    :pswitch_7
    if-ne v4, v6, :cond_c

    .line 1217
    const-string v0, "7"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    const-string v0, "p"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    const-string v0, "q"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1220
    const-string v0, "r"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    const-string v0, "s"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    const-string v0, "\u05e8"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1224
    const-string v0, "\u05e9"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    const-string v0, "\u05ea"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    move v1, v0

    .line 1228
    :goto_8
    if-ge v1, v2, :cond_0

    .line 1229
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1230
    const-string v4, "7"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    const-string v4, "p"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    const-string v4, "q"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1233
    const-string v4, "r"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1234
    const-string v4, "s"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1236
    const-string v4, "\u05e8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    const-string v4, "\u05e9"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    const-string v4, "\u05ea"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1228
    :cond_d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 1244
    :pswitch_8
    if-ne v4, v6, :cond_e

    .line 1245
    const-string v0, "8"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    const-string v0, "t"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    const-string v0, "u"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    const-string v0, "v"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1250
    const-string v0, "\u05e5"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    const-string v0, "\u05e6"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    const-string v0, "\u05e7"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_e
    move v1, v0

    .line 1255
    :goto_9
    if-ge v1, v2, :cond_0

    .line 1256
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1257
    const-string v4, "8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    const-string v4, "t"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1259
    const-string v4, "u"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    const-string v4, "v"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1262
    const-string v4, "\u05e5"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1263
    const-string v4, "\u05e6"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1264
    const-string v4, "\u05e7"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    :cond_f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 1270
    :pswitch_9
    if-ne v4, v6, :cond_10

    .line 1271
    const-string v0, "9"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    const-string v0, "w"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1273
    const-string v0, "x"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1274
    const-string v0, "y"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1275
    const-string v0, "z"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1276
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1277
    const-string v0, "\u05e1"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    const-string v0, "\u05e2"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    const-string v0, "\u05e3"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    const-string v0, "\u05e4"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_10
    move v1, v0

    .line 1283
    :goto_a
    if-ge v1, v2, :cond_0

    .line 1284
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1285
    const-string v4, "9"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1286
    const-string v4, "w"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1287
    const-string v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1288
    const-string v4, "y"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    const-string v4, "z"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1291
    const-string v4, "\u05e1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1292
    const-string v4, "\u05e2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    const-string v4, "\u05e3"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1294
    const-string v4, "\u05e4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1283
    :cond_11
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 1300
    :pswitch_a
    if-ne v4, v6, :cond_12

    .line 1301
    const-string v0, "0"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_12
    move v1, v0

    .line 1303
    :goto_b
    if-ge v1, v2, :cond_0

    .line 1304
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 1309
    :pswitch_b
    if-ne v4, v6, :cond_13

    .line 1310
    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_13
    move v1, v0

    .line 1312
    :goto_c
    if-ge v1, v2, :cond_0

    .line 1313
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 1318
    :pswitch_c
    if-ne v4, v6, :cond_14

    .line 1319
    const-string v0, "*"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_14
    move v1, v0

    .line 1321
    :goto_d
    if-ge v1, v2, :cond_0

    .line 1322
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "*"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 1327
    :pswitch_d
    if-ne v4, v6, :cond_15

    .line 1328
    const-string v0, "+"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_15
    move v1, v0

    .line 1330
    :goto_e
    if-ge v1, v2, :cond_0

    .line 1331
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "+"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1330
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_16
    move v2, v0

    goto/16 :goto_0

    .line 1068
    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private clearDialString()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2846
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getSelectionStart()I

    move-result v0

    .line 2847
    .local v0, anchor:I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getSelectionEnd()I

    move-result v3

    .line 2849
    .local v3, point:I
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2850
    .local v5, selectionStart:I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2852
    .local v4, selectionEnd:I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2853
    .local v1, digits:Landroid/text/Editable;
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2854
    if-ne v5, v4, :cond_1

    .line 2855
    if-nez v5, :cond_0

    .line 2869
    :goto_0
    return-void

    .line 2859
    :cond_0
    const-string v6, ""

    invoke-interface {v1, v7, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 2861
    :cond_1
    const-string v6, ""

    invoke-interface {v1, v5, v4, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 2866
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    .line 2867
    .local v2, len:I
    const-string v6, ""

    invoke-interface {v1, v7, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method private constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 3
    .parameter

    .prologue
    .line 2742
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2743
    if-nez v1, :cond_0

    .line 2744
    const/4 v0, 0x0

    .line 2751
    :goto_0
    return-object v0

    .line 2746
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 2747
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 2748
    const v2, 0x7f100005

    invoke-virtual {v0, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 2749
    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 2750
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setupMenuItems(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method private dailogBuildcreate()V
    .locals 5

    .prologue
    .line 2260
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listCreate(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;

    .line 2261
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2287
    :goto_0
    return-void

    .line 2264
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2265
    new-instance v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040055

    sget-object v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 2267
    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$5;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0286

    new-instance v3, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$4;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0285

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2283
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialogResult:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 2284
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2285
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialogResult:Landroid/app/AlertDialog;

    .line 2286
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private fillDigitsIfNecessary(Landroid/content/Intent;)Z
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 642
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 643
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 644
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 645
    .local v10, uri:Landroid/net/Uri;
    if-eqz v10, :cond_4

    .line 646
    const-string v0, "tel"

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    invoke-virtual {v10}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 649
    .local v8, data:Ljava/lang/String;
    invoke-direct {p0, v8, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v11

    .line 675
    .end local v8           #data:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    :goto_0
    return v0

    .line 652
    .restart local v10       #uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    .line 653
    .local v9, type:Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 656
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "number"

    aput-object v4, v2, v12

    const-string v4, "number_key"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 659
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 661
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 663
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v11

    goto :goto_0

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7           #c:Landroid/database/Cursor;
    .end local v9           #type:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_4
    move v0, v12

    .line 675
    goto :goto_0

    .line 667
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v9       #type:Ljava/lang/String;
    .restart local v10       #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSpeedDialNumber(JZ)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const v8, 0x7f0a0288

    const/4 v7, 0x0

    .line 2909
    const-string v6, ""

    .line 2910
    const-string v0, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2911
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_SPEEDDIAL:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key_number="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2927
    if-eqz v1, :cond_2

    .line 2928
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2929
    const-string v0, "number"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2933
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v6, v0

    .line 2939
    :cond_0
    :goto_1
    return-object v6

    .line 2931
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move-object v0, v6

    goto :goto_0

    .line 2935
    :cond_2
    if-nez p3, :cond_0

    .line 2936
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private getTouchWizFont()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 617
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->ttfTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 618
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Input_TouchWiz_2010205.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->ttfTypeface:Landroid/graphics/Typeface;

    .line 620
    :cond_0
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->ttfTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private isDigitsEmpty()Z
    .locals 1

    .prologue
    .line 3357
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLayoutReady()Z
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isNonSeparator(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1342
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x23

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 2597
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 2598
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 2599
    return-void
.end method

.method private listCreate(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1971
    iput v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    .line 1972
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1973
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1974
    if-nez v1, :cond_0

    .line 2011
    :goto_0
    return-object v0

    .line 1977
    :cond_0
    if-ne v1, v5, :cond_1

    .line 1978
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1979
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1980
    iput v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    .line 1982
    :cond_1
    sget-boolean v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->DBG:Z

    if-eqz v2, :cond_2

    .line 1983
    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<++++++++++>Search Start for Dialog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    :cond_2
    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    packed-switch v2, :pswitch_data_0

    .line 2010
    :cond_3
    :goto_1
    sget-object v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<++++++++++>Search End for Dialog : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1986
    :pswitch_0
    if-ne v1, v5, :cond_4

    .line 1987
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_SpeedDial(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1988
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1989
    :cond_4
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 1990
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1992
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1993
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Number(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1994
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Log(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2000
    :pswitch_1
    if-ne v1, v5, :cond_6

    .line 2001
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_SpeedDial(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2002
    :cond_6
    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    .line 2003
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Number(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2004
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Log(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1984
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private listCreateSimple(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1678
    .line 1679
    iput v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    .line 1680
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1681
    if-nez v1, :cond_1

    .line 1737
    :cond_0
    :goto_0
    return-object v0

    .line 1684
    :cond_1
    sget-boolean v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->DBG:Z

    if-eqz v2, :cond_2

    .line 1685
    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "<++++++++++>List create start : "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    :cond_2
    if-ne v1, v5, :cond_3

    .line 1687
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1688
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1689
    iput v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    .line 1691
    :cond_3
    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1693
    :pswitch_0
    if-ne v1, v5, :cond_5

    .line 1694
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_SpeedDial_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    .line 1695
    if-nez v0, :cond_4

    .line 1696
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    goto :goto_0

    .line 1698
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    goto :goto_0

    .line 1700
    :cond_5
    const/4 v0, 0x2

    if-ne v1, v0, :cond_6

    .line 1701
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    goto :goto_0

    .line 1703
    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    .line 1704
    if-nez v0, :cond_8

    .line 1705
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Number_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    .line 1706
    if-nez v0, :cond_7

    .line 1707
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    goto :goto_0

    .line 1709
    :cond_7
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    goto :goto_0

    .line 1712
    :cond_8
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Number_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    .line 1713
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    goto :goto_0

    .line 1721
    :pswitch_1
    if-ne v1, v5, :cond_9

    .line 1722
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_SpeedDial_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    goto :goto_0

    .line 1723
    :cond_9
    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 1724
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Number_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    .line 1725
    if-nez v0, :cond_a

    .line 1726
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    goto :goto_0

    .line 1728
    :cond_a
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    goto :goto_0

    .line 1691
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private loadPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1412
    .line 1415
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data15"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1420
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1421
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1422
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 1425
    :cond_0
    if-eqz v1, :cond_1

    .line 1426
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1429
    :cond_1
    return-object v6

    .line 1425
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_2

    .line 1426
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1425
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private static makeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 1363
    .line 1365
    :goto_0
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1366
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1368
    :cond_0
    :goto_1
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 1369
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1371
    :cond_1
    :goto_2
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 1372
    const-string v0, ")"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 1374
    :cond_2
    :goto_3
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 1375
    const-string v0, "("

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 1377
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private mannerModeSet()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2882
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 2884
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 2886
    invoke-direct {p0, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setRingerMode(Z)V

    .line 2887
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0289

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2892
    :goto_0
    return-void

    .line 2889
    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setRingerMode(Z)V

    .line 2890
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a028a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private newDialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter

    .prologue
    .line 3398
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3400
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3401
    return-object v0
.end method

.method private newFlashIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 3392
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->newDialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3393
    const-string v1, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3394
    return-object v0
.end method

.method private newVoicemailIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 3385
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "voicemail"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3387
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3388
    return-object v0
.end method

.method private phoneIsCdma()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3213
    .line 3215
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3216
    if-eqz v1, :cond_0

    .line 3217
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 3222
    :cond_0
    :goto_0
    return v0

    .line 3219
    :catch_0
    move-exception v1

    .line 3220
    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.getActivePhoneType() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static phoneIsInUse()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3201
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3202
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 3206
    :cond_0
    :goto_0
    return v0

    .line 3203
    :catch_0
    move-exception v1

    .line 3204
    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.isIdle() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private phoneIsOffhook()Z
    .locals 4

    .prologue
    .line 3229
    const/4 v0, 0x0

    .line 3231
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3232
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3236
    :cond_0
    :goto_0
    return v0

    .line 3233
    :catch_0
    move-exception v1

    .line 3234
    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.isOffhook() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private placeCall_result(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 2872
    const-string v0, ""

    if-ne p1, v0, :cond_0

    .line 2878
    :goto_0
    return-void

    .line 2874
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2876
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2877
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private placeVideoCall()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2944
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->digitText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2945
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "In placeVideoCall method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2948
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2971
    :goto_0
    return-void

    .line 2958
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2960
    const-string v0, "videocall"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2961
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2962
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 2963
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 2965
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "Out placeVideoCall method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2967
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2968
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2969
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private resolveIntent(Landroid/content/Intent;)Z
    .locals 14
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 698
    const/4 v9, 0x0

    .line 701
    .local v9, ignoreState:Z
    iput-boolean v13, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mIsAddCallMode:Z

    .line 704
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 705
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    :cond_0
    const-string v0, "add_call_mode"

    invoke-virtual {p1, v0, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mIsAddCallMode:Z

    .line 709
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 711
    .local v11, uri:Landroid/net/Uri;
    if-eqz v11, :cond_1

    .line 712
    iput v12, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    .line 713
    const-string v0, "tel"

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 715
    const-string v8, ""

    .line 716
    .local v8, data:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 717
    iput-boolean v12, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    .line 718
    iput-boolean v12, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    .line 719
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setSelection(I)V

    .line 721
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    .line 745
    .end local v8           #data:Ljava/lang/String;
    .end local v11           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return v9

    .line 723
    .restart local v11       #uri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    .line 724
    .local v10, type:Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v2, v13

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 730
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 731
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 733
    iput-boolean v12, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    .line 734
    iput-boolean v12, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    .line 735
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setSelection(I)V

    .line 737
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    .line 739
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private revert2Number(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2459
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2460
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2462
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 2463
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2464
    packed-switch v3, :pswitch_data_0

    .line 2558
    :pswitch_0
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2462
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2466
    :pswitch_1
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2475
    :pswitch_2
    const-string v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2484
    :pswitch_3
    const-string v3, "3"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2493
    :pswitch_4
    const-string v3, "4"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2502
    :pswitch_5
    const-string v3, "5"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2511
    :pswitch_6
    const-string v3, "6"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2522
    :pswitch_7
    const-string v3, "7"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2531
    :pswitch_8
    const-string v3, "8"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2542
    :pswitch_9
    const-string v3, "9"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2545
    :pswitch_a
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2548
    :pswitch_b
    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2551
    :pswitch_c
    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2554
    :pswitch_d
    const-string v3, "+"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2562
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2464
    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private sendSMS()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2974
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2975
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2977
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "sms"

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2979
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 2984
    :goto_0
    return-void

    .line 2981
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "sms"

    const-string v3, ""

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2982
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setEditTextView(Landroid/view/View;)V
    .locals 5
    .parameter "fragmentView"

    .prologue
    .line 521
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 522
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 523
    .local v2, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v3

    if-nez v3, :cond_0

    .line 527
    const/16 v3, 0x6d

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v3, 0x1e0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 536
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 537
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setScaledWidth(F)V

    .line 539
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 540
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 542
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 543
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 544
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getTouchWizFont()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 547
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 548
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 549
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setScaledDensity(F)V

    .line 551
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 552
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->requestFocus()Z

    .line 554
    return-void

    .line 533
    .end local v1           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    const/16 v3, 0x4e

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v3, 0x186

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "data"
    .parameter "normalizedNumber"

    .prologue
    .line 750
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 751
    .local v0, dialString:Ljava/lang/String;
    const-string v4, "persist.sys.country"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 752
    .local v2, language:Ljava/lang/String;
    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 754
    .local v3, salesCode:Ljava/lang/String;
    const-string v4, "TNZ"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "VNZ"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "VNX"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "NZC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ATO"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "INU"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "INS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "SLK"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "NPL"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "TML"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ETR "

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "PH"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "NO"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "SE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 757
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v0, p2, v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 760
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 761
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 762
    .local v1, digits:Landroid/text/Editable;
    const/4 v4, 0x0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-interface {v1, v4, v5, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 765
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->afterTextChanged(Landroid/text/Editable;)V

    .line 767
    .end local v1           #digits:Landroid/text/Editable;
    :cond_1
    return-void
.end method

.method private setInputNumber(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 1382
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I

    .line 1383
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z

    .line 1384
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1385
    .local v1, mNumber:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I

    if-ge v0, v2, :cond_1

    .line 1386
    aget-char v2, v1, v0

    sparse-switch v2, :sswitch_data_0

    .line 1403
    aget-char v2, v1, v0

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    aget-char v2, v1, v0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    .line 1404
    aget-char v2, v1, v0

    add-int/lit8 v2, v2, -0x29

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    .line 1385
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1388
    :sswitch_0
    const/16 v2, 0x51

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_1

    .line 1391
    :sswitch_1
    const/16 v2, 0x37

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_1

    .line 1394
    :sswitch_2
    const/16 v2, 0x4a

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_1

    .line 1397
    :sswitch_3
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_1

    .line 1400
    :sswitch_4
    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_1

    .line 1409
    :cond_1
    return-void

    .line 1386
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_4
        0x2a -> :sswitch_3
        0x2b -> :sswitch_0
        0x2c -> :sswitch_1
        0x3b -> :sswitch_2
    .end sparse-switch
.end method

.method private setRingerMode(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2895
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 2897
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "vibrate_in_silent"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 2900
    :goto_0
    if-eqz p1, :cond_2

    .line 2901
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2906
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 2897
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2901
    goto :goto_1

    .line 2904
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2
.end method

.method private setSearchLayout(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;Ljava/lang/String;I)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2337
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    .line 2338
    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v2

    .line 2339
    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2340
    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getPhotoID()I

    move-result v0

    .line 2341
    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getType()I

    move-result v1

    .line 2342
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 2346
    if-eqz v0, :cond_1

    .line 2347
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2348
    int-to-long v8, v0

    invoke-direct {p0, v8, v9, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->loadPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2349
    if-eqz v4, :cond_0

    .line 2350
    const v0, 0x7f0d0151

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2358
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2453
    :goto_1
    const v0, 0x7f0d015c

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2455
    return-void

    .line 2352
    :cond_0
    const v0, 0x7f0d0151

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v4, 0x7f020107

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2355
    :cond_1
    const v0, 0x7f0d0151

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v4, 0x7f020107

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2360
    :pswitch_0
    const v0, 0x7f0d0153

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2362
    if-eqz v2, :cond_2

    .line 2363
    const v0, 0x7f0d0154

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2366
    :goto_2
    const v0, 0x7f0d0155

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2367
    const v0, 0x7f0d0156

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2368
    const v0, 0x7f0d0158

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2369
    const v0, 0x7f0d0159

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2370
    const v0, 0x7f0d015a

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2365
    :cond_2
    const v0, 0x7f0d0154

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0284

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 2373
    :pswitch_1
    invoke-direct {p0, v2, p2, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->revert2Number(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2375
    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2376
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2377
    if-lez v0, :cond_a

    .line 2379
    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2380
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 2382
    :goto_3
    const v0, 0x7f0d0153

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2384
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "iw"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2385
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2386
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070041

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    const/16 v4, 0x12

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2388
    const v0, 0x7f0d0154

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2401
    :cond_3
    :goto_4
    const-string v0, "content://com.android.contacts/contacts/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2403
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_PHONE:[Ljava/lang/String;

    const-string v3, "mimetype"

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2406
    if-eqz v1, :cond_6

    .line 2407
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2408
    const-string v0, "data1"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2410
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2411
    const-string v2, "is_super_primary"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    .line 2412
    const-string v0, "data1"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2418
    :cond_5
    :goto_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v6, v0

    .line 2420
    :cond_6
    const v0, 0x7f0d0158

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2421
    const v0, 0x7f0d0159

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2422
    const v0, 0x7f0d015a

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2391
    :cond_7
    if-ltz v1, :cond_3

    add-int v0, v1, v3

    if-gt v1, v0, :cond_3

    .line 2393
    const v0, 0x7f0d0154

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2394
    const v0, 0x7f0d0155

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    add-int v4, v1, v3

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2395
    const v0, 0x7f0d0156

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 2425
    :pswitch_2
    const v0, 0x7f0d0153

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2427
    invoke-virtual {v6, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2428
    if-eqz v2, :cond_8

    .line 2429
    const v0, 0x7f0d0154

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2432
    :goto_6
    const v0, 0x7f0d0155

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2433
    const v0, 0x7f0d0156

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2434
    const v0, 0x7f0d0158

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2436
    const v0, 0x7f0d0159

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2437
    const v0, 0x7f0d015a

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    add-int/2addr v1, v3

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2431
    :cond_8
    const v0, 0x7f0d0154

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0a0284

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    .line 2441
    :pswitch_3
    invoke-virtual {v6, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2442
    const v0, 0x7f0d0153

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2444
    const v0, 0x7f0d0158

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2446
    const v0, 0x7f0d0159

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2447
    const v0, 0x7f0d015a

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    add-int/2addr v1, v3

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_9
    move-object v0, v6

    goto/16 :goto_5

    :cond_a
    move v1, v0

    goto/16 :goto_3

    .line 2358
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSearchView(Landroid/view/View;)V
    .locals 2
    .parameter "fragmentView"

    .prologue
    .line 557
    const v0, 0x7f0d014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    .line 558
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 560
    const v0, 0x7f0d015e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;

    .line 561
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 564
    const v0, 0x7f0d0150

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    const v0, 0x7f0d015b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    return-void
.end method

.method private setupAddtionalButtons(Landroid/view/View;)V
    .locals 1
    .parameter "fragmentView"

    .prologue
    .line 570
    const v0, 0x7f0d0142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    .line 571
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    const v0, 0x7f0d0143

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mVediocallButton:Landroid/view/View;

    .line 574
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mVediocallButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    const v0, 0x7f0d0144

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mMessageButton:Landroid/view/View;

    .line 577
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mMessageButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    const v0, 0x7f0d0145

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 582
    return-void
.end method

.method private setupKeypad(Landroid/view/View;)V
    .locals 7
    .parameter "fragmentView"

    .prologue
    const v6, 0x7f0d0138

    const v5, 0x7f0d0137

    const v4, 0x7f0d0135

    const v3, 0x7f0d0134

    const v2, 0x7f0d0125

    .line 586
    const v1, 0x7f0d0133

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 587
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 590
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 592
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 594
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 596
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 598
    const v1, 0x7f0d0139

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    const v1, 0x7f0d0139

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 600
    const v1, 0x7f0d013b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    const v1, 0x7f0d013b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 602
    const v1, 0x7f0d013c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    const v1, 0x7f0d013c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 604
    const v1, 0x7f0d013d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 605
    const v1, 0x7f0d013d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 606
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 608
    const v1, 0x7f0d0140

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    const v1, 0x7f0d0140

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 611
    const v1, 0x7f0d013f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 612
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 614
    return-void
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2570
    const v0, 0x7f0d0254

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 2571
    const v0, 0x7f0d0259

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2572
    const v1, 0x7f0d0255

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2573
    const v2, 0x7f0d0256

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 2574
    const v2, 0x7f0d0257

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 2575
    const v2, 0x7f0d0258

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 2577
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2578
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2580
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2581
    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2582
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2587
    :goto_0
    return-void

    .line 2584
    :cond_1
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2585
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private showAddToContact()V
    .locals 4

    .prologue
    .line 1025
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1030
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0296

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$3;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0286

    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$2;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1057
    return-void
.end method

.method private smartSearch_Log(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1933
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1935
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    if-nez v0, :cond_0

    move-object v0, v6

    .line 1967
    :goto_0
    return-object v0

    .line 1938
    :cond_0
    const-string v0, "content://logs/call/search_log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1943
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "%"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 1947
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_LOG:[Ljava/lang/String;

    const-string v3, "contactid"

    const-string v5, " = 0 and "

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "number"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ?"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "date DESC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1952
    if-nez v7, :cond_1

    .line 1953
    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    move-object v0, v6

    .line 1954
    goto :goto_0

    .line 1957
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1959
    :cond_2
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    const-string v3, ""

    const-string v1, "number"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    move-object v1, p0

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1961
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1962
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1966
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 1967
    goto :goto_0

    .line 1964
    :cond_3
    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    goto :goto_1
.end method

.method private smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1633
    .line 1635
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 1674
    :cond_0
    :goto_0
    return-object v6

    .line 1638
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    if-eqz v0, :cond_0

    .line 1641
    const-string v0, "content://logs/call/search_log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1646
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "%"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 1651
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_LOG:[Ljava/lang/String;

    const-string v3, "contactid"

    const-string v5, " = 0 and "

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "number"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ?"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "date"

    const-string v7, " DESC "

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1656
    if-nez v7, :cond_2

    .line 1657
    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    goto :goto_0

    .line 1661
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1662
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    .line 1664
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    const-string v3, ""

    const-string v1, "number"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    move-object v1, p0

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1671
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v6, v0

    .line 1674
    goto :goto_0

    .line 1668
    :cond_3
    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    move-object v0, v6

    goto :goto_1
.end method

.method private smartSearch_Name(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1766
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1767
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1768
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 1770
    if-ge v0, v10, :cond_0

    move-object v0, v8

    .line 1834
    :goto_0
    return-object v0

    .line 1774
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1776
    const/4 v0, 0x1

    if-ne v10, v0, :cond_2

    .line 1777
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1787
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1789
    const-string v0, "content://com.android.contacts/contacts/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1791
    const/4 v0, 0x0

    move v9, v0

    :goto_2
    if-ge v9, v12, :cond_1

    .line 1794
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 1800
    :goto_3
    if-nez v6, :cond_5

    .line 1833
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v10, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v0, v8

    .line 1834
    goto :goto_0

    .line 1779
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    add-int/lit8 v1, v10, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v8

    .line 1780
    goto :goto_0

    .line 1781
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v10, 0x1

    if-ge v0, v1, :cond_4

    .line 1782
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    add-int/lit8 v2, v10, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1784
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    add-int/lit8 v2, v10, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1795
    :catch_0
    move-exception v0

    .line 1796
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "Selection exception. Zeroing selection"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_3

    .line 1802
    :cond_5
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "%"

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x1

    const-string v2, "%"

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 1806
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_NAME:[Ljava/lang/String;

    const-string v3, "has_phone_number"

    const-string v5, " = 1 AND ("

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ? OR "

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name_alt"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ? )"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name"

    const-string v7, " COLLATE LOCALIZED ASC"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1812
    if-eqz v0, :cond_8

    .line 1813
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1814
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_7

    .line 1815
    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    .line 1816
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1819
    :cond_6
    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    const-string v3, "photo_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v3, "display_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1826
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1827
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1830
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1791
    :cond_8
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_2
.end method

.method private smartSearch_Name_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    .locals 12
    .parameter

    .prologue
    .line 1468
    const/4 v7, 0x0

    .line 1469
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1470
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 1471
    if-ge v0, v9, :cond_1

    .line 1530
    :cond_0
    :goto_0
    return-object v7

    .line 1475
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 1476
    const/4 v7, 0x0

    goto :goto_0

    .line 1478
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1480
    const/4 v0, 0x1

    if-ne v9, v0, :cond_3

    .line 1481
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1491
    :goto_1
    const-string v0, "content://com.android.contacts/contacts/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1494
    const/4 v0, 0x0

    move v8, v0

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_6

    .line 1496
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 1497
    const/4 v7, 0x0

    goto :goto_0

    .line 1483
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v9, 0x1

    if-ge v0, v1, :cond_4

    .line 1486
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    add-int/lit8 v2, v9, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1488
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    add-int/lit8 v2, v9, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1499
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 1500
    if-nez v6, :cond_7

    .line 1527
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v9, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1502
    :cond_7
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "%"

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x1

    const-string v2, "%"

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 1506
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_NAME:[Ljava/lang/String;

    const-string v3, "has_phone_number"

    const-string v5, " = 1 AND ("

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ? OR "

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name_alt"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ? )"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name"

    const-string v11, " COLLATE LOCALIZED ASC"

    invoke-virtual {v5, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1512
    if-eqz v0, :cond_9

    .line 1513
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1514
    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    .line 1515
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1516
    if-nez v7, :cond_8

    .line 1517
    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    const-string v3, "photo_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v3, "display_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1524
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1494
    :goto_4
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move-object v7, v2

    goto/16 :goto_2

    :cond_8
    move-object v2, v7

    goto :goto_3

    :cond_9
    move-object v2, v7

    goto :goto_4
.end method

.method private smartSearch_Number(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0x22

    const/4 v9, 0x0

    .line 1838
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1840
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    if-nez v0, :cond_0

    move-object v0, v6

    .line 1929
    :goto_0
    return-object v0

    .line 1845
    :cond_0
    const-string v0, "content://com.android.contacts/data/phones/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1847
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "%"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 1851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1852
    const-string v2, "data1"

    .line 1854
    const-string v3, "replace("

    .line 1856
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1857
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1858
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1859
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v0, v9, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1861
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1862
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1863
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1864
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1865
    const/16 v7, 0x29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1866
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1867
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1869
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1870
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1871
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1872
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1873
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1875
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1876
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1878
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1879
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1880
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1881
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1882
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1884
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1885
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1887
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1889
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1891
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1893
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1894
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1896
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1897
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1898
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1899
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1902
    const-string v2, " LIKE ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1904
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1909
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_RESULT:[Ljava/lang/String;

    const-string v5, "display_name"

    const-string v7, " COLLATE LOCALIZED ASC"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1912
    if-nez v7, :cond_1

    .line 1913
    iput-boolean v9, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    move-object v0, v6

    .line 1914
    goto/16 :goto_0

    .line 1916
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1919
    :cond_2
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    const-string v1, "photo_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v1, "display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "data1"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1923
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1924
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1928
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 1929
    goto/16 :goto_0

    .line 1926
    :cond_3
    iput-boolean v9, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    goto :goto_1
.end method

.method private smartSearch_Number_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    .locals 12
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/16 v8, 0x22

    const/4 v9, 0x0

    .line 1534
    .line 1536
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 1629
    :cond_0
    :goto_0
    return-object v6

    .line 1539
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    if-eqz v0, :cond_0

    .line 1544
    const-string v0, "content://com.android.contacts/data/phones/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1546
    new-array v4, v10, [Ljava/lang/String;

    const-string v0, "%"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 1555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1556
    const-string v2, "data1"

    .line 1558
    const-string v3, "replace("

    .line 1560
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1562
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1563
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v0, v9, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1565
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1566
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1568
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1569
    const/16 v7, 0x29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1570
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1571
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1573
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1575
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1577
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1580
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1582
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1589
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1591
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1594
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1598
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1600
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1601
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1606
    const-string v2, " LIKE ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1610
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_RESULT:[Ljava/lang/String;

    const-string v5, "display_name"

    const-string v7, " COLLATE LOCALIZED ASC"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1613
    if-nez v7, :cond_2

    .line 1614
    iput-boolean v9, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    goto/16 :goto_0

    .line 1617
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1618
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    .line 1619
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1626
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v6, v0

    .line 1629
    goto/16 :goto_0

    .line 1623
    :cond_3
    iput-boolean v9, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    move-object v0, v6

    goto :goto_1
.end method

.method private smartSearch_SpeedDial(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 1741
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1742
    const-string v0, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1745
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x32

    if-lt v0, v2, :cond_0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x39

    if-le v0, v2, :cond_1

    :cond_0
    move-object v0, v6

    .line 1762
    :goto_0
    return-object v0

    .line 1748
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_SPEEDDIAL:[Ljava/lang/String;

    const-string v3, "key_number="

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1751
    if-eqz v7, :cond_3

    .line 1752
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1753
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    .line 1754
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    const-string v1, "photo_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v1, "display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "number"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1758
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1760
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    .line 1762
    goto :goto_0
.end method

.method private smartSearch_SpeedDial_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 1433
    .line 1434
    const-string v0, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1437
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 1464
    :cond_0
    :goto_0
    return-object v4

    .line 1440
    :cond_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x32

    if-lt v0, v2, :cond_0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    .line 1446
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_SPEEDDIAL:[Ljava/lang/String;

    const-string v3, "key_number="

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1449
    if-eqz v6, :cond_3

    .line 1450
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1451
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    .line 1452
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    const-string v1, "photo_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v1, "display_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "number"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1459
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_2
    move-object v4, v0

    .line 1464
    goto :goto_0

    :cond_2
    move-object v0, v4

    goto :goto_1

    :cond_3
    move-object v0, v4

    goto :goto_2
.end method

.method private static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phoneNumber"

    .prologue
    .line 1347
    if-nez p0, :cond_0

    .line 1348
    const/4 v4, 0x0

    .line 1359
    :goto_0
    return-object v4

    .line 1350
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1351
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1353
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1354
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1355
    .local v0, c:C
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1356
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1353
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1359
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private subDialogBuilder(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2293
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 2294
    const-string v1, "content://com.android.contacts/contacts/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2296
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_PHONE:[Ljava/lang/String;

    const-string v3, "mimetype"

    const-string v5, "=\'"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2299
    if-eqz v0, :cond_2

    .line 2300
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2301
    sget-object v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->numberArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2303
    :cond_0
    sget-object v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->numberArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;

    const-string v3, "data2"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "data1"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2306
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2308
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2311
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2312
    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItemAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f040054

    sget-object v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->numberArray:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItemAdapter;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 2314
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2315
    const v0, 0x7f0a0286

    new-instance v3, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2319
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$7;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2329
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->subdialogResult:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 2330
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->subdialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2331
    :cond_3
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->subdialogResult:Landroid/app/AlertDialog;

    .line 2332
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->subdialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2333
    return-void
.end method

.method private updateDialString(Ljava/lang/String;)V
    .locals 8
    .parameter "newDigits"

    .prologue
    .line 3286
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getSelectionStart()I

    move-result v0

    .line 3287
    .local v0, anchor:I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getSelectionEnd()I

    move-result v3

    .line 3289
    .local v3, point:I
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 3290
    .local v5, selectionStart:I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3292
    .local v4, selectionEnd:I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 3293
    .local v1, digits:Landroid/text/Editable;
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 3294
    if-ne v5, v4, :cond_0

    .line 3297
    invoke-interface {v1, v5, v5, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 3307
    :goto_0
    return-void

    .line 3299
    :cond_0
    invoke-interface {v1, v5, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 3301
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setSelection(I)V

    goto :goto_0

    .line 3304
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    .line 3305
    .local v2, len:I
    invoke-interface {v1, v2, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .parameter "input"

    .prologue
    const/4 v4, 0x1

    .line 348
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, temp:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 351
    sget-object v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v5, "number string is null and returned"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 357
    .local v1, mTextSize:I
    iput-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->digitText:Ljava/lang/String;

    .line 359
    if-nez v1, :cond_2

    .line 360
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 362
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setCursorVisible(Z)V

    goto :goto_0

    .line 366
    :cond_2
    if-le v1, v4, :cond_3

    const/4 v4, 0x5

    if-ge v1, v4, :cond_3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 367
    const/4 v4, 0x2

    iput v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    .line 370
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-static {v4, v3, v5}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 372
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->clear()V

    .line 376
    :cond_4
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 377
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 378
    .local v2, msg:Landroid/os/Message;
    const/16 v4, 0x11

    iput v4, v2, Landroid/os/Message;->what:I

    .line 379
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 383
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getSelectionStart()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getSelectionEnd()I

    move-result v5

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getSelectionStart()I

    move-result v4

    if-le v1, v4, :cond_5

    .line 385
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    .line 386
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    .line 389
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 391
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Ljava/lang/NullPointerException;
    sget-object v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v5, "NullPointerException in afterTextChanged()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 332
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    .line 333
    return-void
.end method

.method public callVoicemail()V
    .locals 1

    .prologue
    .line 2987
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->newVoicemailIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 2988
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 2990
    return-void
.end method

.method public clearDigits()V
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    .line 636
    return-void
.end method

.method public configureScreenFromIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "Screen configuration is requested before onCreateView() is called. Ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :goto_0
    return-void

    .line 694
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resolveIntent(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public dialButtonPressed()V
    .locals 3

    .prologue
    .line 3066
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3067
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->phoneIsCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->phoneIsOffhook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3071
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->newFlashIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 3147
    :goto_0
    return-void

    .line 3073
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3074
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3075
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3100
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3105
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "persist.radio.otaspdial"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 3109
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "The phone number is prohibited explicitly by a rule."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3111
    const v0, 0x7f0a01fd

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    .line 3113
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "phone_prohibited_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 3117
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 3120
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->phoneIsOffhook()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3135
    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->newDialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3136
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v1, :cond_5

    .line 3137
    const-string v1, "com.android.phone.CALL_ORIGIN"

    const-string v2, "com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3140
    :cond_5
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 3141
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2617
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d014a

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d014b

    if-eq v0, v1, :cond_0

    sget-boolean v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->MannerModePressed:Z

    if-nez v0, :cond_0

    .line 2618
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 2620
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2739
    :cond_1
    :goto_0
    return-void

    .line 2622
    :sswitch_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2623
    invoke-direct {p0, v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2627
    :sswitch_1
    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2628
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2632
    :sswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2633
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2637
    :sswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2638
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2642
    :sswitch_4
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2643
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2647
    :sswitch_5
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2648
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2652
    :sswitch_6
    invoke-virtual {p0, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2653
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2657
    :sswitch_7
    invoke-virtual {p0, v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2658
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2662
    :sswitch_8
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2663
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2667
    :sswitch_9
    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2668
    invoke-direct {p0, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2672
    :sswitch_a
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->MannerModePressed:Z

    if-nez v0, :cond_2

    .line 2673
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2674
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    .line 2676
    :cond_2
    sput-boolean v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->MannerModePressed:Z

    goto :goto_0

    .line 2680
    :sswitch_b
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2681
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2685
    :sswitch_c
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    .line 2686
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    .line 2687
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto/16 :goto_0

    .line 2691
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialButtonPressed()V

    goto/16 :goto_0

    .line 2695
    :sswitch_e
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeVideoCall()V

    goto/16 :goto_0

    .line 2699
    :sswitch_f
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->sendSMS()V

    goto/16 :goto_0

    .line 2703
    :sswitch_10
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2704
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setCursorVisible(Z)V

    .line 2706
    :cond_3
    iput v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    goto/16 :goto_0

    .line 2710
    :sswitch_11
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    .line 2711
    if-eqz v0, :cond_1

    .line 2712
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    .line 2717
    :sswitch_12
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->showAddToContact()V

    goto/16 :goto_0

    .line 2721
    :sswitch_13
    const v0, 0x7f0d0158

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0d0159

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0d015a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2728
    iput v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    .line 2729
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    .line 2730
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    .line 2731
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2732
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setSelection(I)V

    goto/16 :goto_0

    .line 2736
    :sswitch_14
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dailogBuildcreate()V

    goto/16 :goto_0

    .line 2620
    :sswitch_data_0
    .sparse-switch
        0x7f0d0125 -> :sswitch_b
        0x7f0d0133 -> :sswitch_0
        0x7f0d0134 -> :sswitch_1
        0x7f0d0135 -> :sswitch_2
        0x7f0d0137 -> :sswitch_3
        0x7f0d0138 -> :sswitch_4
        0x7f0d0139 -> :sswitch_5
        0x7f0d013b -> :sswitch_6
        0x7f0d013c -> :sswitch_7
        0x7f0d013d -> :sswitch_8
        0x7f0d013f -> :sswitch_9
        0x7f0d0140 -> :sswitch_a
        0x7f0d0142 -> :sswitch_d
        0x7f0d0143 -> :sswitch_e
        0x7f0d0144 -> :sswitch_f
        0x7f0d0145 -> :sswitch_c
        0x7f0d014a -> :sswitch_10
        0x7f0d014b -> :sswitch_11
        0x7f0d0150 -> :sswitch_13
        0x7f0d015b -> :sswitch_14
        0x7f0d015e -> :sswitch_12
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 452
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resetAllLayout(Landroid/view/View;)V

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setEditTextView(Landroid/view/View;)V

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    .line 458
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->DBG:Z

    if-eqz v0, :cond_0

    .line 459
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged->>onKeypad == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    if-nez v0, :cond_2

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setInputNumber(Ljava/lang/String;)V

    .line 470
    :cond_1
    :goto_0
    return-void

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setSelection(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    .line 399
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 400
    sget-object v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "<<<<<<<<<<<<<<<<<<onCreate>>>>>>>>>>>>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    .line 404
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->digitText:Ljava/lang/String;

    .line 405
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    .line 407
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1, v5}, Landroid/os/ConditionVariable;-><init>(Z)V

    sput-object v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->condition:Landroid/os/ConditionVariable;

    .line 409
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    .line 412
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/HapticFeedback;->init(Landroid/content/Context;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    invoke-virtual {p0, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setHasOptionsMenu(Z)V

    .line 420
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    .line 422
    return-void

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, nfe:Landroid/content/res/Resources$NotFoundException;
    sget-object v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "Vibrate control bool missing."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 875
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 876
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    const v0, 0x7f100005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 880
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 426
    sget-object v3, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v4, "<<<<<<<<<<<<<<<<<<onCreateView>>>>>>>>>>>>>>>>>"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const v3, 0x7f040059

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    .line 430
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 432
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setDefaultLayout()V

    .line 433
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->forceHideSoftInput(Z)V

    .line 434
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setCursorColor(I)V

    .line 436
    const-string v3, "persist.sys.country"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, language:Ljava/lang/String;
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, salesCode:Ljava/lang/String;
    const-string v3, "TNZ"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "VNZ"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "VNX"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "NZC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ATO"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "INU"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "INS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SLK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "NPL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "TML"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ETR "

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "NO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-static {v3, v4}, Lcom/android/contacts/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    .line 447
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    return-object v3
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2602
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2610
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2604
    :pswitch_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 2605
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialButtonPressed()V

    .line 2606
    const/4 v0, 0x1

    goto :goto_0

    .line 2602
    :pswitch_data_0
    .packed-switch 0x7f0d014a
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2755
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    .line 2756
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 2758
    sput-boolean v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->MannerModePressed:Z

    .line 2760
    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 2839
    :goto_0
    return v0

    .line 2762
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->clearDialString()V

    .line 2766
    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    .line 2767
    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    .line 2768
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 2772
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2773
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->callVoicemail()V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2776
    goto :goto_0

    .line 2779
    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 2780
    const-wide/16 v2, 0x2

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2782
    goto :goto_0

    .line 2784
    :sswitch_3
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 2785
    const-wide/16 v2, 0x3

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2787
    goto :goto_0

    .line 2789
    :sswitch_4
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 2790
    const-wide/16 v2, 0x4

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2792
    goto :goto_0

    .line 2794
    :sswitch_5
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 2795
    const-wide/16 v2, 0x5

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 2797
    goto :goto_0

    .line 2799
    :sswitch_6
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 2800
    const-wide/16 v2, 0x6

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 2802
    goto :goto_0

    .line 2804
    :sswitch_7
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 2805
    const-wide/16 v2, 0x7

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 2807
    goto/16 :goto_0

    .line 2809
    :sswitch_8
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 2810
    const-wide/16 v2, 0x8

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 2812
    goto/16 :goto_0

    .line 2814
    :sswitch_9
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_8

    .line 2815
    const-wide/16 v2, 0x9

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 2817
    goto/16 :goto_0

    .line 2819
    :sswitch_a
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_9

    .line 2820
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mannerModeSet()V

    .line 2821
    sput-boolean v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->MannerModePressed:Z

    :cond_9
    move v0, v1

    .line 2823
    goto/16 :goto_0

    .line 2825
    :sswitch_b
    const/16 v1, 0x51

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto/16 :goto_0

    .line 2829
    :sswitch_c
    const-string v1, ","

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->updateDialString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2833
    :sswitch_d
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    .line 2834
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setCursorVisible(Z)V

    move v0, v1

    .line 2835
    goto/16 :goto_0

    .line 2760
    :sswitch_data_0
    .sparse-switch
        0x7f0d0125 -> :sswitch_c
        0x7f0d0133 -> :sswitch_1
        0x7f0d0134 -> :sswitch_2
        0x7f0d0135 -> :sswitch_3
        0x7f0d0137 -> :sswitch_4
        0x7f0d0138 -> :sswitch_5
        0x7f0d0139 -> :sswitch_6
        0x7f0d013b -> :sswitch_7
        0x7f0d013c -> :sswitch_8
        0x7f0d013d -> :sswitch_9
        0x7f0d013f -> :sswitch_b
        0x7f0d0140 -> :sswitch_a
        0x7f0d0145 -> :sswitch_0
        0x7f0d014a -> :sswitch_d
    .end sparse-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 3274
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 3245
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3268
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3250
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3251
    const-string v2, "additional"

    const-string v3, "phone-need-call"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3252
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3255
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->showAddToContact()V

    goto :goto_0

    .line 3258
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.contacts.activities.action.SPEED_DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3259
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3262
    :pswitch_3
    const-string v1, ","

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->updateDialString(Ljava/lang/String;)V

    goto :goto_0

    .line 3265
    :pswitch_4
    const-string v1, ";"

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->updateDialString(Ljava/lang/String;)V

    goto :goto_0

    .line 3245
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0254
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 857
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 858
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "<<<<<<<<<<<<<<<<<<<onPause>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 861
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 862
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 864
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 866
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 869
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 870
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    .line 871
    return-void

    .line 866
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 885
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setupMenuItems(Landroid/view/Menu;)V

    .line 889
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 799
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 800
    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "<<<<<<<<<<<<<<<<<<<onResume>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iput v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    .line 803
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z

    .line 805
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resetAllLayout(Landroid/view/View;)V

    .line 806
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setEditTextView(Landroid/view/View;)V

    .line 808
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    .line 809
    sget-boolean v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->DBG:Z

    if-eqz v2, :cond_0

    .line 810
    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume->>onKeypad == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 813
    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    if-nez v2, :cond_4

    .line 814
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 815
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setInputNumber(Ljava/lang/String;)V

    .line 824
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_5

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    .line 828
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/HapticFeedback;->checkSystemSetting()V

    .line 832
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 833
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 838
    :try_start_1
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v2, 0x1

    const/16 v3, 0x50

    invoke-direct {v0, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 845
    :cond_2
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 847
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 848
    instance-of v1, v0, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v1, :cond_3

    .line 851
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->fillDigitsIfNecessary(Landroid/content/Intent;)Z

    .line 853
    :cond_3
    return-void

    .line 817
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 818
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setSelection(I)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 824
    goto :goto_1

    .line 840
    :catch_0
    move-exception v0

    .line 841
    :try_start_3
    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught while creating local tone generator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_2

    .line 845
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 772
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 773
    sget-object v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "<<<<<<<<<<<<<<<<<<<onStart>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :try_start_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DialerHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    .line 778
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 779
    new-instance v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :goto_0
    return-void

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, e:Ljava/lang/IllegalThreadStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 788
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 789
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "<<<<<<<<<<<<<<<<<<<onStop>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;

    const/16 v1, 0x111

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 792
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 793
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    .line 794
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 336
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 338
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 345
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 3410
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mShowOptionsMenu:Z

    .line 3411
    return-void
.end method

.method playTone(I)V
    .locals 4
    .parameter

    .prologue
    .line 3160
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-nez v0, :cond_1

    .line 3192
    :cond_0
    :goto_0
    return-void

    .line 3169
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3171
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 3172
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 3177
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3178
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v2, :cond_2

    .line 3179
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    monitor-exit v1

    goto :goto_0

    .line 3191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3184
    :cond_2
    :try_start_1
    const-string v2, "situation=0;device=0"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 3186
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v2, v0}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 3190
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x96

    invoke-virtual {v0, p1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 3191
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public resetAllLayout(Landroid/view/View;)V
    .locals 4
    .parameter "fragmentView"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 484
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 487
    :cond_0
    const v1, 0x7f0d014b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 489
    .local v0, overflowMenuButton:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    if-nez v1, :cond_1

    .line 490
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 491
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadLand:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 492
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadAdditionalButtonsLand:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 493
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchViewLand:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 495
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setupKeypad(Landroid/view/View;)V

    .line 496
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setSearchView(Landroid/view/View;)V

    .line 497
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadAdditionalButtons:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setupAddtionalButtons(Landroid/view/View;)V

    .line 498
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 513
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 514
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 518
    :goto_1
    return-void

    .line 501
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 502
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadLand:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 503
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadAdditionalButtonsLand:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 504
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchViewLand:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 506
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadLand:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setupKeypad(Landroid/view/View;)V

    .line 507
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchViewLand:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setSearchView(Landroid/view/View;)V

    .line 508
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadAdditionalButtonsLand:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setupAddtionalButtons(Landroid/view/View;)V

    .line 509
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 516
    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public setDefaultLayout()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0d014a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0d0131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0d014d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadLand:Landroid/view/View;

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0d0141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadAdditionalButtons:Landroid/view/View;

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0d0146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadAdditionalButtonsLand:Landroid/view/View;

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0d014e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchView:Landroid/view/View;

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0d0161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchViewLand:Landroid/view/View;

    .line 481
    return-void
.end method

.method public setListener(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3405
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mListener:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;

    .line 3406
    return-void
.end method
